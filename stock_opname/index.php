  <?php $role = "inventory" ?>

  <?php

  $title = "Hasil Stock Opname";
  include '../env.php';
  cekAdmin($role);
  if (isset($_POST['simpan'])) {
    extract($_POST);
    print_r($_POST);
    exit();
    // $query = query('SELECT * FROM stock_opname ORDER BY id DESC LIMIT 1');
    // if (!isset($query[0]['id'])) {
    //   $id = 1;
    // } else {
    //   $id = $query[0]['id'];
    //   $id++;
    // }
    // $sql = '';
    // for ($i = 1; $i <= $_POST['total']; $i++) {
    //   $b = $_POST['barcode' . $i];
    //   $q = $_POST['qty' . $i];
    //   $id_admin = $_SESSION['admin']['id'];
    //   $sql .= "INSERT INTO stock_opname(id,barcode_inventory,quantity,id_admin,id_edit_admin) VALUES('$id','$b','$q','$id_admin','0'); ";
    // }
    // if (!mysqli_multi_query($conn, $sql)) {
    //   echo mysqli_errno($conn);
    //   exit();
    // }
  }
  if (isset($_POST['cariBarcode'])) {
    extract($_POST);
    $query = "SELECT * FROM inventory WHERE barcode BETWEEN '$barcode1' AND '$barcode2'";
    $result = query($query);
  }
  ?>

  <script>
    var active = 'header_stock';
    var active_2 = 'header_stock_input';
  </script>
  <!-- =============================================== -->
  <?php include('../templates/header.php'); ?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        FORM INPUT HASIL STOCK OPNAME
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <!-- <h3 class="box-title">FORM INPUT HASIL STOCK OPNAME</h3> -->

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">
          <div class="container">
            <div class="">
              <form action="" method="post" class="form-horizontal">
                <div class="box-body">
                  <div class="form-group">
                    <!-- <label>Barcode</label>
                  <input type="text" name="barcode1">
                  <label>s/d</label>
                  <input type="text" name="barcode2"> -->
                    <label for="" class="col-xs-1 control-label">Barcode</label>
                    <div class="col-xs-3">
                      <select name="barcode1" class="form-control">
                        <option selected disabled>Barcode</option>
                        <?php
                        $query = query("SELECT * FROM inventory");
                        foreach ($query as $data) {
                          ?>
                          <?php if (is_numeric($data['barcode'])) : ?>
                            <option value="<?= $data['barcode'] ?>"><?= $data['barcode'] ?> - <?= $data['nama_barang'] ?></option>
                          <?php else : ?>

                          <?php endif; ?>
                        <?php } ?>
                      </select>
                      <!-- <input type="text" class="form-control" name="barcode1" required> -->
                    </div>
                    <label for="" class="col-xs-1 control-label">s/d</label>
                    <div class="col-xs-3">
                      <select name="barcode2" class="form-control">
                        <option selected disabled>Barcode</option>
                        <?php
                        $query = query("SELECT * FROM inventory");
                        foreach ($query as $data) {
                          ?>
                          <?php if (is_numeric($data['barcode'])) : ?>
                            <option value="<?= $data['barcode'] ?>"><?= $data['barcode'] ?> - <?= $data['nama_barang'] ?></option>
                          <?php else : ?>

                          <?php endif; ?>
                        <?php } ?>
                      </select>
                    </div>
                    <button class="btn btn-info" type="submit" name="cariBarcode">Search</button>
                  </div>
                </div>
            </div>
          </div>
          <div class="table-responsive">
            <table class=" table table-bordered table-striped" id="example1">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Barcode</th>
                  <th>Nama Item</th>
                  <th>Sat</th>
                  <th>QTY Opname</th>
                </tr>
              </thead>
              <tbody>
                <?php if (isset($result)) : ?>
                  <?php $i = 1;
                    foreach ($result as $res) :
                      $satuan = query("SELECT satuan FROM satuan WHERE id='$res[satuan]'");
                      foreach ($satuan as $asSatuan) {
                        ?>
                      <tr>
                        <td><?= $i ?></td>
                        <td><?= $res['barcode'] ?></td>
                        <input type="hidden" id="barcode<?= $i ?>" value="<?= $res['barcode'] ?>">
                        <td><?= $res['nama_barang'] ?></td>
                        <td><?= $asSatuan['satuan'] ?></td>
                        <td><input style="width:30px;text-align:center" type="text" id="qty<?= $i ?>"></td>
                        <input type="hidden" name="barcode<?= $i ?>" value="<?= $res['barcode'] ?>">

                      </tr>
                  <?php $i++;
                      }
                    endforeach; ?>
                  <input type="hidden" name="total" value="<?= --$i ?>">
                <?php endif; ?>
              </tbody>
            </table>
          </div>
          <div style="float: right; padding-top: 50px">
            <button class="btn btn-primary" id="simpan" type="button">Save</button>
            </form>

          </div>
        </div>



      </div>
      <!-- /.box-body -->
      <!--  <div class="box-footer">
            Footer
          </div> -->
      <!-- /.box-footer-->
      <!-- </div> -->
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php include('../templates/footer.php') ?>
  <script type="text/javascript">
    $('#simpan').click(function() {
      var barcode = $('#barcode').val()
      var qty = $('#qty').val()
      $.post('stock_opname/save.php')
    })
  </script>