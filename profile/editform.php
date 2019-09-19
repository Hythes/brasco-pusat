

<?php 
 

//koneksi database
include('dbconnect.php');

//query
$query = "SELECT * FROM profil WHERE id='1'";
$result = mysqli_query($conn, $query);
$title = "Edit Profile";
?>
<?php include('../templates/header.php') ?>
<div class="container bg-info" style="padding-top: 20px; padding-bottom: 20px;">

	<center><h3>Update Data Profil</h3></center>
	<form method="post" action="edit.php" enctype="multipart/form-data">

		<?php
		while ($row = mysqli_fetch_assoc($result)) {
		 	
		?>

		    <!-- Main content -->
    <section class="content">

      <div class="row">
        <!-- left column -->
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">PROFIL</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form method="post" action="proses_simpan.php" enctype="multipart/form-data">
              <div class="box-body">
                <div class="callout callout-danger">
                  <label>Informasi!<br>Ubahlah data Profil dengan benar</label>
                </div>
                <div class="form-group" style="width: 10%">
                  <label for="kode_cabang">Kode Cabang</label>
                  <input type="text" class="form-control" name="kode_cabang" id="kode_cabang" value="<?php echo $row['kode_cabang']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="nama_cabang">Nama Cabang</label>
                  <input type="text" class="form-control" name="nama_cabang" id="nama_cabang" value="<?php echo $row['nama_cabang']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="alamat">Alamat</label>
                  <input type="text" class="form-control" name="alamat" id="alamat" value="<?php echo $row['alamat']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="alamat2"></label>
                  <input type="text" class="form-control" name="alamat2" id="alamat2" value="<?php echo $row['alamat2']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="kota">Kota</label>
                  <input type="text" class="form-control" name="kota" id="kota" value="<?php echo $row['kota']; ?>">
                </div>
                <div class="form-group" style="width: 10%">
                  <label for="kodepos">Kodepos</label>
                  <input type="text" class="form-control" name="kodepos" id="kodepos" value="<?php echo $row['kodepos']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="exampleInputPassword1">No Telepon</label>
                  <input type="text" class="form-control" name="no_telp" id="no_telp" value="<?php echo $row['no_telp']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="exampleInputPassword1">No Handphone</label>
                  <input type="text" class="form-control" name="no_hp" id="no_hp" value="<?php echo $row['no_hp']; ?>">
                </div>
                <div class="form-group" style="width: 50%">
                  <label for="exampleInputPassword1">Chief Manager</label>
                  <input type="text" class="form-control" name="chief" id="Chief" value="<?php echo $row['chief']; ?>">
                </div>
                <div class="form-group">
                  <label for="exampleInputFile">Logo</label>
                  <input type="file" id="logo" name="logo" value="<?php echo $row['logo']; ?>">
                </div>
              </div>
		 &nbsp &nbsp  &nbsp &nbsp  &nbsp<button type="submit" >Update</button>

		<?php 
		}
		mysqli_close($conn);
		?>				
	</form>
</div>
      </div>
	

<?php include('../templates/footer.php') ?>