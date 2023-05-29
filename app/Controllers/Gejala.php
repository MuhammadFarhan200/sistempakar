<?php

namespace App\Controllers;

use App\Controllers\M_Gejala as ControllersM_Gejala;
use App\Models\M_Gejala;

class Gejala extends BaseController
{

    public function index()
    {
        $model = new M_Gejala;

        $data = [
            'gejala' => $model->getAllData()
        ];
        return view('gejala/index', $data);
    }

    public function tambah()
    {
        if (isset($_POST['tambah'])) {
            $val = $this->validate([
                'kode' => [
                    'label' => 'Nomor Kode Gejala',
                    'rules' => 'required|max_length[5]|is_unique[gejala.kode]'

                ],
                'nama_gejala' => [
                    'label' => 'Nama Gejala',
                    'rules' => 'required'
                ],
                'keterangan' => [
                    'label' => 'Keterangan Gejala',
                    'rules' => 'required'
                ]
            ]);

            if (!$val) {

                session()->setFlashdata('err', \Config\Services::validation()->listErrors());

                $model = new M_Gejala();
                $data = [
                    'gejala' => $model->getAllData()
                ];
                return view('gejala/index', $data);
            } else {
                $model = new M_Gejala;
                $data = [
                    'kode' => $this->request->getPost('kode'),
                    'nama_gejala' => $this->request->getPost('nama_gejala'),
                    'keterangan' => $this->request->getPost('keterangan'),
                ];

                // insert data
                $success = $model->tambah($data);
                if ($success) {
                    session()->setFlashdata('message', 'Ditambahkan');
                    return redirect()->to(base_url('gejala'));
                }
            }
        } else {
            return redirect()->to(base_url('gejala'));
        }
    }

    public function hapus($id)
    {
        $model = new M_Gejala;
        $success = $model->hapus($id);
        if ($success) {
            session()->setFlashdata('message', 'Dihapus');
            return redirect()->to(base_url('gejala'));
        }
    }

    public function ubah()
    {
        if (isset($_POST['ubah'])) {
            $val = $this->validate([
                'kode' => [
                    'label' => 'Nomor Kode Gejala',
                    'rules' => 'required|max_length[5]'

                ],
                'nama_gejala' => [
                    'label' => 'Nama Gejala',
                    'rules' => 'required'
                ],
                'keterangan' => [
                    'label' => 'Keterangan Gejala',
                    'rules' => 'required'
                ]
            ]);

            if (!$val) {

                session()->setFlashdata('err', \Config\Services::validation()->listErrors());

                $model = new M_Gejala();
                $data = [
                    'gejala' => $model->getAllData()
                ];
                return view('gejala/index', $data);
            } else {
                $id = $this->request->getPost('id');
                $model = new M_Gejala;
                $data = [
                    'kode' => $this->request->getPost('kode'),
                    'nama_gejala' => $this->request->getPost('nama_gejala'),
                    'keterangan' => $this->request->getPost('keterangan'),
                ];

                // edit data
                $success = $model->ubah($data, $id);
                if ($success) {
                    session()->setFlashdata('message', 'Diperbarui');
                    return redirect()->to(base_url('gejala'));
                }
            }
        } else {
            return redirect()->to(base_url('gejala'));
        }
    }
}
