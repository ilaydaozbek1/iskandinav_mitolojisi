<!-- My Account Start -->
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3">
            <!-- Sidebar Content Goes Here -->
        </div>

        <!-- Main Content -->
        <div class="col-md-9">
            <div class="tab-content">
                <br>
                <!-- Dashboard Tab -->
                <div class="tab-pane fade show active" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                    <div style="float: left; margin-right: 20px;">
                        <!-- Başlık ve resim sola hizalama -->
                        <h1><?= esc($veri['baslik']) ?></h1>
                        <img src="<?= base_url('uploads/' . esc($veri['resim'])) ?>" style="height:200px;">
                    </div>
                    <p><?= esc($veri['icerik']) ?></p>
                </div>

                <!-- Orders Tab -->
                <div class="tab-pane fade" id="orders-tab" role="tabpanel" aria-labelledby="orders-nav">
                    <div class="table-responsive">
                        <!-- Table Content Goes Here -->
                    </div>
                </div>
<br>
                <!-- Payment Tab -->
                <div class="tab-pane fade" id="payment-tab" role="tabpanel" aria-labelledby="payment-nav">
                    <br>
                    <!-- Payment Tab Content Goes Here -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- My Account End -->
