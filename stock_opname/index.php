<?php

$title = "Hasil Stock Opname";
include '../env.php';

if (isset($_POST['simpan'])) {
  $query = query('SELECT * FROM stock_opname ORDER BY id DESC LIMIT 1');
  if (!isset($query[0]['id'])) {
    $id = 1;
  } else {
    $id = $query[0]['id'];
    $id++;
  }
  $sql = '';
  for ($i = 1; $i <= $_POST['total']; $i++) {
    $b = $_POST['barcode' . $i];
    $q = $_POST['qty' . $i];
    $sql .= "INSERT INTO stock_opname(id,barcode_inventory,quantity) VALUES($id,$b,$q); ";
  }
  if (!mysqli_multi_query($conn, $sql)) {
    echo mysqli_errno($conn);
    exit();
  }
}
if (isset($_POST['cariBarcode'])) {
  $b1 = $_POST['barcode1'];
  $b2 = $_POST['barcode2'];
  $query = "SELECT * FROM inventory WHERE barcode BETWEEN $b1 AND $b2";
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
                    <input type="text" class="form-control" name="barcode1" required>
                  </div>
                  <label for="" class="col-xs-1 control-label">s/d</label>
                  <div class="col-xs-3">
                    <input type="text" class="form-control" name="barcode2" required>
                  </div>
                  <button class="btn btn-info" type="submit" name="cariBarcode">Search</button>
                </div>
              </div>
            </form>
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
                <form method="POST" action="">
                  <?php $i = 1;
                    foreach ($result as $res) : ?>
                    <tr>
                      <td><?= $i ?></td>
                      <td><?= $res['barcode'] ?></td>
                      <td><?= $res['nama_barang'] ?></td>
                      <td><?= $res['satuan'] ?></td>
                      <td><input style="width:30px;text-align:center" type="text" name="qty<?= $i ?>"></td>
                      <input type="hidden" name="barcode<?= $i ?>" value="<?= $res['barcode'] ?>">

                    </tr>
                  <?php $i++;
                    endforeach; ?>
                <?php endif ?>
            </tbody>
          </table>
        </div>
        <div style="float: right; padding-top: 50px">
          <input type="hidden" name="total" value="<?= --$i ?>">
          <input class="btn btn-primary" name="simpan" type="submit" value="Save">
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