<?php

namespace App\Controllers\Books;

use App\Models\BookModel;
use App\Models\BookStockModel;
use App\Models\CategoryModel;
use App\Models\LoanModel;
use App\Models\RackModel;
use CodeIgniter\Exceptions\PageNotFoundException;
use CodeIgniter\RESTful\ResourceController;

class BooksController extends ResourceController
{
    protected BookModel $bookModel;
    protected CategoryModel $categoryModel;
    protected RackModel $rackModel;
    protected BookStockModel $bookStockModel;
    protected LoanModel $loanModel;

    public function __construct()
    {
        $this->bookModel = new BookModel;
        $this->categoryModel = new CategoryModel;
        $this->rackModel = new RackModel;
        $this->bookStockModel = new BookStockModel;
        $this->loanModel = new LoanModel;

        helper('upload');
    }

    /**
     * Return an array of resource objects, themselves in array format
     *
     * @return mixed
     */
    public function index()
    {
        $itemPerPage = 20;
        $search = $this->request->getGet('search');
        $categoryId = $this->request->getGet('category');
        $rackId = $this->request->getGet('rack');

        // Build query with joins
        $query = $this->bookModel
            ->select('books.*, book_stock.quantity, categories.name as category, racks.name as rack, racks.floor')
            ->join('book_stock', 'books.id = book_stock.book_id', 'LEFT')
            ->join('categories', 'books.category_id = categories.id', 'LEFT')
            ->join('racks', 'books.rack_id = racks.id', 'LEFT');

        // Apply search filter
        if (!empty($search)) {
            $query->groupStart()
                ->like('title', $search, insensitiveSearch: true)
                ->orLike('slug', $search, insensitiveSearch: true)
                ->orLike('author', $search, insensitiveSearch: true)
                ->orLike('publisher', $search, insensitiveSearch: true)
                ->groupEnd();
        }

        // Apply category filter
        if (!empty($categoryId) && $categoryId != 'all') {
            $query->where('books.category_id', $categoryId);
        }

        // Apply rack filter
        if (!empty($rackId) && $rackId != 'all') {
            $query->where('books.rack_id', $rackId);
        }

        // Get paginated results
        $books = $query->paginate($itemPerPage, 'books');

        // Filter out soft deleted books
        $books = array_filter($books, function ($book) {
            return $book['deleted_at'] == null;
        });

        // Calculate remaining stock for each book
        foreach ($books as &$book) {
            $loans = $this->loanModel->where([
                'book_id' => $book['id'],
                'return_date' => null
            ])->findAll();

            $loanCount = array_reduce(
                array_map(function ($loan) {
                    return $loan['quantity'];
                }, $loans),
                function ($carry, $item) {
                    return ($carry + $item);
                },
                0
            );

            $book['remaining_stock'] = ($book['quantity'] ?? 0) - $loanCount;
        }

        // Get all categories and racks for filter dropdowns
        $categories = $this->categoryModel->findAll();
        $racks = $this->rackModel->findAll();

        $data = [
            'books'         => $books,
            'pager'         => $this->bookModel->pager,
            'currentPage'   => $this->request->getVar('page_books') ?? 1,
            'itemPerPage'   => $itemPerPage,
            'search'        => $search,
            'categoryId'    => $categoryId,
            'rackId'        => $rackId,
            'categories'    => $categories,
            'racks'         => $racks
        ];

        return view('books/index', $data);
    }

