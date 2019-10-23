<?php $title='Form pelunasan Customer' ?>
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
          <h3 class="box-title">Form Pelunasan ke Customer</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
            title="Collapse">
            <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="form row">
              <form class="form-horizontal" method="post">
                <!-- bagian 1 -->
                <div class="row">
                  <div class="box-body">
                    <div class="col-sm-7">
                      <div class="box-body">
                        <!-- #1 -->
                        <div class="form-group">
                          <label class="col-sm-3">Kode Customer</label>
                          <div class="col-sm-4">
                            <select class="form-control">
                              <option value="">. . . .</option>
                              <option value="">. . . .</option>
                            </select>
                          </div>
                          <label></label>
                          <div class="col-sm-5">
                            <input type="text" class="form-control" name="" placeholder="Nama Customer">
                          </div>
                        </div>
                        <!-- #2.1 -->
                        <div class="form-group">
                          <label class="col-sm-3">Alamat</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="" placeholder="Alamat Supplier...">
                          </div>
                        </div>
                        <!-- #2.2 -->
                        <div class="form-group">
                          <label class="col-sm-3"></label>
                          <div class="col-sm-6">
                            <input type="text" class="form-control" name="" placeholder="Kota">
                          </div>
                        </div>
                        <!-- #3 -->
                        <div class="form-group">
                          <label class="col-sm-3">Saldo Awal</label>
                          <div class="col-sm-5">
                            <input type="text" class="form-control" name="" placeholder="999.999.999">
                          </div>
                        </div>
                        <!-- #4 -->
                        <div class="form-group">
                          <label class="col-sm-3">Saldo Jalan</label>
                          <div class="col-sm-5">
                            <input type="text" class="form-control" name="" placeholder="999.999.999">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-5">
                      <div class="box-body">
                        <!-- #1 -->
                        <div class="form-group">
                          <label class="col-sm-3">No Telepon</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="" placeholder="021-7311222">
                          </div>
                        </div>
                        <!-- #2 -->
                        <div class="form-group">
                          <label class="col-sm-3">No HP</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="" placeholder="08157311222">
                          </div>
                        </div>
                        <!-- #3 -->
                        <div class="form-group">
                          <label class="col-sm-3">TOP</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="" placeholder="999">
                          </div>
                        </div>
                        <!-- #4 -->
                        <div class="form-group">
                          <label class="col-sm-3">Tgl Beli Akhir</label>
                          <div class="col-sm-9">
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
                          <label class="col-sm-3">Jml Beli 1 thn</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" name="" placeholder="999.999.999">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /bagian 1 -->
                <div style="padding-right: 10px; padding-left: 10px;">
                  <hr>
                </div>
                <!-- bagian 2 -->
                <div class="row">
                  <div class="box-body">
                    <div class="col-sm-12">
                      <div class="box-body">
                        <div class="form-group">
                          <label class="col-sm-2">No Transaksi</label>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" name="">
                          </div>
                          <label class="col-sm-1">Tanggal</label>
                          <div class="col-sm-3">
                            <div class="input-group">
                              <input type="date" name="tanggal1" id="formtanggal" class="form-control">
                              <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2">kd kas/bank</label>
                          <div class="col-sm-3">
                            <select class="form-control">
                              <option value="">Kode Bank</option>
                              <option value="">Kode Bank</option>
                              <option value="">Kode Bank</option>
                            </select>
                          </div>
                          <label></label>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" name="" placeholder="Nama Bank">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2">Giro No</label>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" name="" placeholder="A.12345678">
                          </div>
                          <label class="col-sm-1">Jumlah Byr</label>
                          <div class="col-sm-3">
                            <input type="text" class="form-control" name="" placeholder="130.000.000">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-6">
                            <textarea class="form-control" rows="3">Keterangan. . . . .</textarea>
                          </div>
                          <label class="col-sm-1">Sisa</label>
                          <div class="col-sm-2">
                            <input type="text" class="form-control" name="" placeholder="0">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /bagian 2 -->

                <!-- data table -->
                <div class="box-body">
                  <div class="data-table">
                    <div class="table-responsive">
                      <table id="example2" class="table table-bordered table-striped">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>Kode Trans</th>
                            <th>Tanggal</th>
                            <th>Tgl jth Tempo</th>
                            <th>Jumlah</th>
                            <th>Outstanding</th>
                            <th>Kat</th>
                            <th>Bayar</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1</td>
                            <td>Inv1000001</td>
                            <td>dd-mm-yyyy</td>
                            <td>dd-mm-yyyy</td>
                            <td>150.000.000,00</td>
                            <td>130.000.000,00</td>
                            <td>PU</td>
                            <td>V</td>
                          </tr>
                          <tr>
                            <td>2</td>
                            <td>Inv1000001</td>
                            <td>dd-mm-yyyy</td>
                            <td>dd-mm-yyyy</td>
                            <td>150.000.000,00</td>
                            <td>130.000.000,00</td>
                            <td>PU</td>
                            <td>V</td>
                          </tr>
                          <tr>
                            <td>3</td>
                            <td>Inv1000001</td>
                            <td>dd-mm-yyyy</td>
                            <td>dd-mm-yyyy</td>
                            <td>150.000.000,00</td>
                            <td>130.000.000,00</td>
                            <td>PU</td>
                            <td>V</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>

                <!-- button -->
                <div class="box-body">
                  <div class="button pull-right">
                    <button type="" class="btn btn-danger">Keluar</button>
                    <button type="" class="btn btn-info">Simpan</button>
                  </div>
                </div>

              </form>
            </div>

            <!-- data table -->
            
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <?php include('../templates/footer.php'); ?>