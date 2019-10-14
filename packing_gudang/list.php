<script>
    var active = 'header_packing';
    var active_2 = 'header_packing_list';
</script>

<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content">
        <div class="box-body">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>LIST PACKING GUDANG</h1>
                </div>
                <div class="panel-body">
                    <form>
                        <div class="form-group row" style="padding-left: 10px">
                            <div class="col-sm-10">
                                Tanggal:<input type="text" name="" style="margin-left: 10px; width: 100px" placeholder="dd/mm/yyyy">
                                <button class="btn btn-primary" style="width: 80px; height: 29px; margin: 10px">Search</button>
                            </div>
                        </div>
                        <button class="btn btn-primary" style="width: 80px; height: 30px; margin: 10px">Packing</button>
                        <!-- 1 -->
                    </form>
                    <div class="container">
                        <div class="row" style="width: 950px; padding: 10px">
                            <div style="border-top: solid; width: 100%; margin-top: 5px">
                                <div class="table-responsive" style="margin-top: 20px; width: 950px">
                                    <table class="table table-bordered table-striped">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>No </th>
                                                <th>No Pack</th>
                                                <th>Kode Cust</th>
                                                <th>Nama Customer</th>
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
                </div>
            </div>
        </div>

    </section> <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>