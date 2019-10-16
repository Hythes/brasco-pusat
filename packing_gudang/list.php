<script>
    var active = 'header_packing';
    var active_2 = 'header_packing_list';
</script>
<?php $title = "List Picking Gudang" ?>
<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content">
        <div class="box box-info">
            <div class="">
                <div class="box-header with-border">
                    <h3 class="box-title">LIST PACKING GUDANG</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-1">Tanggal</label>
                            <div class="col-sm-4">
                                <div class="input-group">
                                    <input type="date" name="tanggal" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-1">
                                <button type="" class="btn btn-info">Search</button>
                            </div>
                        </div>
                        <button class="btn btn-info">Packing</button>
                    </form>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>No Pack</th>
                                    <th>Kode Cust</th>
                                    <th>Nama Barang</th>
                                    <th>Qty Pack</th>
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
                                    <td><a href="#"><i class="fa fa-edit fa-lg text-blue"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

    </section> <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>