    /**
     * Return the properties of a resource object
     *
     * @return mixed
     */
    public function show($slug = null)
    {
        $book = $this->bookModel
            ->select('books.*, book_stock.quantity, categories.name as category, racks.name as rack, racks.floor')
            ->join('book_stock', 'books.id = book_stock.book_id', 'LEFT')
            ->join('categories', 'books.category_id = categories.id', 'LEFT')
            ->join('racks', 'books.rack_id = racks.id', 'LEFT')
            ->where('slug', $slug)->first();

        if (empty($book)) {
            throw new PageNotFoundException('Book with slug \'' . $slug . '\' not found');
        }

        $loans = $this->loanModel->where([
            'book_id' => $book['id'],
            'return_date' => null
        ])->findAll();

        $loanCount = array_reduce(
            array_map(function ($loan) {
                return $loan['quantity'];
            }, $loans),
            function ($carry, $item) {
                return ($carry + $item);
            }
        );

        $bookStock = $book['quantity'] - $loanCount;

        $data = [
            'book'      => $book,
            'loanCount' => $loanCount ?? 0,
            'bookStock' => $bookStock
        ];

        return view('books/show', $data);
    }

    /**
     * Return a new resource object, with default properties
     *
     * @return mixed
     */
    public function new()
    {
        $categories = $this->categoryModel->findAll();
        $racks = $this->rackModel->findAll();

        $data = [
            'categories' => $categories,
            'racks'      => $racks,
            'validation' => \Config\Services::validation(),
        ];

        return view('books/create', $data);
    }

    /**
     * Create a new resource object, from "posted" parameters
     *
     * @return mixed
     */
    public function create()
    {
        if (!$this->validate([
            'cover'     => 'is_image[cover]|mime_in[cover,image/jpg,image/jpeg,image/gif,image/png,image/webp]|max_size[cover,5120]',
            'title'     => 'required|string|max_length[127]',
            'author'    => 'required|alpha_numeric_punct|max_length[64]',
            'publisher' => 'required|string|max_length[64]',
            'rack'      => 'required|numeric',
            'category'  => 'required|numeric',
            'stock'     => 'required|numeric|greater_than_equal_to[1]',
        ])) {
            $categories = $this->categoryModel->findAll();
            $racks = $this->rackModel->findAll();

            $data = [
                'categories' => $categories,
                'racks'      => $racks,
                'validation' => \Config\Services::validation(),
                'oldInput'   => $this->request->getVar(),
            ];

            return view('books/create', $data);
        }

        $coverImage = $this->request->getFile('cover');

        if ($coverImage->getError() != 4) {
            $coverImageFileName = uploadBookCover($coverImage);
        }

        $slug = url_title($this->request->getVar('title') . ' ' . rand(0, 1000), '-', true);

        if (!$this->bookModel->save([
            'slug' => $slug,
            'title' => $this->request->getVar('title'),
            'author' => $this->request->getVar('author'),
            'publisher' => $this->request->getVar('publisher'),
            'rack_id' => $this->request->getVar('rack'),
            'category_id' => $this->request->getVar('category'),
            'book_cover' => $coverImageFileName ?? null,
        ]) || !$this->bookStockModel->save([
            'book_id' => $this->bookModel->getInsertID(),
            'quantity' => $this->request->getVar('stock')
        ])) {
            $categories = $this->categoryModel->findAll();
            $racks = $this->rackModel->findAll();

            $data = [
                'categories' => $categories,
                'racks'      => $racks,
                'validation' => \Config\Services::validation(),
                'oldInput'   => $this->request->getVar(),
            ];

            session()->setFlashdata(['msg' => 'Baju Gagal Ditambahkan']);
            return view('books/create', $data);
        }

        session()->setFlashdata(['msg' => 'Baju Berhasil Ditambahkan']);
        return redirect()->to('admin/books');
    }

    /**
     * Return the editable properties of a resource object
     *
     * @return mixed
     */
    public function edit($slug = null)
    {
        $book = $this->bookModel
            ->select('books.*, book_stock.quantity')
            ->join('book_stock', 'books.id = book_stock.book_id', 'LEFT')
            ->where('slug', $slug)
            ->where('books.deleted_at', null) // Tambahkan filter untuk soft delete
            ->first();

        if (empty($book)) {
            // Tambahkan pesan error yang lebih informatif
            log_message('error', 'Book edit: Book with slug "' . $slug . '" not found or deleted');
            throw new PageNotFoundException('Baju dengan slug "' . $slug . '" tidak ditemukan atau sudah dihapus');
        }

        $categories = $this->categoryModel->findAll();
        $racks = $this->rackModel->findAll();

        $data = [
            'book'       => $book,
            'categories' => $categories,
            'racks'      => $racks,
            'validation' => \Config\Services::validation(),
        ];

        return view('books/edit', $data);
    }

