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

							</div>

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
						<div class="col-md-3">

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

						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input style="margin-right: 20px" type="text" id="nama" name="" class="form-control" placeholder="Nama Customer">
							</div>
						</div>
					</div>
					<!-- 4 -->
					<div class="row">
						<div class="col-md-8">

						</div>
						<div class="col-md-4">
							<div class="form-group">
								<input type="" name="" class="form-control input-lg" id="alamat" placeholder="Alamat">

							</div>
						</div>
					</div>
					<!-- 5 -->
					<div class="row">
						<div class="col-md-8">

						</div>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" id="kota" name="" class="form-control " placeholder="Kota">

							</div>
						</div>
					</div>
					<!-- 6 -->
					<div class="row">
						<div class="col-md-8">

						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="text" id="telp" name="" class="form-control" placeholder="No Telepon">

							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="text" id="hp" name="" class="form-control" placeholder="No Handphone">

							</div>
						</div>
					</div>

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

							</div>
						</div>
						<div class="col-md-3">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Nama Item">

							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Satuan">

							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<input type="" name="" class="form-control" placeholder="Qty">


							</div>
						</div>
						<div class="col-md-1">
							<div class="form-group">
								<i style="font-size: 30px" class="fa fa-plus"></i>

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
						</div>
					</div>

				</form>



			</div>
		</div>
		</section>
	</div>

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