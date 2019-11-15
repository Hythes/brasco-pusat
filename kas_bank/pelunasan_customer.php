<?php $title = 'Pelunasan Customer' ?>
<?php $role = 'pemasaran';
include '../env.php';
cekAdmin($role); ?>
<?php include('../templates/header.php');
?>
<!-- =============================================== -->

<script>
  var active = 'header_bank';
  var active_2 = 'header_bank_pelunasan_customer';
</script>
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
          <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
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
                      <div class="col-sm-9">
                        <select id="kode_customer" class="form-control">
                          <option selected="">Kode Customer</option>
                          <?php
                          $query = mysqli_query($conn, "SELECT kode,nama FROM customer");
                          foreach ($query as $data) {
                            ?>
                            <option value="<?= $data['kode'] ?>"><?= $data['kode'] ?> - <?= $data['nama'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3">Nama Customer</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="nama_customer" readonly="">
                      </div>
                    </div>
                    <!-- #2.1 -->
                    <div class="form-group">
                      <label class="col-sm-3">Alamat</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="alamat" readonly="">
                      </div>
                    </div>
                    <!-- #2.2 -->
                    <div class="form-group">
                      <label class="col-sm-3"></label>
                      <div class="col-sm-6">
                        <input type="text" class="form-control" id="kota" readonly="">
                      </div>
                    </div>
                    <!-- #3 -->
                    <div class="form-group">
                      <label class="col-sm-3">Saldo Awal</label>
                      <div class="col-sm-5">
                        <input type="number" class="form-control" id="saldo_awal" readonly="">
                      </div>
                    </div>
                    <!-- #4 -->
                    <div class="form-group">
                      <label class="col-sm-3">Saldo Jalan</label>
                      <div class="col-sm-5">
                        <input type="number" class="form-control" id="saldo_jalan" readonly="">
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
                        <input type="text" class="form-control" id="telepon" readonly="">
                      </div>
                    </div>
                    <!-- #2 -->
                    <div class="form-group">
                      <label class="col-sm-3">No HP</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="hp" readonly="">
                      </div>
                    </div>
                    <!-- #3 -->
                    <div class="form-group">
                      <label class="col-sm-3">TOP</label>
                      <div class="col-sm-9">
                        <input type="text" class="form-control" id="top" readonly="">
                      </div>
                    </div>
                    <!-- #4 -->
                    <div class="form-group">
                      <label class="col-sm-3">Tgl Beli Akhir</label>
                      <div class="col-sm-9">
                        <div class="input-group">
                          <input type="date" id="tanggal_jual_akhir" readonly="" class="form-control">
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
                        <input type="text" class="form-control" id="jumlah_satu_tahun" readonly>
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
                        <?php
                        $query = mysqli_fetch_array(mysqli_query($conn, "SELECT header FROM counter WHERE nama='no_kas_masuk'"));
                        $km = $query['header'];
                        $digit = mysqli_fetch_array(mysqli_query($conn, "SELECT max(digit) as digie FROM counter WHERE nama='no_kas_masuk'"));
                        $angka = $digit['digie'];
                        $angka++;
                        $char = "$km-";
                        $no = $char . sprintf("%08s", $angka);
                        ?>
                        <input type="text" class="form-control" id="no_kas_masuk" value="<?= $no ?>" readonly="">
                      </div>
                      <label class="col-sm-1">Tanggal</label>
                      <div class="col-sm-3">
                        <div class="input-group">
                          <input type="date" name="tanggal1" id="tanggal_now" value="<?= date('Y-m-d') ?>" class="form-control" readonly="">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2">kd kas/bank</label>
                      <div class="col-sm-3">
                        <select id="kode_bank" class="form-control">
                          <option selected="">Kode Bank</option>
                          <?php
                          $query = mysqli_query($conn, "SELECT kode_bank,nama_bank FROM bank");
                          foreach ($query as $data) {
                            ?>
                            <option value="<?= $data['kode_bank'] ?>"><?= $data['kode_bank'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                      <label></label>
                      <div class="col-sm-3">
                        <input type="text" class="form-control" id="nama_bank" readonly="">
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-2">No Giro</label>
                      <div class="col-sm-3">
                        <input type="text" class="form-control" id="no_giro">
                      </div>
                      <label class="col-sm-1">Jumlah Byr</label>
                      <div class="col-sm-3">
                        <input type="number" class="form-control" id="jumlah">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-6">
                        <textarea class="form-control" id="ket" rows="3">Keterangan. . . . .</textarea>
                      </div>
                      <label class="col-sm-1">Sisa</label>
                      <div class="col-sm-2">
                        <input type="text" class="form-control" id="sisa">
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
<script type="text/javascript">
  $('#kode_bank').change(function() {
    var kode_bank = $(this).val()
    $.post('kas_bank/ajax.php', {
      'params': 1,
      'kode_bank': kode_bank
    }, function(response) {
      res = JSON.parse(response)
      if (res) {
        $('#nama_bank').val(res.nama_bank)
      } else {
        $('#nama_bank').val('')
      }
    })
  })

  $('#kode_customer').click(function() {
    var kode_customer = $(this).val()
    $.post('kas_bank/ajax.php', {
      'params': 8,
      'kode_customer': kode_customer
    }, function(res) {
      res = JSON.parse(res)
      console.log(res)
      if (res) {
        $('#nama_customer').val(res.nama)
        $('#alamat').val(res.alamat)
        $('#kota').val(res.kota)
        $('#saldo_awal').val(res.saldo_awal)
        $('#saldo_jalan').val(res.saldo_jalan)
        $('#telepon').val(res.telepon)
        $('#hp').val(res.handphone)
        $('#top').val(res.top)
        $('#jumlah_satu_tahun').val(res.total.toFixed(3))
        $('#tanggal_jual_akhir').val(res.tanggal_jual_akhir)
      } else {
        $('#nama_customer').val('')
        $('#alamat').val('')
        $('#kota').val('')
        $('#saldo_awal').val('')
        $('#saldo_jalan').val('')
        $('#telepon').val('')
        $('#hp').val('')
        $('#top').val('')
        $('#tanggal_jual_akhir').val('')
        $('#jumlah_satu_tahun').val('')
      }
    })
  })
</script>