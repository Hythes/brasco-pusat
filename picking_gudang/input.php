<?php
require '../env.php';
$title = "Input Picking Gudang";
$query = query('SELECT * FROM picking ORDER BY nomor_picking DESC LIMIT 1');
$nomor_order = '';
$kode_customer = '';
$item = array();
if (!isset($query[0]['nomor_picking'])) {
    $nomor_pick = 'Pick-001';
} else {
    $nomor_pick = tambahId(strval($query[0]['nomor_picking']), 'Pick');
}
if (isset($_GET['nomor'])) {
    $nomor_order = $_GET['nomor'];
    $data = query("SELECT * FROM order_gudang WHERE nomor_order = '$nomor_order'")[0];
    $kode_customer = $data['kode_customer'];
    $item = array();
    $query = query("SELECT * FROM order_gudang_item WHERE nomor_order = '$nomor_order'");
    foreach ($query as $blaa) {
        $barcode = $blaa['barcode'];
        $inven = query("SELECT * FROM inventory WHERE barcode = '$barcode'")[0];
        $sat = $inven['satuan'];
        $satuan = query("SELECT * FROM satuan WHERE id = '$sat'")[0];
        $blaa['satuan'] = $satuan['satuan'];
        $blaa['nama_item'] = $inven['nama_barang'];
        array_push($item, $blaa);
    }
}
if (isset($_POST['submit'])) {
    $sql = '';
    $totalQuantity = 0;
    extract($_POST);
    for ($i2 = 1; $i2 <= $total; $i2++) {
        foreach ($item as $now) {
            $id = $_POST['id_' . $i2];
            if (intval($now['id']) == intval($id)) {
                $quantity_pick = $_POST['quantity_pick_' . $i2];
                extract($now);
                $sql .= "INSERT INTO picking_item(nomor_picking,barcode,id_order_item,quantity_picking,quantity_order) VALUES('$nomor_picking','$barcode','$id','$quantity_pick','$quantity');";
                $totalQuantity += intval($quantity_pick);
            }
        }
    }
    $sql .= "INSERT INTO picking(nomor_picking,nomor_order,kode_customer,status,total,tanggal) VALUES('$nomor_picking','$nomor_order','$kode','$status','$totalQuantity','$tanggal');";
    $query = mysqli_multi_query($conn, $sql);
    lanjutkan($query, "Dibuat!");
    $return = true;
}
?>
<?php if (isset($return)) : ?>
    <script>
        window.stop();
        window.location.href = 'input.php';
    </script>
<?php endif; ?>
<script>
    var active = 'header_picking';
    var active_2 = 'header_picking_gudang';
</script>

