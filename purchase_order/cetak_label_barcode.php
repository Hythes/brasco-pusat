<?php
require '../env.php';
$title = "Permintaan Cetak Label Barcode";
$query = query('SELECT * FROM purchase_order ORDER BY kode DESC LIMIT 1');
if (!isset($query[0]['kode'])) {
    $id = 'PO-001';
} else {
    $id = tambahId(strval($query[0]['kode']), 'PO');
}
$data = query("SELECT * FROM inventory");
?>
<script>
    var i = 1;
    var active = 'header_po';
    var active_2 = 'header_purchase_cetak';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Lampiran Label Barcode
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
                <h1 class="box-title text-bold"><?= $id ?></h1>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">

                <div>
                    <div class="col-xs-2">
                        <select name="barcode" id="barcode" class="form-control">
                            <?php
                            foreach ($data as $val) : ?>
                                <option value="<?= $val['barcode'] ?>"><?= $val['barcode'] ?></option>
                            <?php
                            endforeach; ?>
                        </select>
                    </div>
                    <div class="col-xs-2">
                        <input type="number" id="quantity" class="form-control" placeholder="Qty">
                    </div>
                    <div class="col-xs-2">
                        <input type="number" id="harga_jual" class="form-control" placeholder="Harga Jual">
                    </div>
                    <div class="col-xs-5">
                        <input type="text" id="keterangan" class="form-control" placeholder="Keterangan">
                    </div>
                    <div class="col-xs-1">
                        <i id="cetak_barcode_input" class="fa fa-plus fa-2x" style="padding-top: 5px; cursor:pointer"></i>
                    </div>
                </div>

                <div class="data-table" style="padding-top: 60px;">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Barcode</th>
                                <th>Qty</th>
                                <th>Sat</th>
                                <th>Harga Jual</th>
                                <th>Keterangan</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="table">
                        </tbody>
                    </table>
                </div>

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