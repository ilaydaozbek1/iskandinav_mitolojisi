<section class="contact_section">
    <br>
    <br>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 col-lg-4 offset-md-1 offset-lg-2">
                <div class="form_container">
                    <div class="heading_container">
                        <h2>KAYIT EKLE</h2>
                    </div>
                    
                    <?= validation_list_errors() ?>

                    <form action="<?= base_url('kayit_ekle') ?>" method="post" enctype="multipart/form-data">
                        <?= csrf_field() ?>
                        
                        <div class="form-group">
                            <label for="baslik">Başlık</label>
                            <input type="text" class="form-control" id="baslik" name="baslik" />
                        </div>
                        
                        <div class="form-group">
                            <label for="icerik">İçerik:</label>
                            <textarea cols="10" class="form-control" name="icerik" id="icerik"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label for="resim">Resim</label>
                            <input type="file" class="form-control" id="resim" name="resim" />
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" name="gonder" class="btn btn-danger" value="Kayıt Ekle" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
