<script>
    var active = 'header_sales';
    var active_2 = 'header_sales_detail';
</script>

<?php include('../templates/header.php') ?>

<div class="content-wrapper">
    <section class="content">
    <div class="box">
        <div class="box-header">
            <h3>DETAIL SALES ORDER</h3>

        </div>
        <div class="box-body">
            <form>
                <!-- 1 -->
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Nomor SO</label>

                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="" name="" class="form-control">

                        </div>
                    </div>
                </div>
                <!-- 2 -->
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Tanggal SO</label>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="" name="" class="form-control">

                        </div>
                    </div>
                </div>
                <!-- 3 -->
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Kode Customer</label>

                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="" name="" class="form-control">

                        </div>
                    </div>
                </div>
                <!-- 4 -->
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Nama Customer</label>

                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <input type="" name="" class="form-control">

                        </div>
                    </div>
                </div>
                <!-- 5 -->
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Alamat Customer</label>

                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <input type="" name="" class="form-control">

                        </div>
                    </div>
                </div>
                <div style="margin-top: 5px">

                    <table class="table table-bordered ">
                        <thead align="center">
                            <tr>
                                <th>
                                    <center>No</center>
                                </th>
                                <th>
                                    <center>Barcode</center>
                                </th>
                                <th>
                                    <center>Nama Item</center>
                                </th>
                                <th>
                                    <center>QTY</center>
                                </th>
                                <th>
                                    <center>Satuan</center>
                                </th>
                                <th>
                                    <center>Harga Jual Satuan</center>
                                </th>
                                <th>
                                    <center>Jumlah</center>
                                </th>
                            </tr>
                        </thead>
                        <tbody align="center">
                            <tr>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <input type="" name="" class="form-control input-lg " placeholder="KETERANGAN">

                        </div>
                    </div>
                    <div class="col-md-6">

                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <button class="btn btn-light">Close</button>
                            <button class="btn btn-primary">Edit</button>

                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
    </section>
</div>

<?php include('../templates/footer.php') ?>