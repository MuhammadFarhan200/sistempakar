<?php

namespace App\Controllers;

use App\Models\M_Hasil;

class Periksa extends BaseController
{
    protected $db, $builder;
    
    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        return view('periksa/index');
    }

    public function konsultasi()
    {
        return view('periksa/konsultasi');
    }

    public function add()
    {
        $awal = 1;
        if (isset($_POST['konsultasi'])) {
            $val = $this->validate([
                'nama' => [
                    'label' => 'Nama',
                    'rules' => 'required'
                ],
                'email' => [
                    'label' => 'Email',
                    'rules' => 'required'
                ]
            ]);
            if (!$val) {
                session()->setFlashdata('err', \Config\Services::validation()->listErrors());
                return redirect()->to(base_url('periksa/konsultasi'));
            } else {
                $data = [
                    'user_id' => $this->request->getPost('user_id'),
                    'nama' => $this->request->getPost('nama'),
                    'email' => $this->request->getPost('email'),
                    'tgl_lahir' => $this->request->getPost('tgl_lahir'),
                    'no_telp' => $this->request->getPost('no_telp'),
                    'alamat' => $this->request->getPost('alamat'),
                ];
                session()->set('data_pasien', $data);
                session()->remove('gejala');
                session()->remove('kode_penyakit');
                session()->remove('hasil_cf');
                session()->remove('p2_g8');
                return redirect()->to(base_url('periksa/konsultasi/pertanyaan/' . $awal));
            }
        }
    }

    public function pertanyaan($id_pertanyaan)
    {
        $db      = \Config\Database::connect();
        $query   = $db->table('rule')
            ->select('rule.id as rule_id, gejala.id as gejala_id, gejala.nama_gejala as nama_gejala, gejala.kode as kode, rule.ya as ya, rule.tidak as tidak')
            ->join('gejala', 'gejala.id = rule.gejala_id')
            ->where('rule.id', $id_pertanyaan)
            ->get();

        $data['pertanyaan'] = $query->getRowArray();
        // dd($data['pertanyaan']);  
        return view('periksa/pertanyaan', $data);
    }

    public function olah()
    {
        $next = $this->request->getPost('next');
        $huruf = substr($next, 0, 1);
        $jawaban = $this->request->getPost('jawaban');
        $get_pertanyaan = $this->db->table('gejala')
            ->join('rule', 'rule.gejala_id = gejala.id')
            ->where('rule.id', $jawaban)
            ->get()
            ->getRowArray();
        // dd($jawaban, $get_pertanyaan);
        $gejala = session()->get('gejala');
        if ($gejala == null && $get_pertanyaan['kode'] !== null) {
            session()->set('gejala', $get_pertanyaan['kode']);
        } else {
            $get_pertanyaan ? ($get_pertanyaan['kode'] ? $gejala = $gejala . ', ' . $get_pertanyaan['kode'] : '') : '';
            session()->set('gejala', $gejala);
        }

        // dd($gejala);
        if ($gejala) {
            if ("G1, G2, G3, G5" == $gejala) {
                $g8 = $this->db->table('rule')
                    ->select('rule.id as rule_id, gejala.id as gejala_id, gejala.nama_gejala as nama_gejala, gejala.kode as kode, rule.ya as ya, rule.tidak as tidak')
                    ->join('gejala', 'gejala.id = rule.gejala_id')
                    ->where('rule.id', 31)
                    ->get()
                    ->getRowArray();
                // dd($explode_gejala, $g8);
                if ($g8 !== null) {
                    $p2_g8 = session()->get('p2_g8');
                    if ($huruf == 'P' || $next == null) {
                        session()->set('kode_penyakit', $next);
                        return redirect()->to(base_url('periksa/konsultasi/hasil'));
                    } elseif ($p2_g8 !== null && $p2_g8 == 'ya') {
                        // dd($p2_g8);
                        return redirect()->to(base_url('periksa/konsultasi/pertanyaan/' . $next));
                    } else {
                        session()->set('p2_g8', 'ya');
                        return redirect()->to(base_url('periksa/konsultasi/pertanyaan/' . $g8['rule_id']));
                    }
                }
            }
        }
        if ($huruf == 'P' || $next == null) {
            session()->set('kode_penyakit', $next);
            return redirect()->to(base_url('periksa/konsultasi/hasil'));
        } else {
            return redirect()->to(base_url('periksa/konsultasi/pertanyaan/' . $next));
        }
    }

    public function hasil()
    {
        $kode = session()->get('kode_penyakit');
        $db      = \Config\Database::connect();
        $query   = $db->table('penyakit')
            ->select('*')
            ->where('kode', $kode)
            ->get();
        $data['pasien'] = session()->get('data_pasien');
        // dd($data['pasien']);
        $data['penyakit'] = $kode == null ? 'Tidak sedang mengalami gangguan kesehatan.' : $query->getRowArray();
        $data['gejala'] = $this->db->table('gejala')
            ->select('*')
            ->whereIn('kode', explode(', ', session()->get('gejala')))
            ->get()
            ->getResultArray();
        if ($kode != null) {
            // $data['test'] = [
            //     [
            //         'id' => "2",
            //         'kode' => "G2",
            //         'nama_gejala' => "Kehilangan kegembiraan",
            //         'keterangan' => "-",
            //         'nilai_cf' => "0.4",
            //     ],
            //     [
            //         'id' => "3",
            //         'kode' => "G2",
            //         'nama_gejala' => "Suasana hati negatif",
            //         'keterangan' => "-",
            //         'nilai_cf' => "0.4",
            //     ],
            //     [
            //         'id' => "4",
            //         'kode' => "G2",
            //         'nama_gejala' => "Rasa bersalah dan Tidak berguna",
            //         'keterangan' => "-",
            //         'nilai_cf' => "0.6",
            //     ],
            //     [
            //         'id' => "8",
            //         'kode' => "G2",
            //         'nama_gejala' => "Berlangsung 2 minggu atau kurang",
            //         'keterangan' => "-",
            //         'nilai_cf' => "0.6",
            //     ]
            // ];
            $cf = 1;
            foreach ($data['gejala'] as $key => $item) {
                $nilaiCF = floatval($item['nilai_cf']);
                if ($key > 0) {
                    $cf = $nilaiCF + ($cf * (1 - $nilaiCF));
                } else {
                    $cf = $nilaiCF;
                }
            }
            $cf = $cf * 100;
            $data['cf'] = $cf;
            session()->set('hasil_cf', $cf);
        }
        return view('periksa/hasil', $data);
    }

    public function simpan()
    {
        $kode = session()->get('kode_penyakit');
        $pasien = session()->get('data_pasien');
        $hasil_cf = session()->get('hasil_cf');
        $laporan = $this->db->table('hasil');
        date_default_timezone_set('Asia/Jakarta');
        $laporan->insert([
            'user_id' => $pasien['user_id'],
            'nama_pasien' => $pasien['nama'],
            'email' => $pasien['email'],
            'tgl_lahir' => $pasien['tgl_lahir'],
            'no_telp' => $pasien['no_telp'],
            'alamat' => $pasien['alamat'],
            'gejala' => session()->get('gejala'),
            'penyakit' => $kode ?? 'Tidak sedang mengalami gangguan kesehatan.',
            'hasil_cf' => $hasil_cf ?? null,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        session()->setFlashdata('message', 'Ditambahkan');
        session()->remove('p2_g8');
        return redirect()->to(base_url('periksa/laporan'));
    }

    public function cetak()
    {
        $kode = session()->get('kode_penyakit');
        $db      = \Config\Database::connect();
        $query   = $db->table('penyakit')
            ->select('*')
            ->where('kode', $kode)
            ->get();
        $data['pasien'] = session()->get('data_pasien');
        $data['penyakit'] = $kode == null ? 'Tidak sedang mengalami gangguan kesehatan.' : $query->getRowArray();
        $data['gejala'] = $this->db->table('gejala')
            ->select('*')
            ->whereIn('kode', explode(', ', session()->get('gejala')))
            ->get()
            ->getResultArray();
        $data['user'] = $this->db->table('users')
            ->select('*')
            ->where('id', session()->get('user_id'))
            ->get()
            ->getRowArray();
        if ($kode != null) {
            $cf = 1;
            foreach ($data['gejala'] as $key => $item) {
                $nilaiCF = floatval($item['nilai_cf']);
                if ($key > 0) {
                    $cf = $nilaiCF + ($cf * (1 - $nilaiCF));
                } else {
                    $cf = $nilaiCF;
                }
            }
            $cf = $cf * 100;
            $data['cf'] = $cf;
        }

        $dompdf = new \Dompdf\Dompdf();
        $html = view('periksa/cetak', $data);
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'potrait');
        $dompdf->render();
        session()->remove('p2_g8');
        return $dompdf->stream('hasil_diagnosa.pdf', array('Attachment' => false));
    }
}
