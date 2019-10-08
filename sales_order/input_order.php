<<<<<<< HEAD
	<script>
		var active = 'header_sales';
		var active_2 = 'header_sales_gudang';
	</script>

	<?php 
	$title = "Order Ke Gudang";
	include('../templates/header.php');
	?>

	<div class="content-wrapper">

		<section class="content">
		<div class="box">
			<div class="box-header">
				<h3>ORDER KE GUDANG</h3>
			</div>
			<div class="box-body">
				<form>
					<!-- 1 -->
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label>Tanggal :</label>
=======
<?php
require '../env.php';
$title = "Order ke Gudang";
$query = query('SELECT * FROM order_gudang ORDER BY nomor_order DESC LIMIT 1');
if (!isset($query[0]['nomor_order'])) {
	$id = 'Order-001';
} else {
	$id = tambahId(strval($query[0]['nomor_order']), 'Order');
}
if (isset($_POST['submit'])) {
	extract($_POST);
	$data_item = json_decode($data_item, true);
	$sql = "INSERT INTO order_gudang(nomor_order,tanggal,kode_customer,nomor_so,keterangan,total) VALUES('$no_order', '$tanggal','$kode_customer','$nomor_so','$keterangan','$total'); ";
	foreach (array_filter($data_item) as $data) {
		extract($data);
		$sql .= "INSERT INTO order_gudang_item(nomor_order,barcode,quantity) VALUES('$no_order','$barcode','$quantity');";
	}
	$query = mysqli_multi_query($conn, $sql);
	lanjutkan($query, "Ditambahkan");
}
?>
<script>
	var active = 'header_sales';
	var active_2 = 'header_sales_gudang';
</script>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>

<<<<<<< HEAD
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<input style="width: 80%" type="date" readonly value="<?= date('Y-m-d')?>" name="" class="form-control">

							</div>
						</div>
						<div class="col-md-3">

						</div>

						<div class="col-md-2">
							<div class="form-group">
								<label>KIRIM KE</label>

							</div>
=======
<form action="" method="POST">

	<div class="content-wrapper">

		<div class="panel panel-default">
			<div class="panel-heading">
				<h1>ORDER KE GUDANG</h1>
			</div>
			<div class="panel-body">
				<!-- 1 -->
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<label>Tanggal :</label>

						</div>

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<input style="width: 80%" type="date" name="tanggal" required class="form-control">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
						</div>
					</div>
					<!-- 2 -->
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label>No Order :</label>

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<?php
								include '../env.php';
								$q = mysqli_query($conn, "SELECT max(nomor_order) as id FROM order_gudang");
								$f = mysqli_fetch_assoc($q);
								$d = $f['id'];
								$i = tambahId($d,"Order");
								?>
								<input type="text" readonly value="<?= $i?>" name="" class="form-control">

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-3">
=======
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<input type="text" required name="no_order" value="<?= $id ?>" readonly class="form-control">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

						</div>
						<div class="col-md-3">
							<div class="form-group">
								<div style="display: inline-flex;">
									<select id="kode" class="form-control" style="margin-right: 20px">
										<option selected>---Kode Customer---</option>
										<?php
										$q = mysqli_query($conn,"SELECT * FROM customer");
										while ($f = mysqli_fetch_assoc($q)) {
											?>
											<option value="<?= $f['kode']?>"><?= $f['kode']?></option>
										<?php } ?>
									</select>
								</div>

