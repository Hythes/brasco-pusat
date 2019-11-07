<script>
    var active = 'header_supplier';
    var active_2 = 'header_supplier_tempo';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
        <h1>
            Aging AP
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
                <div class="row">
                    <div class="col-sm-7">
                        <h3 class="box-title">JATUH TEMPO PEMBAYARAN</h3>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <p class="col-sm-5" for="formtanggal">Tanggal Cetak</p>
                            <div class="col-sm-7">
                                <div class="input-group">
                                    <input type="date" id="formtanggal" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- box body -->
            <div class="box-body">
                <div class="">
                    <!-- grid buat tanggal jatuh tempo -->
                    <form>
                        <div class="row">
                            <div class="col-sm-5">
                                <!-- date picker jatuh tempo pembayaran -->
                                <div class="form-group">
                                    <label class="col-sm-4 control-label-inline" for="formtanggal">Tgl Jatuh Tempo</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="date" id="formtanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.form group -->
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <!-- date picker jatuh tempo pembayaran -->
                                <div class="form-group">
                                    <label class="col-sm-1 control-label" for="formtanggal">s/d</label>
                                    <div class="col-sm-8">
                                        <div class="input-group" style="width: 40%;">
                                            <input type="date" id="formtanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary col-sm-2">Search</button>
                                    <!-- /.form group -->
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- table -->
                <table id="example2" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Invoice</th>
                            <th>Supplier</th>
                            <th>Tanggal Jatuh Tempo</th>
                            <th>Belum Jatuh tempo</th>
                            <th>1-30</th>
                            <th>31-60</th>
                            <th>61-90</th>
                            <th>>90</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Inv 32 11</td>
                            <td>Supplier01</td>
                            <td>25 April 2019</td>
                            <td>Rp. 2.000.000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Inv 32 12</td>
                            <td>Supplier02</td>
                            <td>5 Maret 2019</td>
                            <td>-</td>
                            <td>Rp. 5.000.000</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="box-body pad">
                    <div class="pull-left">
                        <a href="#" class="btn btn-default pad">Copy</a>
                        <a href="#" class="btn btn-default pad">Print</a>
                        <a href="#" class="btn btn-default pad">CSV</a>
                        <a href="#" class="btn btn-default pad">PDF</a>
                        <a href="#" class="btn btn-default pad">Excel</a>
                    </div>
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