<?php include('../templates/header.php') ?>
<form action="" method="POST" id="picki">
    <div class="content-wrapper">

        <!-- M ain content -->
        <section class="content">
            <!-- Default box -->
            <div class="box">
                <div class="box-header">
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="container">
                        <div class="row" style="width: 1050px">
                            <div class="panel panel-default">
                                <div class="panel-heading" style="text-align: center;">
                                    <h2>PICKING GUDANG</h2>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label for="tgl">Tanggal</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="pick">No Pick</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="order">No Order</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="kode">Kode Customer</label>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="form-group" style="width: 30%;">
                                                <div class="input-group">
                                                    <input type="text" readonly value="<?= date('m/d/Y') ?>" name="tanggal" class="form-control">
                                                    <div class="input-group-addon">
                                                        <i class="fa fa-calendar"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" readonly value="<?= $nomor_pick ?>" name="nomor_picking" id="pick">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" id="nomor_order" readonly name="nomor_order" value="<?= $nomor_order ?>">
                                                <a data-toggle="modal" data-target="#modal2" style="cursor : pointer; color: #000;"><i class="fa fa-search fa-2x"></i></a>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="kode" readonly id="kode_customer" value="<?= $kode_customer ?>">
                                            </div>
                                        </div>
                                        <!-- modal -->
                                        <div class="modal fade" id="modal2">
                                            <div class="modal-dialog modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-primary">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title text-center">Pilih Order</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="table-data">
                                                            <div class="box-body">
                                                                <div class="form-group">
                                                                    <label class="col-xs-3 control-label">Tanggal</label>
                                                                    <div class="col-xs-6">
                                                                        <div class="input-group">
                                                                            <input type="date" id="cari_so_tanggal_val" class="form-control">
                                                                            <div class="input-group-addon">
                                                                                <i class="fa fa-calendar"></i>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <button type="button" id="cari_so_tanggal" class="btn btn-primary">Cek</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="box-body">
                                                                <table class="table table-bordered table-striped">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>No</th>
                                                                            <th>No Order</th>
                                                                            <th>Kode Customer</th>
                                                                            <th>Qty Order</th>
                                                                            <th>Aksi</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="cari_so_tabel">
                                                                        <?php
                                                                        $i_m1 = 1;
                                                                        foreach (query("SELECT * FROM order_gudang") as $data_so) : $so =  $data_so['nomor_order'];
                                                                            $ko = $data_so['kode_customer'];
                                                                            ?>
                                                                            <tr>
                                                                                <td><?= $i_m1 ?></td>
                                                                                <td><?= $data_so['nomor_order'];  ?></td>
                                                                                <td><?= $data_so['kode_customer'] ?></td>
                                                                                <td><?= $data_so['total'] ?></td>
                                                                                <td><a class="btn btn-primary" href="picking_gudang/input.php?nomor=<?= $so ?>">Pilih</button></td>
                                                                            </tr>
                                                                        <?php
                                                                            $i_m1++;
                                                                        endforeach;
                                                                        ?>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <div class="pull-right">
                                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /. modal done -->
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label for="status">Status</label>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <select id="select" name="status">
                                                <option value="0"> - Pilih Status - </option>
                                                <option>Selesai</option>
                                                <option>Proses</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="container">
                                        <div class="row">
                                            <div class="table-responsive" style="margin-top: 20px; width: 1000px">
                                                <table class="table table-bordered table-striped">
                                                    <thead class="thead-dark" align="center">
                                                        <tr style="text-align: center;">
                                                            <th>No</th>
                                                            <th>Barcode</th>
                                                            <th>Nama Item</th>
                                                            <th>Satuan</th>
                                                            <th>Qty Order</th>
                                                            <th>Qty Pick</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody align="center">
                                                        <?php $i = 1;
                                                        foreach ($item as $now) : ?>
                                                            <tr>
                                                                <td><?= $i ?></td>
                                                                <td><?= $now['barcode'] ?></td>
                                                                <td><?= $now['nama_item'] ?></td>
                                                                <td><?= $now['satuan'] ?></td>
                                                                <td><?= $now['quantity'] ?></td>
                                                                <td><input type="text" name="quantity_pick_<?= $i ?>"></td>
                                                                <input type="hidden" name="id_<?= $i ?>" value="<?= $now['id'] ?>">
                                                            </tr>
                                                        <?php $i++;
                                                        endforeach; ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group" style="padding-left: 50px">
                                                <input type="hidden" name="total" value="<?= --$i ?>">
                                                <button class="btn btn-danger">Reset</button>
                                                <button name="submit" type="submit" class="btn btn-primary">Simpan</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</form>
<script type="text/javascript" src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<script>
    $("#picki").submit(e => {
        var is = $('#select').children('option:selected').val();
        console.log(is)
        if (parseInt(is) == 0) {
            alert("Tolong dipilih Statusnya");
            e.preventDefault();
            return false;
        }
    })

    function cari_so(kode, customer) {
        $('#nomor_order').val(kode)
        $('#kode_customer').val(customer)
    }
    $('#cari_so_tanggal').on('click', () => {
        var d = $('#cari_so_tanggal_val').val()
        if (d == '') {
            alert('Tanggal tidak boleh kosong!');
            return;
        } else {
            $.post('sales_order/ajax.php', {
                request: 'cari_so',
                data: d
            }, res => {
                res = JSON.parse(res)
                $('#cari_so_tabel').html('');
                res.forEach((data_so, i) => {
                    $('#cari_so_tabel').append(
                        '<tr>' +
                        '<td>' + ++i + '</td>' +
                        '<td>' + data_so.nomor_so + '</td>' +
                        '<td>' + data_so.kode_customer + '</td>' +
                        '<td>' + data_so.total + '</td>' +
                        '<td>' + ' <button type = "button"class = "btn btn-primary "onclick = "cari_so(' + "'" + data_so.nomor_so + "'" + ')" data-dismiss = "modal" > Pilih </button></td >' +
                        '</tr>'
                    )
                })
            })
        }
    })
</script>

<?php include('../templates/footer.php') ?>