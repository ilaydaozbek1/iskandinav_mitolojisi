<?php

namespace App\Controllers;

use App\Models\AnasayfaModel;

class Anasayfa extends BaseController
{

protected $helpers=['form','text'];

    public function index()
    {

        $data=[];

        $model= model('AnasayfaModel');
        $kayitlar = $model->kayitlar();

        if(count($kayitlar)>0)
        {
            $data['kayitlar']=$kayitlar;
        }

        $session = session();

        if($session->has('durum') && $session->get('durum'))
        { 
            $data['isim']=$session->get('isim');
            $data['durum']=$session->get('durum');

            return view('tema/header', $data)
            .view('sayfalar/anasayfa')
            .view('tema/footer');
        }
        else{
            return view('tema/header',$data).view('sayfalar/anasayfa').view('tema/footer');
        }

    }

    public function login()
    {
        $session = session();

        if ($session->has('durum') && $session->get('durum')) {
            return redirect()->to(base_url('panel'));
        } else {
            if (!$this->request->is('post')) {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }

            $rules = [
                'username' => 'required',
                'password' => 'required'
            ];

            if (!$this->validate($rules)) {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }

            $model = model('AnasayfaModel');

            $data = $this->validator->getValidated();
            
            $user = $model->where('username', $data['username'])->first();
             
            
            
             if ($user && password_verify($data['password'], $user['password']))
             {
                $kul_bilgi = [
                    'isim' => $data['username'],
                    'durum' => true
                ];
                
                $session->set($kul_bilgi);
                return redirect()->to(base_url('panel'));
            }
            else
            {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }
        }
    }

    public function logout(){
      $session = session();
      $session->destroy();

      return redirect()->to(base_url('login'));
    }

    public function incele($url)
    {
        $data=[];

        $model= model('AnasayfaModel');
        
        $veri = $model->kayit_detay($url);
        $data['veri']= $veri[0];

        $session = session();
        if($session->has('durum') && $session->get('durum'))
        { 
            $data['isim']=$session->get('isim');
            $data['durum']=$session->get('durum');
        }
        //var_dump($data);
        
        return view('tema/header', $data).view('sayfalar/incele').view('tema/footer');
        
    }
    public function kayit()
    {
        $session = session();

        if ($session->has('durum') && $session->get('durum')) {
            return redirect()->to(base_url('panel'));
        } else {
            if (!$this->request->is('post')) {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }

            $rules = [
                'username' => 'required',
                'password' => 'required'

            ];

            if (!$this->validate($rules)) {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }

            $data = $this->validator->getValidated();
            $model = model('AnasayfaModel');

            if ($model->yeni_kayit($data)) {
                $kul_bilgi = [
                    'isim' => "username",
                    'durum' => true
                ];

                $session->set($kul_bilgi);
                return redirect()->to(base_url('panel'));
            } else {
                return view('tema/header') . view('sayfalar/login') . view('tema/footer');
            }
        }
    }
}