<<<<<<< HEAD
=======
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<div style="display: inline-flex;">
								<input style="margin-right: 20px" type="text" id="kode_customer" name="kode_customer" class="form-control" placeholder="Kode Customer">
								<i id="cari_customer" style="font-size: 30px;cursor:pointer" class="fa fa-search"></i>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
							</div>
						</div>
					</div>
					<!-- 3 -->
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label>Cari SO :</label>
							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-3">
							<div class="form-group">
								<div style="display: inline-flex;width: 100%">
									<select id="sou" style="margin-right: 20px" class="form-control">
										<option selected="">---Cari Sales Order---</option>
										<?php
										$q = mysqli_query($conn,"SELECT * FROM sales_order");
										while ($f = mysqli_fetch_assoc($q)) {
										?>
										<option value="<?= $f['nomor_so']?>"><?= $f['nomor_so']?></option>
										<?php } ?>
									</select>
									<button id="soudesu" type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalay"><i class="fa fa-search"></i></button>
								</div>
=======
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<div style="display: inline-flex;width: 100%">
								<input style="margin-right: 20px" required readonly type="text" name="nomor_so" id="nomor_so" class="form-control">

								<a data-toggle="modal" data-target="#modal2" style="cursor:pointer;color:black"><i style="font-size: 30px" class="fa fa-search"></i></a>
								<!-- Modal Cari SO -->
								<div class="modal fade" id="modal2">
									<div class="modal-dialog modal-md">
										<div class="modal-content">
											<div class="modal-header bg-primary">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span></button>
												<h4 class="modal-title text-center">Pilih Sales Order</h4>
											</div>
											<div class="modal-body">
												<div class="table-data">
													<form class="form-horizontal">
														<div class="box-body">
															<div class="form-group">
																<label class="col-xs-3 control-label">Tanggal</label>
																<div class="col-xs-6">
																	<div class="input-group">
																		<input type="date" id="cari_so_tanggal_val" class="form-control">
																		<div class="input-group-addon">
																			<i class="fa fa-calendar"></i>
																		</div>
																	</div>
																</div>
																<div class="form-group">
																	<button type="button" id="cari_so_tanggal" class="btn btn-primary">Cek</button>
																</div>
															</div>
														</div>
													</form>
													<div class="box-body">
														<table class="table table-bordered table-striped">
															<thead>
																<tr>
																	<th>No</th>
																	<th>No SO</th>
																	<th>Kode Customer</th>
																	<th>Qty Order</th>
																	<th>Aksi</th>
																</tr>
															</thead>
															<tbody id="cari_so_tabel">
																<?php
																$i_m1 = 1;
																foreach (query("SELECT * FROM sales_order") as $data_so) : $so =  $data_so['nomor_so'];
																	?>
																	<tr>
																		<td><?= $i_m1 ?></td>
																		<td><?= $data_so['nomor_so'];  ?></td>
																		<td><?= $data_so['kode_customer'] ?></td>
																		<td><?= $data_so['total'] ?></td>
																		<td><button type="button" class="btn btn-primary" onclick="cari_so('<?= $so ?>')" data-dismiss="modal">Pilih</button></td>
																	</tr>
																<?php
																	$i_m1++;
																endforeach;
																?>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<div class="pull-right">
													<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /. Modal Cari SO -->
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
							</div>
						</div>
						<!-- Modal -->
						<div class="modal fade" id="modalay" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Preview Sales Order</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<form class="form-horizontal">
											<div class="form-group">
												<div class="pad">
												<input type="text" class="form-control" readonly>
												</div>
											</div>
											<div class="form-group">
												<div class="pad">
												<input type="text" class="form-control" readonly>
												</div>
											</div>
											<div class="form-group">
												<div class="pad">
												<input type="text" class="form-control" readonly>
												</div>
											</div>
											<div class="form-group">
												<div class="pad">
												<input type="text" class="form-control" readonly>
												</div>
											</div>
											<div class="form-group">
												<div class="pad">
												<input type="text" class="form-control" readonly>
												</div>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save changes</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">

<<<<<<< HEAD
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input style="margin-right: 20px" type="text" id="nama" name="" class="form-control" placeholder="Nama Customer">
							</div>
=======
					</div>
					<div class="col-md-3">

					</div>
					<div class="col-md-4">
						<div class="form-group">
							<input style="margin-right: 20px" readonly type="text" id="nama_cust" readonly class="form-control" placeholder="Nama Customer">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
						</div>
					</div>
					<!-- 4 -->
					<div class="row">
						<div class="col-md-8">

