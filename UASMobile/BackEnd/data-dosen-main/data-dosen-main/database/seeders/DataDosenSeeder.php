<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\DataDosen;

class DataDosenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DataDosen::truncate();

        $data = [
            [
                'dosenid'   => 'Dosen001',
                'nama'      => 'Dosen 1',
                'fakultas'  => 'Ilmu Komputer',
                'prodi'     => 'Teknik Informatika',
                'email'     => 'dosen1@gmail.com',
                'created_at' => date('Y-m-d h:i:s', time()),
                'updated_at' => date('Y-m-d h:i:s', time()),
            ],
            [
                'dosenid'   => 'Dosen002',
                'nama'      => 'Dosen 2',
                'fakultas'  => 'Ilmu Komputer',
                'prodi'     => 'Teknik Informatika',
                'email'     => 'dosen2@gmail.com',
                'created_at' => date('Y-m-d h:i:s', time()),
                'updated_at' => date('Y-m-d h:i:s', time()),
            ],
        ];

        DataDosen::insert($data);
    }
}
