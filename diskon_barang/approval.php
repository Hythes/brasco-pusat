<?php require '../env.php';


?>
<?php $title = "Approval Diskon Barang" ?>
<?php include('../templates/header.php') ?>

<div class="content-wrapper">
    <section class="content">
        <div class="box box-info">
            <div class="box-body">
                <h3 class="text-center">APPROVAL DISKON REJECT</h3>
                <div class="row" style="margin-top: 20px;">
                    <form action="" method="POST" class="form-horizontal">
                        <div class="box-body">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Tanggal PO</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="date" name="tanggal" id="formtanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="date" name="tanggal" id="formtanggal" class="form-control">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label for="" class="col-sm-3 control-label">Status</label>
                                    <div class="col-sm-9">
                                        <select name="" class="form-control">
                                            <option value="">Semua</option>
                                            <option value="">pilih 1</option>
                                            <option value="">pilih 2</option>
                                            <option value="">pilih 3</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-info">Search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="box box-info">
            <div class="box-body">
                <form action="" method="POST">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <th>No</th>
                                <th>Kode Transaksi</th>
                                <th>Tanggal Purchase Order</th>
                                <th>Tanggal Approve</th>
                                <th>Status</th>
                                <th>Aksi</th>
                                <th>Approval</th>
                                <th>Keterangan</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>123</td>
                                    <td>dd/mm/yyyy</td>
                                    <td>dd/mm/yyyy</td>
                                    <td>status</td>
                                    <td><a href="" class="btn btn-info">Detail</a></td>
                                    <td><select name="" class="form-control" id="">
                                            <option value="">Approve1</option>
                                            <option value="">Approve2</option>
                                            <option value="">Approve3</option>
                                        </select></td>
                                    <td><input type="text" class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>


<script>
    let active = "header_diskon";
    let active_2 = "header_diskon_approval";
</script>
<?php include('../templates/footer.php') ?>