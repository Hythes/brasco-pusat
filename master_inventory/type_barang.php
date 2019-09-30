<!-- TOLONG BENERIN GAN -->
<!-- 
==================== YANG EROR ========================
    -- GAK ADA
    -- CUMA BENERIN EDIT NYA (PAS DI KLIK EDIT FORM TAMBAHNYA DI GANTI EDIT, GW GAK BISA BIKIN KEK GITU)

====================== HOSHI ==========================
 -->

<!-- konek -->
<?php 
  $host = 'localhost';
  $user = 'root';
  $password = '';
  $dbname = 'brasco_pusat';
  $conn = mysqli_connect($host, $user, $password, $dbname);
?>

<!-- query -->
<?php
  //tambah 
  if(isset($_POST['tambah'])){
    $nama = $_POST['nama'];
    $sql = "INSERT INTO tipe_barang (nama_barang) VALUE ('$nama')";
    $query = mysqli_query($conn, $sql);
    if ($query) {
      echo "<script>alert('Data Added')</script>";
      // echo "<script>location='type_barang.php'</script>";
    }
    else{
      echo "<script>alert('F')</script>";
    }
  }

  // edit
  if (isset($_POST['edit'])) {
    $nama = $_POST['nama'];
    // $id= $_POST['id'];
    $edit = $conn->query("UPDATE tipe_barang SET nama_barang='$nama' WHERE id='$_GET[id]'");
    if ($edit) {
      echo "<script>alert('Data Added')</script>";
      echo "<script>location='type_barang.php'</script>"; 
    }
    else{
      echo "<script>alert('F')</script>"; 
    }
  }

// delete
  if (isset($_GET['stats'])) {
    if ($_GET['stats'] == 'delete') {
      $delete = $conn->query("DELETE FROM tipe_barang WHERE id='$_GET[id]'");
      if ($delete) {
        // echo "<script>alert('Data deleted')</script>";
        echo "<script>location='type_barang.php'</script>";
      }
      else{
        echo "<script>alert('FFF')</script>";
      }
    }
  }

?>

<?php $title = "Type Barang"; ?>
<script>
    var active = 'header_inventory';
    var active_2 = 'header_type_barang';
</script>

<?php include('../templates/header.php') ?>
  <!-- =============================================== -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Type Barang
        <small>it all starts here</small>
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
          <h3 class="box-title">Type Barang</h3>
           <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
            title="Collapse">
            <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          
          <div class="form">
          	<form action="" method="POST" class="form-horizontal">
          		<div class="box-body">
          			<div class="col-sm-8 pad">
          				<div class="form-group">
          					<label class="col-sm-3 control-label">Type Barang</label>
          					<div class="col-sm-7">
          						<input type="text" name="nama" class="form-control" required="">
          					</div>
                    <button type="submit" class="btn btn-info" name="tambah">Add</button>
          				</div>
          				
          			</div>
          		</div>
          	</form>

            <?php if (isset($_GET['stats'])) : ?>  
              <?php if ($_GET['stats'] == 'edit') : ?>
                <?php $k = $conn->query('SELECT * FROM tipe_barang WHERE id="'.$_GET['id'].'"') ?>
                <?php $ok = $k->fetch_assoc(); ?>
                <form action="" method="POST" class="form-horizontal">
                  <div class="box-body">
                    <div class="col-sm-8 pad">
                      <div class="form-group">
                        <label class="col-sm-3 control-label">Type Barang</label>
                        <div class="col-sm-7">
                          <input type="text" class="form-control" required="" name="nama" value="<?php echo $ok['nama_barang'] ?>">
                        </div>
                        <button type="text" class="btn btn-info" name="edit">Save</button>
                      </div>
                    </div>
                  </div>
                </form>
              <?php endif; ?>
            <?php endif; ?>
          </div>

          <div class="data-table">
          	<table id="example1" class="table table-bordered table-striped text-center">
          		<thead>
          			<tr>
                  <th>No</th>
          				<th>Type Barang</th>
          				<th>Aksi</th>
          			</tr>
          		</thead>
          		<?php $nomor =1; ?>
              <?php 
              $tampil = $conn->query("SELECT * FROM tipe_barang");
              while ($p = $tampil->fetch_assoc()) : ?>
                <tr>
                  <td><?php echo $nomor; ?></td>
                  <td><?php echo $p['nama_barang'] ?></td>
                  <td>
                    <a href="master_inventory/type_barang.php?stats=edit&id=<?= $p['id'] ?>"><i class="fa fa-edit fa-lg text-primary" style="padding-left: 20px;"></i></a>
                    <a href="master_inventory/type_barang.php?stats=delete&id=<?=$p['id']?>"  onclick="return confirm('Data akan dihapus?')"><i class="fa fa-trash-o fa-lg text-red" style="padding-left: 20px;"></i></a>
                  </td>
                </tr>
                <?php $nomor++; ?>
              <?php endwhile; ?>
          	</table>


        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php include('../templates/footer.php') ?>