<!-- Container Başlangıç -->
<div class="container-fluid mb-5">
    <div class="row border-top px-xl-5">
        <!-- Navbar Sütunu -->
        <div class="col-lg-2,5 d-none d-lg-block">
    <div class="btn shadow-none d-flex align-items-center justify-content-between bg-danger text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 45px; margin-top: -1px; padding: 0 30px;">
        <h6 class="m-0">Hoşgeldin, <?=$isim?> </h6>
    </div>
    <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
        <div class="nav-item dropdown text-center">
    <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
    </div>
    <a href="<?=base_url('kayit_ekle')?>" class="nav-item nav-link">Kayıt Ekle</a>
    <a href="<?=base_url('kayit_listele')?>" class="nav-item nav-link">Kayıt Listele</a>
</div>

        </div>
    </nav>
</div>

<div class="col-md-9">