<<<<<<< HEAD
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="" name="" class="form-control input-lg" id="alamat" placeholder="Alamat">
=======
					</div>
					<div class="col-md-4">
						<div class="form-group">
							<input type="text" readonly id="alamat_cust" class="form-control input-lg" placeholder="Alamat">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
					</div>
					<!-- 5 -->
					<div class="row">
						<div class="col-md-8">

<<<<<<< HEAD
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" id="kota" name="" class="form-control " placeholder="Kota">
=======
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<input type="text" readonly id="kota_cust" class="form-control " placeholder="Kota">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
					</div>
					<!-- 6 -->
					<div class="row">
						<div class="col-md-8">

<<<<<<< HEAD
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="text" id="telp" name="" class="form-control" placeholder="No Telepon">
=======
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="text" readonly id="telepon_cust" class="form-control" placeholder="No Telepon">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-2">
							<div class="form-group">
								<input type="text" id="hp" name="" class="form-control" placeholder="No Handphone">
=======
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="text" readonly id="handphone_cust" class="form-control" placeholder="No Handphone">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
					</div>

<<<<<<< HEAD
					<div style="border-bottom: 1px solid black; margin-bottom: 20px"></div>
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Barcode">

							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<i style="font-size: 30px" class="fa fa-search"></i>
=======
				<div style="border-bottom: 1px solid black; margin-bottom: 20px"></div>
				<div class="row">
					<div class="col-md-2">
						<div class="form-group">
							<div style="display: inline-flex;">
								<input style="margin-right: 20px" type="text" id="barcode_so" placeholder="Barcode" class="form-control">
								<i style="font-size: 30px;cursor:pointer" class="fa fa-search" id="cari_barcode"></i>
							</div>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-3">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Nama Item">
=======
					</div>
					<div class="col-md-3">
						<div class="form-group">
							<input type="text" id="nama_item" readonly placeholder="Nama Item" class="form-control">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-2">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Satuan">
=======
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="text" id="satuan" readonly placeholder="Satuan" class="form-control">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-1">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Qty">

=======
					</div>
					<div class="col-md-1">
						<div class="form-group">
							<input type="number" id="quantity" placeholder="Qty" class="form-control">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
						<div class="col-md-1">
							<div class="form-group">
								<i style="font-size: 30px" class="fa fa-plus"></i>
=======
					</div>
					<div class="col-md-1">
						<div class="form-group">
							<i style="font-size: 30px;cursor:pointer" id="masuk_data" class="fa fa-plus"></i>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

							</div>
						</div>
<<<<<<< HEAD
=======
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
								<th>
									<center>Aksi</center>
								</th>
							</tr>
						</thead>
						<tbody align="center" id="table_so">

						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="form-group">
							<input type="text" name="keterangan" required class="form-control input-lg " placeholder="KETERANGAN">
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39

					</div>
