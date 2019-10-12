<?php
require '../env.php';
$title = 'Detail Barang';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $item = query("SELECT * FROM purchasing_item WHERE id = '$id' ")[0];
    $kode = $item['kode_pu'];
    $barcode = $item['barcode'];
    $purchasing = query("SELECT * FROM purchasing WHERE kode = '$kode' ")[0];
    $inventory = query("SELECT * FROM inventory WHERE barcode = '$barcode'")[0];
    $se = $inventory['satuan'];
    $satuan = query("SELECT * FROM satuan WHERE id = '$se'")[0]['satuan'];
} else {
    header('Location: laporan_pu.php?err=1');
}
?>
<script>
    var active = 'header_purchasing';
</script>

<?php include('../templates/header.php') ?>

<div class="content-wrapper">

    <div class="row">
        <div class="col-md-12">
            <div class="box-body">
                <div class="container">
                    <div class="row" style="width: 1100px">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4>DETAIL LIST BARANG MASUK</h4>
                            </div>


                            <div class="panel-body">
                                <form method="post" style="box-sizing: border-box; padding: 80px;">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nomor Terima Barang</label>
                                                <input type="text" class="form-control" disabled style="width: 250px" value="<?= $item['kode_pu'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Harga Beli</label>
                                                <input type="text" disabled class="form-control" style="width: 250px" value="<?= intval($item['quantity_terima']) * intval($item['harga_satuan']) ?>">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Barcode</label>
                                                <input type="text" class="form-control" style="width: 250px" value="<?= $item['barcode'] ?>" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Harga Jual 1</label>
                                                <input type="text" class="form-control" style="width: 250px" value="<?= $inventory['harga_jual1'] ?>" disabled>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nama Item</label>
                                                <input type="text" class="form-control" disabled value="<?= $inventory['nama_barang'] ?>" style="width: 250px">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Harga Jual 2</label>
                                                <input type="text" class="form-control" disabled value="<?= $inventory['harga_jual2'] ?>" name="tgl2" style="width: 250px" placeholder="Rp. 130.000">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Tanggal Terima Barang</label>
                                                <input type="date" class="form-control" name="tgl1" style="width: 200px" disabled value="<?= $purchasing['tanggal_terima'] ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Harga Jual 3</label>
                                                <input type="text" class="form-control" name="tgl2" style="width: 250px" placeholder="Rp. 140.000" disabled value="<?= $inventory['harga_jual3'] ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Tanggal Terima Barang</label>
                                                <input type="text" class="form-control" name="tgl1" style="width: 250px" value="Buang shi gak guna Kmeme">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Jumlah Terima</label>
                                                <input type="text" class="form-control" name="tgl1" style="width: 250px" placeholder="300" value="<?= $item['quantity_terima'] ?>" disabled>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Satuan</label>
                                                <input type="text" class="form-control" name="tgl1" style="width: 100px" placeholder="pcs" disabled value="<?= $satuan ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nama Penerima</label>
                                                <input type="text" class="form-control" name="tgl1" style="width: 250px" disabled value="<?= $purchasing['diterima_oleh'] ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Kode Supplier Asal</label>
                                                <input type="text" class="form-control" name="tgl1" style="width: 250px" disabled value="<?= $purchasing['kode_supplier'] ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <!--  -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('../templates/footer.php') ?>