<?php
require '../env.php';

$profile = query("SELECT * FROM profil")[0];
$invoice = query("SELECT * FROM sales_invoice WHERE nomor_invoice = '$_GET[kode]'")[0];

?>
<!DOCTYPE html>
<html>

<head>
	<title>Kwitansi</title>

	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<link rel="stylesheet" href="../assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="../assets/dist/css/AdminLTE.min.css">
	<style type="text/css">
		.pt-10 {
			padding-top: 50px;
		}

		.pr-5 {
			padding-right: 30px;
			padding-left: 30px;
		}
	</style>
</head>

<body>

	<div class="content pt-5">
		<div class="row">
			<div class="col-xs-4 text-center">
				<img src="../img/icon.png" width="30%">
			</div>
			<div class="col-xs-4">
				<h4>PT. Nocole Pangan Indonesia</h4>
				<p>Jl. Raya Hanjawar No.1 Cipanas Cianjur<br>
					ph. +62 37917371<br>
					e: n.chocolaterie@gmail.com</p>
			</div>
			<div class="col-xs-4">
				<h2 class="text-primary">Kwitansi</h2>
				<p>No Kwitansi : KF12345678</p>
			</div>
		</div>

		<div class="row pt-10">
			<div class=" ">
				<div class="col-xs-3">
					<p>Sudah Terima Dari</p>
					<p>Banyaknya Uang</p>
					<p>Untuk Melunasi Faktur</p>
				</div>
				<div class="col-xs-9">
					<p>Contract Person (PT.Customer)</p>
					<p># Satu juta lima ratus Sembilan puluh delapan ribu tiga ratus lima puluh # </p>
					<p>IF12345678</p>
				</div>
				<div class="col-xs-4 pt-5 ">
					<div class="">
						<div class="text-center">
							<div class="form-group">
								<label class="col-xs-3 control-label">Rp. </label>
								<div class="col-xs-8">
									<input type="text" name="" class="form-control" value="1.598.350">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-4" style="padding-top: 25px;">
					<div class="pull-right">
						<p>Jakarta, dd-mmmm-yyyy</p>
					</div>
				</div>
			</div>
		</div>
		<div class="" style="padding-top: 20px;">
			<div class="col-xs-4" style="border: solid 1px #000;">
				<h4>** PERHATIAN **</h4>
				<p>Pembayaran di lakukan dengan cheque/Giro/Wesel dsb, <br>
					belum dianggap lunas sebelum dicairkan</p>
			</div>
		</div>
	</div>

</body>

</html>