    /**
     * Add or update a model resource, from "posted" properties
     *
     * @return mixed
     */
    public function update($slug = null)
    {
        $book = $this->bookModel->where('slug', $slug)->first();

        if (empty($book)) {
            throw new PageNotFoundException('Book with slug \'' . $slug . '\' not found');
        }

        if (!$this->validate([
            'cover'     => 'is_image[cover]|mime_in[cover,image/jpg,image/jpeg,image/gif,image/png,image/webp]|max_size[cover,5120]',
            'title'     => 'required|string|max_length[127]',
            'author'    => 'required|alpha_numeric_punct|max_length[64]',
            'publisher' => 'required|string|max_length[64]',
            'rack'      => 'required|numeric',
            'category'  => 'required|numeric',
            'stock'     => 'required|numeric|greater_than_equal_to[1]',
        ])) {
            $categories = $this->categoryModel->findAll();
            $racks = $this->rackModel->findAll();

            $data = [
                'book'       => $book,
                'categories' => $categories,
                'racks'      => $racks,
                'validation' => \Config\Services::validation(),
                'oldInput'   => $this->request->getVar(),
            ];

            return view('books/edit', $data);
        }

        $bookStock = $this->bookStockModel->where('book_id', $book['id'])->first();

        $coverImage = $this->request->getFile('cover');

        if ($coverImage->getError() == 4) {
            $coverImageFileName = $book['book_cover'];
        } else {
            $coverImageFileName = updateBookCover(
                newCoverImage: $coverImage,
                formerCoverImageFileName: $book['book_cover']
            );
        }

        $slug = $this->request->getVar('title') != $book['title']
            ? url_title($this->request->getVar('title') . ' ' . rand(0, 1000), '-', true)
            : $book['slug'];

        if (!$this->bookModel->save([
            'id'  => $book['id'],
            'slug' => $slug,
            'title' => $this->request->getVar('title'),
            'author' => $this->request->getVar('author'),
            'publisher' => $this->request->getVar('publisher'),
            'rack_id' => $this->request->getVar('rack'),
            'category_id' => $this->request->getVar('category'),
            'book_cover' => $coverImageFileName ?? null,
        ]) || !$this->bookStockModel->save([
            'id' => $bookStock['id'],
            'book_id' => $book['id'],
            'quantity' => $this->request->getVar('stock')
        ])) {
            $categories = $this->categoryModel->findAll();
            $racks = $this->rackModel->findAll();

            $data = [
                'book'       => $book,
                'categories' => $categories,
                'racks'      => $racks,
                'validation' => \Config\Services::validation(),
                'oldInput'   => $this->request->getVar(),
            ];

            session()->setFlashdata(['msg' => 'Update failed']);
            return view('books/edit', $data);
        }

        session()->setFlashdata(['msg' => 'Update book successful']);
        return redirect()->to('admin/books');
    }

    /**
     * Delete the designated resource object from the model
     *
     * @return mixed
     */
    public function delete($slug = null)
    {
        $book = $this->bookModel->where('slug', $slug)->first();

        if (empty($book)) {
            throw new PageNotFoundException('Book with slug \'' . $slug . '\' not found');
        }

        $bookStock = $this->bookStockModel->where('book_id', $book['id'])->first();

        if (!$this->bookModel->delete($book['id']) || !$this->bookStockModel->delete($bookStock['id'])) {
            session()->setFlashdata(['msg' => 'Failed to delete book', 'error' => true]);
            return redirect()->back();
        }

        // delete former image file
        deleteBookCover($book['book_cover']);

        session()->setFlashdata(['msg' => 'Book deleted successfully']);
        return redirect()->to('admin/books');
    }
}
