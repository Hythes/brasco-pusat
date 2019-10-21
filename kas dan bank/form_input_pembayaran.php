<?php $title='Form input Pembayaran' ?>
<?php include('../templates/header.php') ?>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
      <h1>
        MASTER DATA INVETORY
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section> -->

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title">Form Input Pembayaran</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
            title="Collapse">
            <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="">
              <form class="form-horizontal" method="post">
                <div class="box-body">
                  <!-- #1 -->
                  <div class="form-group">
                    <label class="col-sm-2 ">No kas Keluar</label>
                    <div class="col-sm-2">
                      <input type="text" class="form-control" name="" placeholder="KK1238">
                    </div>
                    <label class="col-sm-1 control-label">Tanggal</label>
                    <div class="col-sm-2">
                     <div class="input-group">
                      <input type="date" name="tanggal1" id="formtanggal" class="form-control">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- #2 -->
                <div class="form-group">
                  <label class="col-sm-2 ">Kas/bank</label>
                  <div class="col-sm-3">
                    <select class="form-control">
                      <option value="">pilihan 1</option>
                      <option value="">pilihan 2</option>
                      <option value="">pilihan 3</option>
                    </select>
                  </div>
                  <label><!-- sebagai penambah padding saat responsive --></label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control" name="">
                  </div>
                </div>
                <!-- #3 -->
                <div class="form-group">
                  <label class="col-sm-2 ">No Giro</label>
                  <div class="col-sm-3">
                    <input type="text" class="form-control" name="">
                  </div>
                </div>
                <!-- #4 -->
                <div class="form-group">
                  <label class="col-sm-2">Tanggal Giro</label>
                  <div class="col-sm-3">
                   <div class="input-group">
                    <input type="date" name="tanggal1" id="formtanggal" class="form-control">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                  </div>
                </div>
              </div>
              <!-- #5 -->
              <div class="form-group">
                <label class="col-sm-2">Jenis Biaya</label>
                <div class="col-sm-3">
                  <select class="form-control">
                    <option value="">pilihan 1</option>
                    <option value="">pilihan 2</option>
                    <option value="">pilihan 3</option>
                  </select>
                </div>
                <label><!-- sebagai penambah padding saat responsive --></label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="">
                </div>
              </div>
              <!-- #6 -->
              <div class="form-group">
                <label class="col-sm-2">Jumlah</label>
                <div class="col-sm-3">
                  <input type="text" class="form-control" name="" placeholder="999.999.999">
                </div>
              </div>
              <!-- #7 -->
              <div class="form-group">
                <div class="col-sm-9">
                  <textarea class="form-control" rows="3">Keterangan. . . . . </textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-9">
                  <div class="pull-right">
                    <button type="" class="btn btn-danger">Reset</button>
                    <button type="" class="btn btn-info">Simpan</button>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->

  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include('../templates/footer.php') ?>