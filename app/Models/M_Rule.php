<?php

namespace App\Models;

use CodeIgniter\Model;

class Rule_model extends Model
{
    public function __construct()
    {
        $this->db = db_connect();
    }

    public function getKode()
    {
        $this->db->table('gejala')->selectMax('kode', 'kode');
        $query = $this->db->table('penyakit')->get()->getRowArray();

        $data = $query['kode'];
        $noUrut = (int) substr($data, 1, 2);
        $noUrut++;

        $kode = 'G' . sprintf('%02s', $noUrut);
        return $kode;
    }

    public function getAllRule()
    {
        $this->db->table('rule')->join('gejala', 'gejala.id_gejala = rule.gejala_id');
        return $this->db->table('gejala')->get()->getResultArray();
    }

    public function getAllRuleId($id)
    {
        $this->db->table('rule')->join('gejala', 'gejala.id_gejala = rule.gejala_id', 'left');
        $this->db->table('rule')->join('kerusakan', 'kerusakan.id_kerusakan = rule.kerusakan_id', 'left');
        $this->db->table('rule')->where('id', $id);

        return $this->db->table('rule')->get()->getResultArray();
    }

    public function getRule()
    {
        return $this->db->table('rule')->get('rule')->getResultArray();
    }
}
