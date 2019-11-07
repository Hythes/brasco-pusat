<script>
    var active = 'header_supplier';
    var active_2 = 'header_supplier_hutang';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
        <h1>
            List Hutang
            <small>it all starts here</small>
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
            <div class="box-header with-border">
                <h3 class="box-title">LIST HUTANG</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="">
                    <form style="margin-top: 10px;">
                        <!-- <div class="form-group">
                            <input type="text" name="" class="" placeholder="KODE SUPLIER..." style="width: 20%;">
                            <i class="fa fa-fw fa-search"></i>
                            <label style="padding-left: 10px; padding-right: 10px;">s/d</label>
                            <input type="text" name="" placeholder="KODE SUPLIER..." style="width: 20%;">
                            <i class="fa fa-fw fa-search"></i>
                            <button class="btn btn-default" style="margin-left: 20px;">Search</button>
                        </div> -->
                        <div class="box-body">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="KODE SUPPLIER...">
                                </div>
                            </div>
                            <div class="col-sm-1">
                                <div class="form-group"><i class="fa fa-search fa-2x"></i></div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="KODE SUPPLIER...">
                                </div>
                            </div>
                            <div class="col-sm-1">
                                <div class="form-group"><i class="fa fa-search fa-2x"></i></div>
                            </div>
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <button class="btn btn-info">Search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- form end -->
                </div>
                <!-- table -->
                <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode Suplier</th>
                            <th>Nama Suplier</th>
                            <th>Saldo Awal</th>
                            <th>Saldo Jalan</th>
                            <th>Jumlah Beli</th>
                            <th>JML beli Tahun Lalu</th>
                            <th>JML beli 2 Tahun Lalu</th>
                            <th>JML beli 3 Tahun Lalu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Sup-1234</td>
                            <td>Supplier01</td>
                            <td>Rp. 12.000.000</td>
                            <td>Rp. 10.000.000</td>
                            <td>Rp. 30.000.000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Sup-1234</td>
                            <td>Supplier01</td>
                            <td>Rp. 12.000.000</td>
                            <td>Rp. 10.000.000</td>
                            <td>Rp. 30.000.000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
                <!-- <div class="box-body pad">
                    <div class="pull-left">
                        <a href="#" class="btn btn-default">Copy</a>
                        <a href="#" class="btn btn-default">Print</a>
                        <a href="#" class="btn btn-default">CSV</a>
                        <a href="#" class="btn btn-default">PDF</a>
                        <a href="#" class="btn btn-default">Excel</a>
                    </div>
                    <div class="pull-right">
                        <a href="#" class="btn btn-default">Close</a>
                    </div>
                </div> -->
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