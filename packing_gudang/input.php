<script>
    var active = 'header_packing';
    var active_2 = 'header_packing_gudang';
</script>

<?php $title="Packing Gudang" ?>
<?php include('../templates/header.php') ?>
<div class="content-wrapper">

    <!-- M ain content -->
    <section class="content">
        <!-- Default box -->
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Packing Gudang</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="box-body">
                        <form method class="form-horizontal">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="col-xs-3">No Packing</label>
                                    <div class="col-xs-9">
                                        <input type="text" name="" class="form-control" placeholder="Pack-001">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Tanggal</label>
                                    <div class="col-xs-9">
                                        <div class="input-group">
                                            <input type="date" name="tanggal" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-xs-3">Pilih Customer</label>
                                    <div class="col-xs-9">
                                        <select name="" id="" class="form-control">
                                            <option value="">- Pilih Customer -</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="" class="btn btn-info">Tambah Item</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="box-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped text-center">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Barcode</th>
                                    <th>Nama Item</th>
                                    <th>Jml</th>
                                    <th>Qty Pack</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>111111111</td>
                                    <td>Jaket Batik</td>
                                    <td>15</td>
                                    <td><input type="text" class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="pull-right">
                        <div class="form-group">
                            <label class="col-xs-2">Total Qty</label>
                            <div class="col-xs-5">
                                <input type="text" class="form-control">
                            </div>
                            <div class="col-xs-5">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pull-right">
                        <button class="btn btn-danger">Reset</button>
                        <button class="btn btn-info">Simpan</button>
                    </div>
            </div>
        </div>
    </section>
</div>

<?php include('../templates/footer.php') ?>