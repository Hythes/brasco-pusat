<!DOCTYPE html>
<html lang="en">

<head>

    <base href="http://localhost/brasco/">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cetak Picking</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">

    <style>
        @page {
            size: landscape;
            margin: 0mm;
        }

        .pt-5 {
            padding-top: 20px;
        }
    </style>

</head>

<body onload="window.print();window.close();">

    <h2 class="text-info text-center">LIST PICKING BARANG</h2>

    <div class="pt-5">
        <div class="col-xs-2">
            <div class="pull-left">
                <p>Kode Customer </p>
                <p>Customer</p>
                <p>No Order</p>
            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-left">
                <p>Cust-001 </p>
                <p>Brasco-Cabang</p>
                <p>Odr-001</p>
            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right">
                <p>Nomor Pick </p>
                <p>Tanggal Pick</p>
            </div>
        </div>
        <div class="col-xs-2">
            <div class="pull-right">
                <p>00001 </p>
                <p>dd/mm/yyyy</p>
            </div>
        </div>
    </div>

    <div class="data-table">
        <table class="table table-bordered table-striped text-center">
            <thead style="background: #31708F; color: #fff;">
                <tr>
                    <th>No</th>
                    <th>Barcode</th>
                    <th>Nama Item</th>
                    <th>Satuan</th>
                    <th>Qty Order</th>
                    <th>Qty Pick</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>1111111111</td>
                    <td>Jaket Batik</td>
                    <td>pcs</td>
                    <td>5</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>0011111111</td>
                    <td>Celana Pendek Anak</td>
                    <td>pcs</td>
                    <td>15</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>0011111111</td>
                    <td>Celana Pendek Anak</td>
                    <td>pcs</td>
                    <td>15</td>
                    <td></td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td></td>
                    <td>Total QTY</td>
                    <td></td>
                    <td></td>
                    <td>35</td>
                    <td></td>
                </tr>
            </tfoot>
        </table>
    </div>

    <div class="col-xs-6 text-center">
        <p>Prepare By</p>
        <br>
        <br>
        <br>
        <br>
        <br>
        <p>(........................)</p>
    </div>
    <div class="col-xs-6 text-center">
        <p>Diperiksa Oleh</p>
        <br>
        <br>
        <br>
        <br>
        <br>
        <p>(........................)</p>
    </div>
</body>

</html>