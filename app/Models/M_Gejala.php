<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Gejala extends Model
{
    public function __construct()
    {
        $this->db = db_connect();
    }

    public function getAllData()
    {
        return $this->db->table('gejala')->get();
    }

    public function getDataById($id)
    {
        return $this->db->table('gejala')->getWhere(['id' => $id])->getRowArray();
    }

    public function tambah($data)
    {
        return $this->db->table('gejala')->insert($data);
    }

    public function hapus($id)
    {
        return $this->db->table('gejala')->delete(['id' => $id]);
    }

    public function ubah($data, $id)
    {
        return $this->db->table('gejala')->update($data, ['id' => $id]);
        // return $this->builder->update($data, ['id' => $id]);
    }

    public function getGejalaPenyakit($kode)
    {
        $db = \Config\Database::connect();

        $query = $db->table('relasi')
                    ->select('*')
                    ->join('penyakit', 'relasi.penyakit_id = penyakit.id')
                    ->join('gejala', 'gejala.id = relasi.gejala_id')
                    ->where('penyakit.kode', $kode)
                    ->get();

        return $query->getResultArray();
    }

}
