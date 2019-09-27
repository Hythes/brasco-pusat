<?php
$title = 'List Supplier';
$tampilkan = false;
$i = 1;
include '../../env.php';
if (isset($_POST['show'])) {
    extract($_POST);
    if ($kode2 == '') {
        $query = "SELECT * FROM supplier WHERE $sort_by = '$kode1'";
    } else {
        $query = "SELECT * FROM supplier WHERE $sort_by BETWEEN '$kode1' AND '$kode2'";
    }
    $tampilkan = true;
    $result = query($query);
}

?>

<script>
    var active = 'header_supplier';
    var active_2 = 'header_supplier_list'
</script>



<?php include('../../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            List Supplier
        </h1>
        <!-- <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
            <li class="active">Blank page</li>
        </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border" style="height: 200px;">
                <div class="container">
                    <!-- search kode suplier -->
                    <div class="row">
                        <div class="col-sm-6">
                            <form style="margin-top: 20px;" action="" method="POST">
                                <div class="form-group">
                                    <input type="text" name="kode1" placeholder="KODE SUPLIER..." style="width: 40%;">
                                    <i class="fa fa-fw fa-search"></i>
                                    <label style="padding-left: 10px; padding-right: 10px;">s/d</label>
                                    <input type="text" name="kode2" placeholder="KODE SUPLIER..." style="width: 40%;">
                                    <i class="fa fa-fw fa-search"></i>
                                </div>
                                <!-- urutkan berdasarkan -->
                                <div class="sortert" style="padding-bottom: 50px">
                                    <label class="col-sm-4">Urut Berdasarkan</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" name="sort_by" style="width: 40%">
                                            <option value="kode">Kode</option>
                                            <option value="nama">Nama</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- urutkan end -->
                                <!-- button preview -->
                                <div class="pull-right" style="padding-bottom: 20px;">
                                    <button type="submit" name="show" class="btn btn-primary">Tampilkan</button>
                                </div>
                            </form>
                            <!-- button preview end -->
                        </div>
                        <!-- div dibawah dipake kalo penting -->
                        <div class="col-sm-6">

                        </div>
                    </div>
                </div>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>
            <?php if ($tampilkan) : ?>
                <div class="box-body table-responsive">
                    <table id="example2" class="table table-bordered table-hover ">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode Supplier</th>
                                <th>Nama Supplier</th>
                                <th>Alamat</th>
                                <th>Kota</th>
                                <th>Kode Pos</th>
                                <th>No telepon</th>
                                <th>Fax</th>
                                <th>Handphone</th>
                                <th>Contact Name</th>
                                <th>Email</th>
                                <th>Kredit</th>
                                <th>TOP</th>
                                <th>PKP</th>
                                <th>Tanggal Entry</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($result as $data) : extract($data); ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td><?= $kode ?></td>
                                    <td><?= $nama ?></td>
                                    <td><?= $alamat ?></td>
                                    <td><?= $kota ?></td>
                                    <td><?= $kodepos ?></td>
                                    <td><?= $telepon ?></td>
                                    <td><?= $fax ?></td>
                                    <td><?= $handphone ?></td>
                                    <td><?= $contact_name ?></td>
                                    <td><?= $email ?></td>
                                    <td><?= $kredit ?></td>
                                    <td><?= $top ?></td>
                                    <td><?= $pkp ?></td>
                                    <td><?= $created_at ?></td>
                                </tr>
                            <?php endforeach; ?>
                    </table>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="button" class="btn  btn-primary">Copy</button>
                    <button type="button" class="btn  btn-primary">Print</button>
                    <button type="button" class="btn  btn-primary">CSV</button>
                    <button type="button" class="btn  btn-primary">PDF</button>
                    <button type="button" class="btn  btn-primary">EXCEL</button>
                    <button type="button" class="btn  btn-primary">Close</button>
                </div>
            <?php endif; ?>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../../templates/footer.php') ?>