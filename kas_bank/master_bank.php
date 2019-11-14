<?php $title = 'Master Bank' ?>
<?php $role = 'pemasaran';
include '../env.php';
cekAdmin($role); ?>
<?php include('../templates/header.php');
?>
<!-- =============================================== -->

<script>
  var active = 'header_bank';
  var active_2 = 'header_bank_master';
</script>
<!-- =============================================== -->
<?php
if (isset($_POST['edit'])) {
  extract($_POST);
  $query = mysqli_query($conn, "UPDATE bank SET kode_bank = '$kode_bank_edit',nama_bank = '$nama_bank_edit',saldo_jalan = '$saldo_jalan_edit',saldo_awal = '$saldo_awal_edit',nomor_akun = '$nomor_akun_edit' WHERE kode_bank = '$kode_bank_edit'");
  if ($query) {
    ?>
    <script type="text/javascript">
      alert("Data Berhasil Diedit !")
    </script>
  <?php } else { ?>
    <script type="text/javascript">
      alert("Data Gagal Diedit !")
    </script>
  <?php }
  } elseif (isset($_GET['kode_bank'])) {
    $kode_bank = $_GET['kode_bank'];
    $query = mysqli_query($conn, "DELETE FROM bank WHERE kode_bank = '$kode_bank'");
    if ($query) {
      header('Refresh: 0'); ?>
    <script type="text/javascript">
      alert("Data Berhasil Dihapus !")
    </script>
  <?php
    } else {
      header('Refresh: 0'); ?>
    <script type="text/javascript">
      alert("Data Gagal Dihapus !")
    </script>
<?php }
}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->

  <!-- Main content -->
  <section class="content">

    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">Master Bank</h3>

        <div class="box-tools pull-right">
          <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
            <i class="fa fa-minus"></i></button>
          <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
            <i class="fa fa-times"></i></button>
        </div>
      </div>
      <div class="box-body">

        <div class="form">
          <form method="POST" class="form-horizontal" action="kas_bank/master_bank.php">
            <div class="box-body">
              <div class="form-group">
                <label class="col-sm-2">Kode Bank</label>
                <div class="col-sm-4">
                  <input type="number" id="kode_bank" class="form-control">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2">Nama Bank</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="nama_bank">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2">Saldo Awal</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="saldo_awal">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2">Saldo Jalan</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" id="saldo_jalan">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2">Kode Akun</label>
                <div class="col-sm-4">
                  <select class="form-control" id="nomor_akun">
                    <option selected="" disabled="">Kode Akun</option>
                    <?php
                    $query = mysqli_query($conn, "SELECT kodeakun,namaakun FROM ms_akun");
                    foreach ($query as $data) {
                      ?>
                      <option value="<?= $data['kodeakun'] ?>"><?= $data['kodeakun'] ?> - <?= $data['namaakun'] ?></option>
                    <?php } ?>
                  </select>
                </div>
                <label></label>
              </div>
              <div class="col-sm-6">
                <button type="button" id="save" class="btn btn-info pull-right">Save</button>
              </div>
            </div>
          </form>
        </div>

        <div class="data-table">
          <div class="table-responsive">
            <table class="table table-striped table-bordered">
              <thead>
                <th>No</th>
                <th>Kode Bank</th>
                <th>Nama Bank</th>
                <th>Saldo Awal</th>
                <th>Saldo Jalan</th>
                <th>Nomor Akun</th>
                <th>Aksi</th>
              </thead>
              <tbody>
                <?php
                $no = 1;
                $show = mysqli_query($conn, "SELECT * FROM bank ORDER BY kode_bank");
                $no = 1;
                foreach ($show as $datas) {
                  ?>
                  <div class="form">
                    <form method="POST" class="form-horizontal" enctype="form-data" action="kas_bank/master_bank.php">
                      <tr>
                        <td><?= $no ?></td>
                        <td><?= $datas['kode_bank'] ?></td>
                        <td><?= $datas['nama_bank'] ?></td>
                        <td><?= $datas['saldo_awal'] ?></td>
                        <td><?= $datas['saldo_jalan'] ?></td>
                        <td><?= $datas['nomor_akun'] ?></td>
                        <td>
                          <a><button type="button" data-toggle="modal" data-target="#prev_edit<?= $no ?>" class="pad"><i class="fa fa-edit text-success fa-lg"></i></button></a>
                          <a href="kas_bank/master_bank.php?kode_bank=<?= $datas['kode_bank'] ?>"><button type="button" class="pad"><i class="fa fa-trash-o text-red fa-lg"></i></button></a>
                        </td>
                      </tr>
                      <div class="modal fade" id="prev_edit<?= $no ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Edit Data</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              <div class="box-body">
                                <div class="form-group" style="padding-bottom: 50px">
                                  <label class="col-sm-2">Kode Bank</label>
                                  <div class="col-sm-10">
                                    <input type="number" readonly="" name="kode_bank_edit" value="<?= $datas['kode_bank'] ?>" class="form-control">
                                  </div>
                                </div>
                                <div class="form-group" style="padding-bottom: 50px">
                                  <label class="col-sm-2">Nama Bank</label>
                                  <div class="col-sm-10">
                                    <input type="text" value="<?= $datas['nama_bank'] ?>" class="form-control" name="nama_bank_edit">
                                  </div>
                                </div>
                                <div class="form-group" style="padding-bottom: 50px">
                                  <label class="col-sm-2">Saldo Awal</label>
                                  <div class="col-sm-10">
                                    <input type="text" class="form-control" value="<?= $datas['saldo_awal'] ?>" name="saldo_awal_edit">
                                  </div>
                                </div>
                                <div class="form-group" style="padding-bottom: 50px">
                                  <label class="col-sm-2">Saldo Jalan</label>
                                  <div class="col-sm-10">
                                    <input type="text" value="<?= $datas['saldo_jalan'] ?>" class="form-control" name="saldo_jalan_edit">
                                  </div>
                                </div>
                                <div class="form-group" style="padding-bottom: 50px">
                                  <label class="col-sm-2">Kode Akun</label>
                                  <div class="col-sm-10">
                                    <select class="form-control" name="nomor_akun_edit">
                                      <?php
                                        $nomor_akun = $datas['nomor_akun'];
                                        $tam = mysqli_fetch_array(mysqli_query($conn, "SELECT kodeakun,namaakun FROM ms_akun WHERE kodeakun = '$nomor_akun'"));
                                        ?>
                                      <option selected="" disabled=""><?= $tam['kodeakun'] ?> - <?= $tam['namaakun'] ?></option>
                                      <?php
                                        $query = mysqli_query($conn, "SELECT kodeakun,namaakun FROM ms_akun");
                                        foreach ($query as $data) {
                                          ?>
                                        <option value="<?= $data['kodeakun'] ?>"><?= $data['kodeakun'] ?> - <?= $data['namaakun'] ?></option>
                                      <?php } ?>
                                    </select>
                                  </div>
                                  <label></label>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" name="edit" class="btn btn-warning">Edit</button>
                          </div>
                    </form>
                  </div>
          </div>
        </div>
      <?php $no++;
      } ?>
      </tbody>
      </table>
      </div>
    </div>

</div>
<!-- /.box-body -->
<!-- /.box-footer-->
</div>
<!-- /.box -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<?php include('../templates/footer.php') ?>
<script type="text/javascript">
  $('#save').click(function() {
    var kode_bank = $('#kode_bank').val()
    var nama_bank = $('#nama_bank').val()
    var saldo_awal = $('#saldo_awal').val()
    var saldo_jalan = $('#saldo_jalan').val()
    var nomor_akun = $('#nomor_akun').val()
    $.post('kas_bank/ajax.php', {
      'params': 5,
      'kode_bank': kode_bank,
      'nama_bank': nama_bank,
      'saldo_awal': saldo_awal,
      'saldo_jalan': saldo_jalan,
      'nomor_akun': nomor_akun
    }, function(res) {
      var message = JSON.parse(res)
      alert(message)
      $('#kode_bank').val('')
      $('#nama_bank').val('')
      $('#saldo_awal').val('')
      $('#saldo_jalan').val('')
      $('#nomor_akun').val('')
      location.reload(true)
    })
  })
</script>