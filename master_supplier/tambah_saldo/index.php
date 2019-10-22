    <?php
    include '../../env.php';

    ?>

    <script>
        var active = 'header_supplier';
        var active_2 = 'header_supplier_tambah_saldo';
    </script>

    <?php $title = "Tambah Saldo Supplier";
    include('../../templates/header.php') ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content">
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Tambah Saldo Supplier</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                        <i class="fa fa-minus"></i></button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-8">
                            <form action="" class="form-horizontal">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="" class="col-sm-3">Kode Supplier</label>
                                        <div class="col-sm-7">
                                            <select name="" id="" class="form-control">
                                                <option value="">kode supplier</option>
                                                <option value="">kode supplier</option>
                                                <option value="">kode supplier</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3">Saldo</label>
                                        <div class="col-sm-7">
                                            <input type="number" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="pull-right">
                                            <button class="btn btn-info">Simpan</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- /.content-wrapper -->

    <?php include('../../templates/footer.php') ?>