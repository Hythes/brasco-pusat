<?php $title = "Master Satuan"; ?>
<script>
    var active = 'header_inventory';
    var active_2 = 'header_type_barang';
</script>

<?php include('../templates/header.php') ?>
  <!-- =============================================== -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Type Barang
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Type Barang</h3>
           <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
            title="Collapse">
            <i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          
          <div class="form">
          	<form action="" method="POST" class="form-horizontal">
          		<div class="box-body">
          			<div class="col-sm-8 pad">
          				<div class="form-group">
          					<label class="col-sm-3 control-label">Type Barang</label>
          					<div class="col-sm-7">
          						<input type="text" name="" class="form-control" required="">
          					</div>
                    <button type="submit" class="btn btn-info">Add</button>
          				</div>
          				
          			</div>
          		</div>
          	</form>
          </div>

          <div class="data-table">
          	<table id="example1" class="table table-bordered table-striped text-center">
          		<thead>
          			<tr>
          				<th>Type Barang</th>
          				<th>Aksi</th>
          			</tr>
          		</thead>
          		<tbody>
          			<tr>
          				<td>Nama Satuan disini...</td>
          				<td>
          					<a href="#"><i class="fa fa-edit fa-lg text-primary" style="padding-left: 20px;"></i></a>
          					<a href="#"><i class="fa fa-trash-o fa-lg text-red" style="padding-left: 20px;"></i></a>
          				</td>
          			</tr>
          		</tbody>
          	</table>


        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <?php include('../templates/footer.php') ?>