<script>
	var active = 'header_sales';
	var active_2 = 'header_sales_gudang';
</script>

<?php include('../templates/header.php') ?>

<div class="content-wrapper">

	<div class="panel panel-default">
		<div class="panel-heading">
			<h1>ORDER KE GUDANG</h1>
		</div>
		<div class="panel-body">
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
							<input style="width: 80%" type="date" name="" class="form-control">

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
							<input type="" name="" class="form-control">

						</div>
					</div>
					<div class="col-md-3">

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<div style="display: inline-flex;">
								<input style="margin-right: 20px" type="" name="" class="form-control" placeholder="Kode Customer">
								<i style="font-size: 30px" class="fa fa-search"></i>
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
								<input style="margin-right: 20px" type="" name="" class="form-control">
								<i style="font-size: 30px" class="fa fa-search"></i>
							</div>

						</div>

					</div>
					<div class="col-md-3">

					</div>
					<div class="col-md-4">
						<div class="form-group">
							<input style="margin-right: 20px" type="" name="" class="form-control" placeholder="Nama Customer">
						</div>
					</div>
				</div>
				<!-- 4 -->
				<div class="row">
					<div class="col-md-8">

					</div>
					<div class="col-md-4">
						<div class="form-group">
							<input type="" name="" class="form-control input-lg" placeholder="Alamat">

						</div>
					</div>
				</div>
				<!-- 5 -->
				<div class="row">
					<div class="col-md-8">

					</div>
					<div class="col-md-3">
						<div class="form-group">
							<input type="" name="" class="form-control " placeholder="Kota">

						</div>
					</div>
				</div>
				<!-- 6 -->
				<div class="row">
					<div class="col-md-8">

					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="" name="" class="form-control" placeholder="No Telepon">

						</div>
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<input type="" name="" class="form-control" placeholder="No Handphone">

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
</div>

<?php include('../templates/footer.php') ?>