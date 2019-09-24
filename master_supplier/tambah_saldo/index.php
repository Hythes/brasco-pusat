<?php
include '../../env.php';
if (isset($_POST['delete'])) {
    $extract($_POST);
    $query = "DELETE FROM supplier WHERE kode = '$kode_old'";
    lanjutkan($sql, "Dihapus");
}
if (isset($_POST['edit'])) {
    extract($_POST);
    $fax = intval($fax);
    $query = "UPDATE supplier SET kode = '$kode',nama = '$nama',alamat = '$alamat',kota = '$kota',kodepos = '$kode_pos',telepon = '$telepon',fax = '$fax',handphone = '$handphone',contact_name = '$contact_name',email = '$email' ,kredit = '$kredit' ,top = '$top' ,pkp = '$pkp' WHERE kode = '$kode_old'";
    $sql = mysqli_query($conn, $query);
    lanjutkan($sql, "Diedit");
} else if (isset($_POST['simpan'])) {
    extract($_POST);
    $query = "INSERT INTO supplier(kode,nama,alamat,kota,kodepos,telepon,fax,handphone,contact_name,email,kredit,top,pkp) VALUES(
    '$kode','$nama','$alamat','$kota','$kode_pos','$telepon','$fax','$handphone','$contact_name','$email','$kredit','$top','$pkp'
  )";
    $sql = mysqli_query($conn, $query);
    lanjutkan($sql, "Disimpan");
}
?>

<script>
    var active = 'header_supplier';
    var active_2 = 'header_supplier_tambah_saldo';
</script>

<?php $title = "Tambah Saldo Supplier";
include('../../templates/header.php') ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            TAMBAH SALDO SUPPLIER
        </h1>
        <!-- <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Tables</a></li>
      <li class="active">Data tables</li>
    </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <!-- form start -->
                    <form class="form-horizontal pad" action="" method="POST">
                        <div class="box-body">
                            <div class="form-group">
                                <div class="row">
                                    <!-- col-xs-7 -->
                                    <div class="kiri col-xs-7 ">
                                        <div class="kode-suplier" style="padding: 5px;">
                                            <input required type="text" class="form-control" name="kode" placeholder="Kode Supplier">
                                        </div>
                                        <div class="nama-suplier" style="padding:  5px;">
                                            <input required type="text" class="form-control" name="nama" placeholder="Nama Supplier">
                                        </div>
                                        <div class="alamat-suplier" style="padding:  5px;">
                                            <textarea required name="alamat" class="form-control" rows="3" placeholder="Alamat Supplier"></textarea>
                                        </div>
                                        <div class="row kota-kode" style="padding: 5px;">
                                            <div class="col-xs-6">
                                                <input required type="text" name="kota" class="form-control" placeholder="Kota">
                                            </div>
                                            <div class="col-xs-6">
                                                <input required type="number" class="form-control" name="kode_pos" placeholder="Kode Pos">
                                            </div>
                                        </div>
                                        <div class="row telepon-fax" style="padding: 5px;">
                                            <div class="col-xs-6">
                                                <input required type="number" class="form-control" name="telepon" placeholder="Telepon">
                                            </div>
                                            <div class="col-xs-6">
                                                <input required type="number" class="form-control" name="fax" placeholder="Fax">
                                            </div>
                                        </div>
                                        <div class="row phone-kontak" style="padding: 5px;">
                                            <div class="col-xs-6">
                                                <input required type="text" class="form-control" name="handphone" placeholder="Handphone">
                                            </div>
                                            <div class="col-xs-6">
                                                <input required type="text" name="contact_name" class="form-control" placeholder="Contact Name">
                                            </div>
                                        </div>
                                        <div class="email" style="padding:  5px;">
                                            <input required type="email" name="email" class="form-control" placeholder="Email">
                                        </div>
                                    </div>
                                    <!-- col-xs-5 -->
                                    <div class="kanan col-xs-5">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Kredit</label>
                                            <div class="col-sm-10">
                                                <input required type="text" class="form-control" name="kredit" placeholder="Kredit">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">TOP</label>
                                            <div class="col-sm-10">
                                                <input required type="text" class="form-control" name="top" placeholder="TOP">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">PKP</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" name="pkp">
                                                    <option>Y</option>
                                                    <option>T</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <button type="submit" name="simpan" class="btn btn-primary btn-block ">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- /.box-footer -->
                        </div>
                        <!-- /.box-body -->
                    </form>
                </div>
                <div class="box-body">`
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode Suplier</th>
                                <th>Nama Suplier</th>
                                <th>Saldo Awal</th>
                                <th>Saldo Jalan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $i = 1;
                            $sql = "SELECT * FROM supplier_saldo";
                            $data = query($sql);
                            foreach ($data as $datas) :
                                extract($datas);
                                ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td><?= $kode_supplier ?></td>
                                    <td><?= $nama_supplier ?></td>
                                    <td><?= $saldo_awal ?></td>
                                    <td><?= $saldo_jalan ?></td>
                                    <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal_<?= $i ?>">Details</button></td>
                                </tr>
                        </tbody>
                    <?php endforeach; ?>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
</div>
<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../../templates/footer.php') ?>