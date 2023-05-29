<?php

namespace App\Controllers;

class Laporan extends BaseController
{

    public function index()
    {
        $db = \Config\Database::connect(); 
        $auth = $db->table('auth_groups_users')
                    ->where('user_id', user()->id)
                    ->get()->getRowArray();
        $query = $db->table('hasil')
                    ->select('hasil.*, users.fullname as fullname, penyakit.nama_penyakit as nama_penyakit')
                    ->join('users', 'hasil.user_id = users.id', 'left')
                    ->join('penyakit', 'hasil.penyakit = penyakit.kode', 'left');
        if ($auth['group_id'] == 1) {
            $query = $query->get();
        } else {
            $query = $query->where('hasil.user_id', user()->id)
                          ->get();
        }
        $data['laporan'] = $query->getResultArray();
        // dd($data['laporan']);
        return view('laporan/index', $data);
    }

    public function hapus($id)
    {
        // dd($id);
        $db = \Config\Database::connect();
        $db->table('hasil')->where('id', $id)->delete();
        session()->setFlashdata('message', 'Dihapus');
        return redirect()->to(base_url('periksa/laporan'));
    }

    public function cetak($id) {
        $db = \Config\Database::connect(); 
        $query = $db->table('hasil')
                  ->where('hasil.id', $id)
                  ->select('*')
                  ->get();
        $data['laporan'] = $query->getRowArray();
        // dd($data['laporan']);
        $data['gejala'] = $db->table('gejala')
                            ->select('*')
                            ->whereIn('kode', explode(', ', $data['laporan']['gejala']))
                            ->get()
                            ->getResultArray();
        $data['penyakit'] = $db->table('penyakit')
                            ->select('*')
                            ->where('penyakit.kode', $data['laporan']['penyakit'])
                            ->get()
                            ->getRowArray();
        // dd($data);
        $mpdf = new \Dompdf\Dompdf();
        $html = view('laporan/cetak', $data);
        $mpdf->loadHtml($html);
        $mpdf->setPaper('A4', 'potrait');
        $mpdf->render();
        return $mpdf->stream('laporan-hasil-diagnosa.pdf', array('Attachment' => false));
    }
}
