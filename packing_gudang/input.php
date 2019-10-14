<script>
    var active = 'header_packing';
    var active_2 = 'header_packing_gudang';
</script>

<?php include('../templates/header.php') ?>
<div class="content-wrapper">

    <!-- M ain content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header">
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="container">
                    <div class="row" style="width: 1050px">
                        <div class="panel panel-default">
                            <div class="panel-heading" style="text-align: center;">
                                <h2>PACKING GUDANG</h2>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="paking">No Packing</label>
                                        </div>
                                        <div class="form-group">
                                            <label for="tgl">Tanggal</label>
                                        </div>
                                        <div class="form-group">
                                            <label for="pilih">Pilih Customer</label>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <input type="text" name="paking" id="paking" placeholder="Pick-001">
                                        </div>
                                        <div class="form-group">
                                            <input type="date" name="tgl" id="tgl">
                                            <span class="glyphicon glyphicon-calendar" style="font-size: 20px"></span>
                                        </div>
                                        <div class="form-group">
                                            <select>
                                                <option> - Pilih Customer - </option>
                                                <option>x</option>
                                                <option>x</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="form-group">
                                            <button class="btn btn-primary">Tambah Item</button>
                                        </div>
                                        <div class="table-responsive" style="margin-top: 20px; width: 1000px">
                                            <table class="table table-bordered table-striped">
                                                <thead class="thead-dark" align="center">
                                                    <tr style="text-align: center;">
                                                        <th>No</th>
                                                        <th>Barcode</th>
                                                        <th>Nama Item</th>
                                                        <th>Jml</th>
                                                        <th>Qty Pick</th>
                                                    </tr>
                                                </thead>
                                                <tbody align="center">
                                                    <tr>
                                                        <td>x</td>
                                                        <td>x</td>
                                                        <td>x</td>
                                                        <td>x</td>
                                                        <td>x</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group" style="float: right;">
                                            <label>
                                                <h4>Total Qty</h4>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group" style="padding-left: 30px">
                                            <input type="number" name="total" style="width: 100px">
                                            <input type="number" name="qty" style="width: 100px">
                                        </div>
                                        <div class="form-group" style="padding-left: 50px">
                                            <button>Close</button>
                                            <button class="btn btn-danger">Reset</button>
                                            <button class="btn btn-primary">Simpan</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php include('../templates/footer.php') ?>