<script>
    var active = 'header_picking';
    var active_2 = 'header_picking_list';
</script>
<?php $title = "List Picking Gudang"; ?>
<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content">
        <div class="box box-info">
            <div class="">
                <div class="box-header with-border">
                    <h3 class="box-title">LIST PICKING GUDANG</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label class="col-sm-1 col-xs-3">Tanggal</label>
                                <div class="col-sm-3 col-xs-3">
                                    <div class="input-group">
                                        <input type="date" required id="formtanggal" name="tanggal" class="form-control">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 col-xs-3">Status</label>
                                <div class="col-sm-3 col-xs-6">
                                    <select name="status" id="status" class="form-control">
                                        <option value="0">-- Pilih Status -- </option>
                                    </select>
                                </div>
                                <div class="col-sm-1 col-xs-1">
                                    <button type="" class="btn btn-primary">Search</button>
                                </div>
                            </div>
                        </div>
                        <button type="" class="btn btn-info">Picking</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="box box-info">
            <div class="box-body">
                <div>
                    <div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead class="thead-dark">
                                    <tr>
                                        <th>No </th>
                                        <th>No Pack</th>
                                        <th>No Order</th>
                                        <th>Kode Cust</th>
                                        <th>Qty Order</th>
                                        <th>Qty Pack</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <a href="index.php?halaman=data" style="color: blue"><span class="fa fa-edit fa-lg"></span></a>&nbsp&nbsp&nbsp
                                            <a href="" style="color: black"><span class="fa fa-print fa-lg"></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <a href="index.php?halaman=data" style="color: blue"><span class="fa fa-edit fa-lg"></span></a>&nbsp&nbsp&nbsp
                                            <a href="" style="color: black"><span class="fa fa-print fa-lg"></span></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <a href="index.php?halaman=data" style="color: blue"><span class="fa fa-edit fa-lg"></span></a>&nbsp&nbsp&nbsp
                                            <a href="" style="color: black"><span class="fa fa-print fa-lg"></span></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section> <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>