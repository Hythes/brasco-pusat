<?php $role = 'inventory' ?>
<?php $title = "Selisih Stock Opname" ?>
<?php include('../env.php');
cekAdmin($role);
include '../templates/header.php';
?>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<section class="content">
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Adjust Selisih Stok Opname</h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i></button>
				</div>
			</div>
			<div class="box-body">
				<form class="form-horizontal" method="POST" action="">
					<div class="row">
						<div class="col-sm-10">
							<div class="box-body">
								<div class="form-group">
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" placeholder="No Bukti">
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control" name="" placeholder="Stok Opname Bulan">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" placeholder="Barcode">
									</div>
									<div class="col-sm-1">
										<label class="control-label">to</label>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" placeholder="Barcode">
									</div>
									<div class="col-sm-1">
										<button class="btn btn-info">Cari</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>

				<!-- data-table -->
				<div class="table-data">
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<th>No</th>
								<th>Barcode</th>
								<th>Nama Item</th>
								<th>Sat</th>
								<th>Qty Opname</th>
								<th>Qty Selisih</th>
								<th>Jumlah Selisih</th>
							</thead>
							<tbody>
								<tr>
									<td>1234612344510</td>
									<td>Baju Berkerah</td>
									<td>Pcs</td>
									<td>90</td>
									<td>85</td>
									<td>5</td>
									<td>9999999</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td>TOTAL SELISIH</td>
									<td><input type="text" class="form-control" name=""></td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>

				<!-- formkedua -->
				<div class="form2">
					<form class="form-horizontal" method="POST" action="">
						<div class="col-sm-10">
							<div class="box-body">
								<div class="form-group">
									<div class="col-sm-2">
										<select class="form-control">
											<option value="">No Akun</option>
											<option value="">No Akun</option>
										</select>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" readonly="" name="" placeholder="Nama Akun">
									</div>
									<div class="col-sm-3">
										<input type="number" class="form-control" name="" placeholder="Debet">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" placeholder="Kredit">
									</div>
									<div class="col-sm-1">
										<i class="fa fa-plus fa-2x"></i>
									</div>
								</div>
								<div class="form-group" style="padding-top: 10px">
									<div class="col-sm-2">
										<input type="number" class="form-control" readonly="" name="" value="3333333">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" value="Biaya Kerugian">
									</div>
									<div class="col-sm-3">
										<input type="number" class="form-control" readonly="" name="" value="99999999999">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" readonly="" name="" value="-">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-2">
										<input type="number" class="form-control" readonly="" name="" value="3333333">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" value="Biaya Karyawan">
									</div>
									<div class="col-sm-3">
										<input type="number" class="form-control" readonly="" name="" value="99999999999">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" readonly="" name="" value="-">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-2">
										<input type="number" class="form-control" readonly="" name="" value="3333333">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" name="" value="Persediaan">
									</div>
									<div class="col-sm-3">
										<input type="number" class="form-control" readonly="" name="" value="-">
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" readonly="" name="" value="99999999999">
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="box-body"">
									<div class=" form-group">
								<button class="btn btn-info">Save</button>
							</div>
							<div class="form-group">
								<button class="btn btn-danger">Cancel</button>
							</div>
							<div class="form-group">
								<button class="btn btn-default">Close</button>
							</div>
						</div>
				</div>
				</form>
			</div>

		</div>
</div>
</section>
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>