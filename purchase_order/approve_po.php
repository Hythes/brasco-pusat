<?php
$title = "Approval Purchase Order Manager";
?>
<script>
    var active = 'header_po';
    var active_2 = 'header_purchase_approval';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Laporan Purchase Order
            <small>it all starts here</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
            <li class="active">Laporan PO</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Aproval</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <h3 class="text-center">APPROVAL PURCHASE ORDER MANAGER</h3>

                <div class="row" style="margin-top: 40px;">
                    <form method="" action="">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Tanggal PO</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <input type="date" id="formtanggal" class="form-control">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="" class="col-sm-4 control-label">Status</label>
                                <div class="col-sm-8">
                                    <div class="input-group">
                                        <select style="width: auto" class="custom-select">
                                            <option>Approve</option>
                                            <option>Belum Approve</option>
                                            <option>Batal</option>
                                            <option>Semua</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="" class="btn btn-info" value="Search">
                        </div>
                    </form>
                </div>

                <!-- table -->
                <table id="example2" class="table table-bordered table-hover">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode Transaksi</th>
                                <th>Tanggal Purchase Order</th>
                                <th>Tanggal Approve</th>
                                <th>Status</th>
                                <th>Aksi</th>
                                <th>Approval</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>PO-2341</td>
                                <td>dd/mm/yy</td>
                                <td>dd/mm/yy</td>
                                <td>approve</td>
                                <td><a href="#" class="btn btn-default">Detail</a></td>
                                <td>
                                    <div class="input-group">
                                        <select style="width: auto" class="custom-select">
                                            <option>Approve</option>
                                            <option>Belum Approve</option>
                                            <option>Batal</option>
                                            <option>Semua</option>
                                        </select>
                                    </div>
                                </td>
                                <td>Alasan tidak di approve</td>
                            </tr>
                        </tbody>
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