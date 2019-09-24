<?php
$title = 'Purchase Order';
?>
<script>
    var dataSimpan = {
        'buat_po': false,
        'i': 1,
        'satuan': '',
        'total': 0
    };
    var active = 'header_po';
    var active_2 = 'header_purchase_order';
    var simpanArray = [];
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
        <h1>
            Purchase Order
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
            <li class="active">Blank page</li>
        </ol>
    </section> -->

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-body">
                <h3 class="header text-center">PURCHASE ORDER <span><button id="buat_po" class="btn btn-primary pull-right">Create PO</button></span></h3>
                <!-- form -->
                <div class="form-body" style="margin-top: 20px;">
                    <form class="" action="" method="POST">
                        <!-- div class md-6 -->
                        <div class="row">
                            <div class="col-md-6" style="margin-top: 39px;">
                                <div class="form-group  textbox">
                                    <input type="text" name="kode" disabled id="kode" class="form-control" placeholder="KODE PO">
                                </div>
                                <div class="form-group textbox">
                                    <input type="date" name="tanggal" class="form-control" placeholder="TANGGAL PO">
                                </div>
                                <div class="kode-nama">
                                    <div class="row">
                                        <div class="textbox col-xs-5">
                                            <input type="text" name="kode_supplier" id="kode_supplier" class="form-control" placeholder="KODE SUPPLIER">
                                        </div>
                                        <div class="textbox col-xs-6">
                                            <input type="text" disabled name="nama_supplier" id="nama_supplier" class="form-control" placeholder="NAMA SUPPLIER">
                                        </div>
                                        <div class="col-xs-1">
                                            <i id="cari_supplier_po" style="cursor:pointer" class="fa fa-search fa-2x"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="textbox form-group" style="margin-top: 15px;">
                                    <textarea class="form-control" id="alamat_supplier" disabled rows="3" name="alamat_supplier" placeholder="ALAMAT"></textarea>
                                </div>
                            </div>
                            <!-- div class md-6 -->
                            <div class="col-md-6">
                                <h4 class="mr-5">DIKIRIM KE</h4>
                                <div class="form-group textbox">
                                    <input type="text" name="nama" id="nama" class="form-control" placeholder="NAMA">
                                </div>
                                <div class="textbox form-group" style="margin-top: 15px;">
                                    <textarea class="form-control" rows="3" id="alamat" name="alamat" placeholder="ALAMAT"></textarea>
                                </div>
                                <div class="kota-kode">
                                    <div class="row">
                                        <div class="textbox col-xs-8">
                                            <input type="text" name="kota" id="kota" class="form-control" placeholder="KOTA">
                                        </div>
                                        <div class="textbox col-xs-4">
                                            <input type="text" name="kodepos" id="kodepos" class="form-control" placeholder="KODE POS">
                                        </div>
                                    </div>
                                </div>
                                <div class="nomer" style="margin-top: 15px;">
                                    <div class="row">
                                        <div class="textbox col-xs-6">
                                            <input type="text" name="telepon" id="telepon" class="form-control" placeholder="NO TELEPON">
                                        </div>
                                        <div class="textbox col-xs-6">
                                            <input type="text" name="handphone" id="handphone" class="form-control" placeholder="NO HANDPHONE">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>
                </div>
                <hr>
                <!-- /form end -->

                <div class="form bawah">
                    <form>
                        <div class="row">
                            <div class="col-xs-2">
                                <input type="number" name="barcode" id="barcode_po" class="form-control" placeholder="BARCODE">
                            </div>
                            <div class="col-xs-2">
                                <input type="number" name="kode_item_supplier" id="kode_item_supplier" class="form-control" placeholder="KODE ITEM SUPPLI">
                            </div>
                            <div class="col-xs-3">
                                <input type="number" disabled class="form-control" name="nama_item" id="nama_item" placeholder="NAMA ITEM">
                            </div>
                            <div class="col-xs-2">
                                <input type="number" name="quantity" id="quantity" class="form-control" placeholder="QTY ORDER">
                            </div>
                            <div class="col-xs-2">
                                <input type="number" name="harga" id="harga" class="form-control" placeholder="HARGA SATUAN">
                            </div>
                            <div class="col-xs-1">
                                <i class="fa fa-plus fa-2x" id="tambah_data_po" style="margin-top: 5px; cursor:pointer"></i>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- data table -->
                <div class="table-data">
                    <table id="" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Barcode</th>
                                <th>Kode Item Supplier</th>
                                <th>Nama Item</th>
                                <th>QTY order</th>
                                <th>Sat</th>
                                <th>Harga Satuan</th>
                                <th>Jumlah</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="table_po">

                    </table>
                </div>
                <!-- /data table -->

                <div class="form-no2">
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="" class="form-control" placeholder="KETERANGAN" style="width: 70%;">
                                </div>
                                <div class="form-group">
                                    <input type="submit" name="" class="btn btn-default" value="Label Barcode">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">DPP</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: 50px;">
                                    <label class="col-sm-4 control-label">Tipe PPN</label>
                                    <div class="col-sm-4 radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                            T
                                        </label>
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                            I
                                        </label>
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                                            E
                                        </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <input type="text" name="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group" style="margin-top: 100px;">
                                    <label class="col-sm-4 control-label">Total</label>
                                    <div class="col-sm-8">
                                        <input type="text" id="total" name="total_harga" disabled class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- button -->
                        <div class="form-group tombol pull-right" style="margin-top: 20px;">
                            <input type="submit" name="submit" class="btn btn-primary" value="Save">
                        </div>
                        <!-- /button -->
                    </form>
                </div>

            </div>
            <!-- /.box-body -->
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>