<<<<<<< HEAD
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
									<th>
										<center>Aksi</center>
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
									<td><i style="color: red" class="fa fa-trash"></i></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<input type="" name="" class="form-control input-lg" placeholder="Keterangan">

							</div>
						</div>
						<div class="col-md-5">

						</div>
						<div class="col-md-3">
							<div class="form-group">
								<button class="btn btn-light">Close</button>
								<button class="btn btn-danger">Reset</button>
								<button type="button" data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary">Simpan</button>

							</div>
						</div>
					</div>
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">

								<div class="modal-body">
									<div class="box box-primary box-solid">
										<div class="box-header with-border">
											<h3 style="text-align: center;width: 100%" class="box-title">Pilih Order</h3>
										</div>
										<div class="box-body">
											<form>
												<div class="row">
													<div class="col-md-2">
														<div class="form-group">
															<label>Tanggal : </label>


														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">

															<input type="date" name="" class="form-control">

														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group">

															<i class="fa fa-calendar" style="font-size: 30px"></i>


														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group">

															<button class="btn btn-primary">Cari</button>

														</div>
													</div>
												</div>
												<div>
													<table class="table table-bordered">
														<thead>
															<tr>
																<th>
																	<center>No</center>
																</th>
																<th>
																	<center>No Order</center>
																</th>
																<th>
																	<center>Kode Customer</center>
																</th>
																<th>
																	<center>Qty Order</center>
																</th>

															</tr>

														</thead>
														<tbody align="center">
															<tr>
																<td>1</td>
																<td>Order-001</td>
																<td>Cust-001</td>
																<td>40</td>


															</tr>
															<tr>
																<td>2</td>
																<td>Order-002</td>
																<td>Cust-002</td>
																<td>120</td>

															</tr>
															<tr>
																<td>3</td>
																<td>Order-003</td>
																<td>Cust-003</td>
																<td>75</td>

															</tr>
														</tbody>
													</table>
												</div>
												<div class="row">
													<div class="col-md-8">

													</div>

													<div class="col-md-4">
														<div class="form-group">
															<button class="btn btn-danger" data-dismiss="modal">Cancel</button>
															<button class="btn btn-primary">Pilih</button>

														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
=======
					<div class="col-md-6">

					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="hidden" name="total" id="total">
							<input type="hidden" name="data_item" id="data_item">
							<button class="btn btn-primary pull-right" type="submit" name="submit">Simpan</button>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
						</div>
					</div>

<<<<<<< HEAD
				</form>



=======
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
			</div>
		</div>
		</section>
	</div>
<<<<<<< HEAD

	<?php include('../templates/footer.php') ?>
	<script type="text/javascript">
		$('#kode').change(function () {
			var kode = $(this).val()
			$.post('sales_order/ajaxgua.php',{
				'params':1,
				'data': kode
			},function (data) {
				var obj = JSON.parse(data)
				$('#nama').val(obj.nama)
				$('#alamat').val(obj.alamat)
				$('#kota').val(obj.kota)
				$('#telp').val(obj.telepon)
				$('#hp').val(obj.handphone)
			})
		})	
		$('#soudesu').click(function () {
			var so =  $('#sou').val()
			$.post('sales_order/ajax_order_gudang.php',
			{
				'params' : 2,
				'data' : so
			},function (data) {
				var obj = JSON.parse(data)
				$('#kodeso').val(obj.nomor_so)
				$('#tanggal_so').val(obj.tanggal_so)
				$('#kode_customer').val(obj.kode_customer)
				$('#keterangan').val(obj.keterangan)
				$('#total').val(obj.total)
			})
		})
	</script>
=======
</form>

