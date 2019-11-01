<script>
    var active = 'header_kwitansi';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cetak Kwitansi
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">MENU CETAK KWITANSI</h3>

                    </div>
                    <div class="box-body">
                        <div class="container">
                            <div class="row" style="width: 1060px">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4>Cetak Kwitansi</h4>
                                    </div>
                                    <div class="panel-body">
                                        <form method="post" style="box-sizing: border-box; padding: 50px;">
                                            <!-- row 1 -->
                                            <div class="row">
                                                <!-- col 1 -->
                                                <div class="col-md-7 mb-1">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Nomor Invoice : </label>
                                                        <div class="col-sm-7">
                                                            <input class="form-control" type="text" name="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- col 2 -->
                                                <div class="col-md-5 mb-1">
                                                    <div class="form-group row">
                                                        <div class="col-sm-7">
                                                            <button class="btn btn-white">Cetak</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- 2 -->
                                            <div class="row">
                                                <div class="col-md-7 mb-1">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Nomor Kwitansi : </label>
                                                        <div class="col-sm-7">
                                                            <input class="form-control" type="text" name="">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </form>




                                    </div>
                                </div>
                            </div>
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