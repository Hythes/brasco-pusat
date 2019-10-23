<?php
$title = "Profile"; ?>
<script>
  var active = 'header_profil';
</script>


<?php include('../templates/header.php') ?>

<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      PROFIL
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Examples</a></li>
      <li class="active">Blank page</li>
    </ol>
  </section>
  <?php include "dbconnect.php";
  $query = "SELECT * FROM profil";
  $result = mysqli_query($conn, $query);
  ?>
  <!-- Main content -->
  <section class="content">

    <div class="">
      <!-- left column -->
      <!-- general form elements -->
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">PROFIL</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form method="post" action="profile/proses_simpan.php" enctype="multipart/form-data">
          <div class="box-body">
            <div class="callout callout-danger">
              <label>Informasi!<br>Isilah dengan benar data profil..</label>
            </div>
            <div class="form-group" style="width: 10%">
              <label for="kode_cabang">Kode Cabang</label>
              <input type="text" class="form-control" name="kode_cabang" id="kode_cabang">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="nama_cabang">Nama Cabang</label>
              <input type="text" class="form-control" name="nama_cabang" id="nama_cabang">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="alamat">Alamat</label>
              <input type="text" class="form-control" name="alamat" id="alamat">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="kota">Kota</label>
              <input type="text" class="form-control" name="kota" id="kota">
            </div>
            <div class="form-group" style="width: 10%">
              <label for="kodepos">Kodepos</label>
              <input type="text" class="form-control" name="kodepos" id="kodepos">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="exampleInputPassword1">No Telepon</label>
              <input type="text" class="form-control" name="no_telp" id="no_telp">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="exampleInputPassword1">No Handphone</label>
              <input type="text" class="form-control" name="no_hp" id="no_hp">
            </div>
            <div class="form-group" style="width: 50%">
              <label for="exampleInputPassword1">Chief Manager</label>
              <input type="text" class="form-control" name="chief" id="Chief">
            </div>
            <div class="form-group">
              <label for="exampleInputFile">Logo</label>
              <input type="file" id="logo" name="logo">
            </div>
          </div>
          <!-- /.box-body -->

          <div class="box-footer">
            <button type="submit" value="simpan" class="btn btn-primary" name="simpan">Save</button></a>&nbsp &nbsp &nbsp
            <a href="profil.php"><input type="button" value="Batal"></a>&nbsp &nbsp &nbsp
            <button class="btn btn-primary">Close</button>&nbsp &nbsp &nbsp
            <a href="editform.php"><input type="button" value="Edit"></a>&nbsp &nbsp &nbsp
          </div>
        </form>
      </div>
      <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>