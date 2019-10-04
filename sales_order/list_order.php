<script>
    var active = 'header_sales';
    var active_2 = 'header_sales_list'
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content">
        <div class="box box-primary">
            <div class="">
                <div class="box-header with-border">
                    <h2 class="box-title">LIST ORDER KE GUDANG</h2>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="" class="col-sm-2 ">Tanggal</label>
                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="date" name="" class="form-control">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="" class=" col-sm-2">Customer : </label>
                                <div class="col-sm-3">
                                    <select name="" class="form-control" id="">
                                        <option value="">Costumer 1</option>
                                        <option value="">Costumer 2</option>
                                        <option value="">Costumer 3</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" class="btn btn-info">Search</button>
                                </div>
                            </div>
                            <div class="form-group pad">
                                <button type="submit" class="btn btn-primary">Buat order baru</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>

        <div class="box box-primary">
                        <div class="box-body">
                            <div class="data-table">
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                    <thead class="thead-dark">
                                            <tr>
                                                <th>No </th>
                                                <th>Tanggal</th>
                                                <th>No Order</th>
                                                <th>No SO</th>
                                                <th>Kode Customer</th>
                                                <th>Qty</th>
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
                                                <td>
                                                    <a href="index.php?halaman=data" style="color: blue"><span class="glyphicon glyphicon-edit"></span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <a href="index.php?halaman=data" style="color: blue"><span class="glyphicon glyphicon-edit"></span></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <a href="index.php?halaman=data" style="color: blue"><span class="glyphicon glyphicon-edit"></span></a>
                                                </td>
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