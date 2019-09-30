<?php
require '../env.php';

if (isset($_POST['submit'])) {
    extract($_POST);
    $sql = "UPDATE purchase_order SET kode = '$kode',tanggal = '$tanggal',kode_supplier ='$kode_supplier',nama_supplier = '$nama_supplier',alamat_supplier = '$alamat_supplier',nama = '$nama',alamat = '$alamat',kota = '$kota',kodepos = '$kodepos',telepon = '$telepon',handphone = '$handphone',dpp ='$dpp',tipe_ppn = '$tipe_ppn',tipe_ppn_input = '$tipe_ppn_teks',total_harga = '$total_harga'  WHERE kode = '$kode'; ";
    $sql .= "DELETE FROM purchase_order_item WHERE kode_po = '$kode';";
    $data_po = json_decode($data_po);
    foreach ($data_po as $data) {
        $data = (array) $data;
        extract($data);
        $sql .= "INSERT INTO purchase_order_item(kode_po,barcode_inventory,kode_item_supplier,nama_inventory,quantity,harga_satuan) VALUES('$kode','$barcode','$kode_item_supplier','$nama_item','$quantity','$harga'); ";
    }
    $query = mysqli_multi_query($conn, $sql);
    header('Location : data_purchase_order.php');
}
$kode = $_GET['kode'];
$query = "SELECT * FROM purchase_order WHERE kode ='$kode'";
$var = query($query);
$title = 'Edit Purchase Order';
$var = $var[0];
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
                <input type="hidden" id="kode" value="<?= $_GET['kode'] ?>">
                <div class="form-body" style="margin-top: 20px;">
                    <form action="" method="POST">
                        <!-- div class md-6 -->
                        <div class="row">
                            <div class="col-md-6" style="margin-top: 39px;">
                                <div class="form-group ">
                                    <input type="text" value="<?= $var['kode'] ?>" name="kode" readonly id="kode" class="form-control" placeholder="KODE PO">
                                </div>
                                <div class="form-group textbox">
                                    <input type="date" name="tanggal" value="<?= $var['tanggal'] ?>" class="form-control" placeholder="TANGGAL PO">
                                </div>
                                <div class="kode-nama">
                                    <div class="row">
                                        <div class="textbox col-xs-5">
                                            <input type="text" value="<?= $var['kode_supplier'] ?>" name="kode_supplier" id="kode_supplier" class="form-control" placeholder="KODE SUPPLIER">
                                        </div>
                                        <div class="textbox col-xs-6">
                                            <input type="text" readonly name="nama_supplier" value="<?= $var['nama_supplier'] ?>" id="nama_supplier" class="form-control" placeholder="NAMA SUPPLIER">
                                        </div>
                                        <div class="col-xs-1">
                                            <i id="cari_supplier_po" style="cursor:pointer" class="fa fa-search fa-2x"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="textbox form-group" style="margin-top: 15px;">
                                    <textarea class="form-control" id="alamat_supplier" readonly rows="3" name="alamat_supplier" placeholder="ALAMAT"><?= $var['alamat_supplier'] ?></textarea>
                                </div>
                            </div>
                            <!-- div class md-6 -->
                            <div class="col-md-6">
                                <h4 class="mr-5">DIKIRIM KE</h4>
                                <div class="form-group textbox">
                                    <input type="text" name="nama" id="nama" class="form-control" placeholder="NAMA" value="<?= $var['nama'] ?>">
                                </div>
                                <div class="textbox form-group" style="margin-top: 15px;">
                                    <textarea class="form-control" rows="3" id="alamat" name="alamat" placeholder="ALAMAT"><?= $var['alamat'] ?></textarea>
                                </div>
                                <div class="kota-kode">
                                    <div class="row">
                                        <div class="textbox col-xs-8">
                                            <input type="text" name="kota" id="kota" class="form-control" placeholder="KOTA" value="<?= $var['kota'] ?>">
                                        </div>
                                        <div class="textbox col-xs-4">
                                            <input type="text" name="kodepos" id="kodepos" class="form-control" placeholder="KODE POS" value="<?= $var['kodepos'] ?>">
                                        </div>
                                    </div>
                                </div>
                                <div class="nomer" style="margin-top: 15px;">
                                    <div class="row">
                                        <div class="textbox col-xs-6">
                                            <input type="text" name="telepon" id="telepon" class="form-control" placeholder="NO TELEPON" value="<?= $var['telepon'] ?>">
                                        </div>
                                        <div class="textbox col-xs-6">
                                            <input type="text" name="handphone" id="handphone" class="form-control" placeholder="NO HANDPHONE" value="<?= $var['handphone'] ?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                </div>
                <hr>
                <!-- /form end -->

                <div class="form bawah">
                    <div class="row">
                        <div class="col-xs-2">
                            <input type="text" name="barcode" id="barcode_po" class="form-control" placeholder="BARCODE">
                        </div>
                        <div class="col-xs-2">
                            <input type="number" name="kode_item_supplier" id="kode_item_supplier" class="form-control" placeholder="KODE ITEM SUPPLI">
                        </div>
                        <div class="col-xs-3">
                            <input type="number" readonly class="form-control" name="nama_item" id="nama_item" placeholder="NAMA ITEM">
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
                        </tbody>
                    </table>
                </div>
                <!-- /data table -->

                <div class="form-no2">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" name="keterangan" value="<?= $var['keterangan'] ?>" class="form-control" placeholder="KETERANGAN" style="width: 70%;">
                            </div>
                            <div class="form-group">
                                <a href="purchase_order/cetak_label_barcode.php" class="btn btn-primary">Label Barcode</a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">DPP</label>
                                <div class="col-sm-8">
                                    <input type="number" id="dpp" name="dpp" class="form-control" value="<?= $var['dpp'] ?>">
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 50px;">
                                <label class="col-sm-4 control-label">Tipe PPN</label>
                                <div class="col-sm-4 radio">
                                    <label>
                                        <input type="radio" name="tipe_ppn" id="tipe_ppn_t" value="T" checked>
                                        T
                                    </label>
                                    <label>
                                        <input type="radio" selected name="tipe_ppn" id="tipe_ppn_i" value="I">
                                        I
                                    </label>
                                    <label>
                                        <input type="radio" name="tipe_ppn" id="tipe_ppn_e" value="E">
                                        E
                                    </label>
                                </div>
                                <div class="col-sm-4">
                                    <input type="text" readonly id="ppn" name="tipe_ppn_teks" class="form-control" value="<?= $var['tipe_ppn_input'] ?>">
                                </div>
                            </div>
                            <div class="form-group" style="margin-top: 100px;">
                                <label class="col-sm-4 control-label">Total</label>
                                <div class="col-sm-8">
                                    <input type="text" id="total" name="total_harga" readonly class="form-control" value="<?= $var['total_harga'] ?>">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- button -->
                    <div class="form-group tombol pull-right" style="margin-top: 20px;">
                        <input type="hidden" name="data_po" id="data_po">
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
<script type="text/javascript" src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
    var dataSimpan = {
        'buat_po': false,
        'i': 1,
        'satuan': '',
        'total': 0
    };
    var simpanArray = [];

    $(document).ready(function() {
        var kodeku = $('#kode').val();
        $.post('purchase_order/ajax.php', {
            request: 'data_po',
            kode: kodeku,
        }, function(data) {
            data = JSON.parse(data);
            for (var x in data) {
                $('#table_po').append(
                    '<tr id="tr_po_' + dataSimpan.i + '">' +
                    '<td>' + dataSimpan.i + '</td>' +
                    '<td>' + data[x].barcode_inventory + '</td>' +
                    '<td>' + data[x].kode_item_supplier + '</td>' +
                    '<td>' + data[x].nama_inventory + '</td>' +
                    '<td>' + data[x].quantity + '</td>' +
                    '<td>' + data[x].satuan + '</td>' +
                    '<td>' + data[x].harga_satuan + '</td>' +
                    '<td>' + parseInt(data[x].quantity) * parseInt(data[x].harga_satuan) + '</td>' +
                    '<td>' + '<button type="button" onclick="po_hapus(' + dataSimpan.i + ')" class="btn btn-danger"> Hapus</button>' + '</td>' +
                    '</tr>'
                );
                simpanArray.push({
                    'barcode': data[x].barcode_inventory,
                    'kode_item_supplier': data[x].kode_item_supplier,
                    'nama_item': data[x].nama_inventory,
                    'quantity': data[x].quantity,
                    'harga': data[x].harga_satuan,
                    'satuan': data[x].satuan
                })
                dataSimpan.i++;
                dataSimpan.total += parseInt(data[x].quantity) * parseInt(data[x].harga_satuan);
                $('#data_po').val(JSON.stringify(simpanArray));
            }

        })

    })
</script>
<?php include('../templates/footer.php') ?>