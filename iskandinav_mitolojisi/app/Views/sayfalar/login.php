<!-- contact section -->

<section class="contact_section layout_padding">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-5 col-lg-4 offset-md-1 offset-lg-2">
        <div class="form_container">
          <div class="heading_container">
            <h2>Giris</h2>
          </div>
          <?= validation_list_errors() ?>
          <?php 
          if(isset($uyarı))
          {
              echo '<div class="alert alert-danger" role="alert">';
              echo $uyarı;
              echo '</div>';
          }
          ?>
          <form action="<?= base_url('login') ?>" method="post">
            <?= csrf_field() ?>
            <div>
              <input type="text" id="username" name="username" placeholder="Kullanıcı Adı" />
            </div>
            <div>
              <input type="password" id="password" name="password" placeholder="Şifre" />
            </div>
            <input type="submit" name="gonder" class="btn btn-danger" value="Giriş Yap" />
          </form>
        </div>
      </div>

      <div class="col-md-5 col-lg-4">
        <div class="form_container">
          <div class="heading_container">
            <h2>Üyelik</h2>
          </div>
          <?= validation_list_errors() ?>	
          <?php
          if(isset($uyari))
          {
              echo '<div class="alert alert-danger" role="alert">';
              echo $uyari;
              echo '</div>';
          }
          ?>	
          <form class="p-b-33 p-t-5"  action="<?= base_url('kayit') ?>" method="post">
            <?= csrf_field() ?>
            <div>
              <input type="text" id="username" name="username" placeholder="Kullanıcı Adı" />
            </div>
            <div>
              <input type="password" id="password" name="password" placeholder="Şifre"  />
            </div>
            <input type="submit" name="uyeol" class="btn btn-danger" value="Üye Ol" />
          </form>
        </div>
      </div>
  
      <div class="col-md-6 px-0">
        <div class="map_container">
          <div class="map">
            <div id="googleMap"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- end contact section -->
