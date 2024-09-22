<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>İskandinav Mitolojisi</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="<?=base_url()?>css/bootstrap.css" />
  <!--slick slider stylesheet -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.9/slick-theme.min.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- slick slider -->

  <link rel="stylesheet" href="<?=base_url()?>css/slick-theme.css" />
  <!-- font awesome style -->
  <link href="<?=base_url()?>css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="<?=base_url()?>css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="<?=base_url()?>css/responsive.css" rel="stylesheet" />

</head>

<body class="sub_page">

  <div class="main_body_content">

    <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
            Iskandinav Mitolojisi
            </a>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse " id="navbarSupportedContent">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                  <a class="nav-link" href="<?=base_url()?>">Anasayfa</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?=base_url("panel")?>"> Panel</a>
                </li>
                <?php
                if(isset($durum) && $durum)
                {
                ?>
                <li class="nav-item">
                  <a class="nav-link" href="<?=base_url('logout')?>">Çıkış</a>
                </li>
                <?php
                 }
                else
                {
                  ?>
                <li class="nav-item">
                  <a class="nav-link" href="<?=base_url('login')?>">Panel Giriş</a>
                </li>
                <?php
                }
                ?>
              </ul>
              </div>
            </div>
          </nav>
        </div>
      </header>