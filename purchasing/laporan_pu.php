<script>
    var active = 'header_purchasing';
    var active_2 = 'header_purchasing_masuk';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Laporan Barang Masuk
            <small>it all starts here</small>
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
                <h3 class="box-title">Laporan Barang Masuk</h3>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="row">
                            </div>
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
            <div class="box-body">

                <div class="" style="border: 1px solid #000; background: #ddd; padding: 5px;">
                    <p>Cari Berdasar</p>
                    <div class="row">

                        <form>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label for="" class="col-sm-6">Tanggal Terima</label>
                                    <div class="col-sm-5">
                                        <div class="input-group">
                                            <input type="date" id="formtanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1 text-center">
                                <label>s/d</label>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <div class="input-group">
                                            <input type="date" id="formtanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12" style="margin-top: 10px;">
                                <div class="form-group">
                                    <label class="control-label col-sm-2">Nomor Invoice</label>
                                    <div class="col-sm-3" style="margin-left: 35px;">
                                        <input type="text" name="" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 button-cari">
                                <div class="form-group">
                                    <input type="submit" name="" class="btn btn-info pull-right" value="Cari" style="margin-right: 280px;">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="data-table" style="margin-top: 30px;">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Barcode</th>
                                <th>Nama Item</th>
                                <th>Nomor Invoice</th>
                                <th>Tgl Terima</th>
                                <th>QTY Terima</th>
                                <th>Sat</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>12345678910</td>
                                <td>Baju Berkerah</td>
                                <td>TB-00123</td>
                                <td>12-03-2019</td>
                                <td>300</td>
                                <td>pcs</td>
                                <td><button class="btn btn-default">Detail</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="button-grup">
                    <div class="button1" style="margin-top: 10px;">
                        <a href="#" class="btn btn-default">Copy</a>
                        <a href="#" class="btn btn-default">CSV</a>
                        <a href="#" class="btn btn-default">Excel</a>
                        <a href="#" class="btn btn-default">PDF</a>
                        <a href="#" class="btn btn-default">Print</a>
                        <a href="#" class="btn btn-default pull-right">Close</a>
                    </div>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->

</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>