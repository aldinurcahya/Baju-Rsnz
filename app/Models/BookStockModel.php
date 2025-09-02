<?php

namespace App\Models;

use CodeIgniter\Model;

class BookStockModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'book_stock';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['book_id', 'quantity'];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function getStockByBookId($bookId)
    {
        return $this->where('book_id', $bookId)->first();
    }

    public function decreaseQuantity($bookId, $quantity = 1)
    {
        $stock = $this->getStockByBookId($bookId);
        if ($stock && $stock['quantity'] >= $quantity) {
            $newQuantity = $stock['quantity'] - $quantity;
            return $this->update($stock['id'], ['quantity' => $newQuantity]);
        }
        return false;
    }

    public function getAvailableQuantity($bookId)
    {
        $stock = $this->getStockByBookId($bookId);
        return $stock ? $stock['quantity'] : 0;
    }
}
