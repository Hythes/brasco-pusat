<?php
include '../env.php';

$title = 'Pengajuan Perubahan Harga';
$query = query('SELECT * FROM pengajuan_perubahan_harga ORDER BY nomor_pengajuan DESC LIMIT 1');
if (!isset($query[0]['nomor_pengajuan'])) {
  $id = 'PH-001';
} else {
  $id = tambahId(strval($query[0]['nomor_pengajuan']), 'PH');
}

?>
<script>
  var active = 'header_perubahan';
  var active_2 = 'header_perubahan_pengajuan';
</script>
<!-- =============================================== -->
<?php include('../templates/header.php') ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Pengajuan Perubahan Harga
    </h1>
    <script>
      var simpanData = [];
      var i = 1;
    </script>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Default box -->
    <div class="box-body">
      <!-- right column -->
      <div class="col">
        <!-- Horizontal Form -->
        <div class="box box-info">
          <!-- /.box-header -->
          <!-- form start -->
          <form class="form-horizontal">
            <div class="box-body">
              <div class="form-group">
                <label class="col-sm-2 control-label-inline" for="nomorpengajuan">Nomor Pengajuan</label>
                <div class="col-sm-2">
                  <input type="text" class="form-control" name="nomor_pengajuan" value="<?= $id ?>" disabled id="nomorpengajuan" placeholder="Nomor Pengajuan..">
                </div>
              </div>

              <!-- Date dd/mm/yyyy -->
              <div class="form-group">
                <label class="col-sm-2 control-label-inline" for="formtanggal">Tanggal</label>
                <div class="col-sm-2">
                  <div class="input-group">
                    <input type="date" id="formtanggal" name="tanggal" class="form-control">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                  </div>
                  <!-- /.input group -->
                </div>
                <!-- /.form group -->
              </div>
              <!-- /.box-body -->
              <!-- select -->
              <div class="form-group">
                <label for="tipecustomer" class="col-sm-2">Tipe Customer</label>
                <select class="form-control-inline" id="tipecustomer_pph" name="tipe_customer" style="margin-left: 15px">
                  <option value="1">Customer 1</option>
                  <option value="2">Customer 2</option>
                  <option value="3">Customer 3</option>
                </select>
              </div>
            </div>
        </div>


        <!-- Main content -->
        <div class="box box-info">
          <div class="box-body">
            <div class="row" style="margin-left: 5px">
              <div class="col-sm-2">
                <input type="text" class="form-control" placeholder="Barcode" id="barcode_pph">

              </div>
              <div class="col-sm-2">
                <input type="text" class="form-control" disabled placeholder="Nama Item" id="item_pph">
              </div>
              <div class="col-sm-2">
                <input type="text" class="form-control" disabled placeholder="H. Jual Lama" id="jual_pph">
              </div>
              <div class="col-sm-2">
                <input type="text" class="form-control" placeholder="H. Jual Baru" id='harga_baru'>
              </div>
              <div class="col-sm-1">
                <input type="text" class="form-control" placeholder="Qty" id="qty">
              </div>
              <div class="col-sm-2 ">
                <input type="text" class="form-control" placeholder="Keterangan" id="keterangan">
              </div>
              <div class="col-sm-1" style="margin-top: 5px;">
                <i class="fa fa-plus fa-2x" id="insert_pph" style="cursor:pointer"></i>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered table-striped">
                <thead align="center">
                  <tr>
                    <th>No</th>
                    <th>Barcode</th>
                    <th>Nama Item</th>
                    <th>Harga Jual Lama</th>
                    <th>Harga Jual Baru</th>
                    <th>Quantity</th>
                    <th>Keterangan</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody align="center" id="table">
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <button type="button" class="btn btn-primary pull-right btn-block" id="simpan_pph" name="simpan">Save</button>
        </form>
      </div>
    </div>
    <!-- /.box-footer-->
</div>
<!-- /.box -->
</section>
<!-- /.content -->

<?php include('../templates/footer.php') ?>