<script type="text/javascript" src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
	var sessData = [];
	var storeData = [];
	var i = 1;
	var total = 0;
	$('#cari_customer').on('click', function() {
		if ($('#kode_customer').val() == '') {
			alert("Tolong diisi Kode Customernya");
			return;
		}
		$.post('sales_order/ajax.php', {
			request: 'cari_customer',
			data: $('#kode_customer').val()
		}, function(data) {
			data = JSON.parse(data);
			if (data == '') {
				alert('Tidak ditemukan Customer');
				return;
			} else {
				data = data[0];
				sessData.dataCust = data;
				$('#nama_cust').val(data.nama);
				$('#alamat_cust').val(data.alamat);
				$('#kota_cust').val(data.kota);
				$('#telepon_cust').val(data.telepon);
				$('#handphone_cust').val(data.handphone);
			}
		})
	})
	$('#cari_barcode').on('click', function() {
		if ($('#barcode_so').val() == '') {
			alert("Tolong diisi Kode Barcodenya");
			return;
		}
		if ($('#nama_cust').val() == '') {
			alert('Tolong diisi dahulu data Customernya');
			return;
		}
		$.post('sales_order/ajax.php', {
			request: 'cari_barcode',
			data: $('#barcode_so').val()
		}, function(data) {
			data = JSON.parse(data);
			if (data == '') {
				alert('Tidak ditemukan Barcode');
				return;
			} else {
				data = data[0];
				sessData.dataB = data;
				if (parseInt(sessData.dataCust.tipe_customer) == 1) {
					sessData.dataB.harga_jual1 = sessData.dataB.harga_jual1;
				} else if (parseInt(sessData.dataCust.tipe_customer) == 2) {
					sessData.dataB.harga_jual1 = sessData.dataB.harga_jual2;
				} else if (parseInt(sessData.dataCust.tipe_customer) == 3) {
					sessData.dataB.harga_jual1 = sessData.dataB.harga_jual3;
				}
				$.post('sales_order/ajax.php', {
					request: 'cari_satuan',
					data: data.satuan
				}, function(lel) {
					lel = JSON.parse(lel)[0];
					sessData.dataB.satuan = lel.satuan;
					$('#nama_item').val(data.nama_barang);
					$('#satuan').val(lel.satuan);
				})
			}
		})


	})
	$('#masuk_data').on('click', function() {
		if ($('#quantity').val() == '' || $('#barcode_so').val() == '' || $('#satuan').val() == '' || $('#nama_item').val() == '') {
			alert('Tolong diisi semua fieldnya');
			return;
		}

		storeData.push({
			'barcode': $('#barcode_so').val(),
			'quantity': $('#quantity').val()
		})
		$('#data_item').val(JSON.stringify(storeData));
		$('#table_so').append(
			'<tr id="tr_so_' + i + '">' +
			'<td id="icr">' + i + '</td>' +
			'<td>' + $('#barcode_so').val() + '</td>' +
			'<td>' + sessData.dataB.nama_barang + '</td>' +
			'<td>' + $('#quantity').val() + '</td>' +
			'<td>' + sessData.dataB.satuan + '</td>' +
			'<td>' + sessData.dataB.harga_jual1 + '</td>' +
			'<td>' + parseInt(sessData.dataB.harga_jual1) * parseInt($('#quantity').val()) + '</td>' +
			'<td>' +
			'<i style="color: red;cursor:pointer" onclick="so_hapus(' + i + ')" class="fa fa-trash"></i>' + '</td>' +
			'</tr>'
		)
		total += parseInt($('#quantity').val());
		$('#total').val(total);
		fix_iteration('#table_so');
		i++;
	})



	function so_hapus(i) {
		$('#tr_so_' + i).remove();
		fix_iteration('#table_so');
		i--;
		delete storeData[i];
		$('#data_item').val(JSON.stringify(storeData));

	}

	function cari_so(kode) {
		$('#nomor_so').val(kode)
	}
	$('#cari_so_tanggal').on('click', () => {
		var d = $('#cari_so_tanggal_val').val()
		if (d == '') {
			alert('Tanggal tidak boleh kosong!');
			return;
		} else {
			$.post('sales_order/ajax.php', {
				request: 'cari_so',
				data: d
			}, res => {
				res = JSON.parse(res)
				$('#cari_so_tabel').html('');
				res.forEach((data_so, i) => {
					$('#cari_so_tabel').append(
						'<tr>' +
						'<td>' + ++i + '</td>' +
						'<td>' + data_so.nomor_so + '</td>' +
						'<td>' + data_so.kode_customer + '</td>' +
						'<td>' + data_so.total + '</td>' +
						'<td>' + ' <button type = "button"class = "btn btn-primary "onclick = "cari_so(' + "'" + data_so.nomor_so + "'" + ')" data-dismiss = "modal" > Pilih </button></td >' +
						'</tr>'
					)
				})

			})
		}
	})
</script>
<?php include('../templates/footer.php') ?>
>>>>>>> 29e311bd95a5860329e4ed267e94b1a0bac68f39
