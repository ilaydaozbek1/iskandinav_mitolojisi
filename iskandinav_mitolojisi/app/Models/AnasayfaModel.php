<?php

namespace App\Models;

use CodeIgniter\Model;

class AnasayfaModel extends Model
{
    protected $table='kullanicilar';
    protected $allowedFields = ['username','password'];

    public function kayitlar()
    {
        $this->table='tanrilar';

        return $this->findAll();
    }
    public function kayit_detay($url)
    {
        $this->table='tanrilar';

        return $this->where('url',$url)->find();
    }
    public function yeni_kayit($data)
    {
        $kullanici_verisi = [
            'username' => $data['username'],
            'password' => password_hash($data['password'], PASSWORD_DEFAULT),

        ];

        return $this->insert($kullanici_verisi);
    }
}