<section class="contact_section layout_padding">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 col-lg-4 offset-md-1 offset-lg-2">
                <div class="form_container">
                    <div class="heading_container">
                        <h2>KAYIT DÜZENLE</h2>
                    </div>
                    <?= validation_list_errors() ?>

                    <form action="<?=base_url('kayit_düzenle/'.$veri['id'])?>" method="post" >
                        <?=csrf_field()?>
                        <div class="form-group">
                            <label for="baslik">Başlık</label>
                            <input type="text" class="form-control" id="baslik" name="baslik" value="<?=esc($veri['baslik'])?>" />
                        </div>
                        <div class="form-group">
                            <label for="icerik">İçerik:</label>
                            <textarea cols="10" class="form-control" name="icerik" id="icerik" ><?=esc($veri['icerik'])?></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="gonder" class="btn btn-danger" value="Kayıt Güncelle" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
