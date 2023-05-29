<?php

namespace App\Controllers;

use App\Controllers\M_Penyakit as ControllersM_Gejala;
use App\Models\M_Penyakit;

class Penyakit extends BaseController
{
    public function index()
    {

        $model = new M_Penyakit();

        $data = [
            'penyakit' => $model->getAllData()
        ];
        return view('penyakit/index', $data);
    }
    public function tambah()
    {
        if (isset($_POST['tambah'])) {
            $val = $this->validate([
                'kode' => [
                    'label' => 'Nomor Kode Penyakit',
                    'rules' => 'required|max_length[5]|is_unique[gejala.kode]'
                ],
                'nama_penyakit' => [
                    'label' => 'Nama Penyakit',
                    'rules' => 'required'
                ],
                'keterangan' => [
                    'label' => 'Keterangan Penyakit',
                    'rules' => 'required'
                ]
            ]);
            if (!$val) {

                session()->setFlashdata('err', \Config\Services::validation()->listErrors());

                $model = new M_Penyakit();

                $data = [
                    'penyakit' => $model->getAllData()
                ];
                return view('penyakit/index', $data);
            } else {
                $model = new M_penyakit;
                $data = [
                    'kode' => $this->request->getPost('kode'),
                    'nama_penyakit' => $this->request->getPost('nama_penyakit'),
                    'keterangan' => $this->request->getPost('keterangan'),
                ];

                // insert data
                $success = $model->tambah($data);
                if ($success) {
                    session()->setFlashdata('message', 'Ditambahkan');
                    return redirect()->to(base_url('penyakit'));
                }
            }
        } else {
            return redirect()->to(base_url('penyakit'));
        }
    }
    public function hapus($id)
    {
        $model = new M_Penyakit;
        $success = $model->hapus($id);
        if ($success) {
            session()->setFlashdata('message', 'Dihapus');
            return redirect()->to(base_url('penyakit'));
        }
    }
    public function ubah()
    {
        if (isset($_POST['ubah'])) {
            $val = $this->validate([
                'kode' => [
                    'label' => 'Nomor Kode Penyakit',
                    'rules' => 'required|max_length[5]'

                ],
                'nama_penyakit' => [
                    'label' => 'Nama Penyakit',
                    'rules' => 'required'
                ],
                'keterangan' => [
                    'label' => 'Keterangan Penyakit',
                    'rules' => 'required'
                ]
            ]);

            if (!$val) {

                session()->setFlashdata('err', \Config\Services::validation()->listErrors());

                $model = new M_Penyakit();
                $data = [
                    'penyakit' => $model->getAllData()
                ];
                return view('penyakit/index', $data);
            } else {
                $id = $this->request->getPost('id');
                $model = new M_Penyakit;
                $data = [
                    'kode' => $this->request->getPost('kode'),
                    'nama_penyakit' => $this->request->getPost('nama_penyakit'),
                    'keterangan' => $this->request->getPost('keterangan'),
                ];

                // edit data
                $success = $model->ubah($data, $id);
                if ($success) {
                    session()->setFlashdata('message', 'Diperbarui');
                    return redirect()->to(base_url('penyakit'));
                }
            }
        } else {
            return redirect()->to(base_url('penyakit'));
        }
    }
}
