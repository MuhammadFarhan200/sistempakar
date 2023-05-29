<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Penyakit extends Model
{
    public function __construct()
    {
        $this->db = db_connect();
    }

    public function getAllData()
    {
        return $this->db->table('penyakit')->get();
    }
    public function tambah($data)
    {
        return $this->db->table('penyakit')->insert($data);
    }

    public function hapus($id)
    {
        return $this->db->table('penyakit')->delete(['id' => $id]);
    }
    public function ubah($data, $id)
    {
        return $this->db->table('penyakit')->update($data, ['id' => $id]);
        // return $this->builder->update($data, ['id' => $id]);
    }
}
