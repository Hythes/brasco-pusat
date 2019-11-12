<?php $role = "utility" ?>

<?php
require '../env.php';
if (isset($_POST['set'])) {
  extract($_POST);
  $password = password_hash($password, PASSWORD_DEFAULT);
  $sql = "INSERT INTO admin(username,password,nomor_hp,groupType,alamat) VALUES ('$username','$password','$nomor_hp','$group','$alamat') ";
  lanjutkan(mysqli_query($conn, $sql), "Ditambahkan!");
}
if (isset($_POST['edit'])) {
  extract($_POST);
  $password = password_hash($password, PASSWORD_DEFAULT);
  $sql = "UPDATE admin SET username = '$username', password = '$password', nomor_hp = '$nomor_hp', groupType = '$group', alamat = '$alamat' WHERE id = '$id'";
  lanjutkan(mysqli_query($conn, $sql), "Ditambahkan!");
}
?>

<?php
$query = query("SELECT * FROM admin");
$title = 'Admin Panel'
?>
<?php include('../templates/header.php') ?>
<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Setup Admin
      <!-- <small>it all starts here</small> -->
    </h1>
    <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol> -->
  </section>

  <!-- Main content -->
  <section class="content">

    <!-- Default box -->
    <div class="row">
      <div class="col-md-6">
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Buat Admin</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <form class="form-horizontal" method="post">
              <div class="form-group">
                <label class="col-sm-4">Username</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="username">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4">Password</label>
                <div class="col-sm-8">
                  <div class="input-group" id="show_hide_password1">
                    <input type="password" class="form-control" name="password" id="password_input">
                    <div class="input-group-addon">
                      <i class="fa fa-eye-slash" aria-hidden="true"></i>
                    </div>
                  </div>
                </div>
              </div>
              <!-- <div class="form-group">
                <label class="col-sm-4">Verify Password</label>
                <div class="col-sm-8">
                  <div class="input-group">
                    <input type="password" class="form-control" id="verify_password_input">
                    <span class="input-group-addon">
                      <i class="fa fa-eye"></i>
                      <i class="fa fa-eye-slash"></i>
                    </span>
                  </div>
                </div>
              </div> -->
              <div class="form-group">
                <label class="col-sm-4">Nomor HP</label>
                <div class="col-sm-8">
                  <input type="number" class="form-control" name="nomor_hp">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4">Group</label>
                <div class="col-sm-8">
                  <select class="form-control" name="group" required>
                    <option disabled selected>Pilih Group</option>
                    <option value="inventory">Inventory</option>
                    <option value="pemasaran">Pemasaran</option>
                    <option value="procurement">Procurement</option>
                    <option value="utility">Utility</option>
                    <option value="manager">Manager</option>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4">Alamat</label>
                <div class="col-sm-8">
                  <textarea class="form-control" name="alamat" rows="3"></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="box-body">
                  <button class="btn btn-primary col-sm-12" type="submit" name="set" value="kirim">Submit</button>
                </div>
              </div>
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>

      <div class="col-md-6">
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Data Admin</h3>

            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="data-table">
              <div class="table-responsive">
                <table id="example1" class="table table-striped table-bordered">
                  <thead>
                    <th>No</th>
                    <th>Username</th>
                    <th>Group</th>
                    <th>Aksi</th>
                  </thead>
                  <tbody>
                    <?php $i = 1;
                    foreach ($query as $data) : ?>
                      <tr>
                        <td><?= $i ?></td>
                        <td><?= $data['username'] ?></td>
                        <td><?= ucfirst($data['groupType']) ?></td>
                        <td class="text-center">
                          <a href="#" data-toggle="modal" data-target="#edit<?= $i ?>"><i class="fa fa-edit fa-lg text-green"></i></a>&nbsp&nbsp
                          <a onclick="hapus(<?= $data['id']?>)" ><i class="fa fa-trash-o fa-lg text-red"></i></button>
                        </td>
                      </tr>

                      <!-- modal -->
                      <div class="modal fade" id="edit<?= $i ?>">
                        <div class="modal-dialog modal-lg">
                          <div class="modal-content">
                            <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title ">Edit Admin</h4>
                            </div>
                            <div class="modal-body">
                              <div class="box-body">
                                <div class="form-group">
                                  <label class="col-sm-4">Username</label>
                                  <div class="col-sm-8">
                                    <input type="text" class="form-control" name="username" value="<?= $data['username'] ?>" required>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-sm-4">Password</label>
                                  <div class="col-sm-8">
                                    <div class="input-group" id="show_hide_password">
                                      <input type="password" class="form-control" name="password" id="password1">
                                      <div class="input-group-addon">
                                        <i class="fa fa-eye-slash" aria-hidden="true"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <!-- <div class="form-group">
                                  <label class="col-sm-4">Verify Password</label>
                                  <div class="col-sm-8">
                                    <div class="input-group" id="show_hide_password_verify">
                                      <input type="password" class="form-control" id="verify_password1">
                                      <div class="input-group-addon">
                                      <i class="fa fa-eye-slash" aria-hidden="true"></i>
                                      </div>
                                    </div>
                                  </div>
                                </div> -->
                                <div class="form-group">
                                  <label class="col-sm-4">Nomor HP</label>
                                  <div class="col-sm-8">
                                    <input type="number" class="form-control" name="nomor_hp" value="<?= $data['nomor_hp'] ?>" required>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-sm-4">Group</label>
                                  <div class="col-sm-8">
                                    <select class="form-control" name="group">
                                      <option <?= ($data['groupType'] == 'inventory') ? 'selected' : null ?> value="inventory">Inventory</option>
                                      <option <?= ($data['groupType'] == 'pemasaran') ? 'selected' : null ?> value="pemasaran">Pemasaran</option>
                                      <option <?= ($data['groupType'] == 'procurement') ? 'selected' : null ?> value="procurement">Procurement</option>
                                      <option <?= ($data['groupType'] == 'utility') ? 'selected' : null ?> value="utility">Utility</option>
                                      <option <?= ($data['groupType'] == 'manager') ? 'selected' : null ?> value="manager">Manager</option>
                                    </select>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label class="col-sm-4">Alamat</label>
                                  <div class="col-sm-8">
                                    <textarea class="form-control" name="alamat" rows="3"><?= $data['alamat'] ?></textarea>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="modal-footer">
                              <div class="pull-right">
                                <input type="hidden" name="id" value="<?= $data['id'] ?>">
                                <button type="submit" name="edit" id="tombol_edit" class="btn btn-success">Edit</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                    <?php $i++;
                    endforeach; ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?= jquery() ?>

<script>
  // $('#verify_password1').keyup(function() {
  //   let password = $('#password1').val();
  //   let verify_password = $('#verify_password1').val();
  //   if ($('#password1').val() == $('#verify_password1').val()) {
  //     console.log("anjayy");
  //     $('#verify_password1').css('border', '1px solid green');
  //   } else {
  //     console.log("salah");
  //     $('#verify_password1').css('border', '1px solid red');
  //   }
  // });
  // $('#password1').keyup(function() {
  //   let password = $('#password1').val();
  //   let verify_password = $('#verify_password1').val();
  //   if ($('#password1').val() == $('#verify_password1').val()) {
  //     console.log("anjayy");
  //     $('#verify_password1').css('border', '1px solid green');
  //   } else {
  //     console.log("salah");
  //     $('#verify_password1').css('border', '1px solid red');
  //   }
  // });
  $("#show_hide_password i").on('click', function(event) {
    event.preventDefault();
    if ($('#show_hide_password input').attr("type") == "text") {
      $('#show_hide_password input').attr('type', 'password');
      $('#show_hide_password i').addClass("fa-eye-slash");
      $('#show_hide_password i').removeClass("fa-eye");
    } else if ($('#show_hide_password input').attr("type") == "password") {
      $('#show_hide_password input').attr('type', 'text');
      $('#show_hide_password i').removeClass("fa-eye-slash");
      $('#show_hide_password i').addClass("fa-eye");
    }
  });
  $("#show_hide_password1 i").on('click', function(event) {
    event.preventDefault();
    if ($('#show_hide_password1 input').attr("type") == "text") {
      $('#show_hide_password1 input').attr('type', 'password');
      $('#show_hide_password1 i').addClass("fa-eye-slash");
      $('#show_hide_password1 i').removeClass("fa-eye");
    } else if ($('#show_hide_password1 input').attr("type") == "password") {
      $('#show_hide_password1 input').attr('type', 'text');
      $('#show_hide_password1 i').removeClass("fa-eye-slash");
      $('#show_hide_password1 i').addClass("fa-eye");
    }
  });
  // $("#show_hide_password_verify i").on('click', function(event) {
  //     event.preventDefault();
  //     if($('#show_hide_password_verify input').attr("type") == "text"){
  //         $('#show_hide_password_verify input').attr('type', 'password');
  //         $('#show_hide_password_verify i').addClass( "fa-eye-slash" );
  //         $('#show_hide_password_verify i').removeClass( "fa-eye" );
  //     }else if($('#show_hide_password_verify input').attr("type") == "password"){
  //         $('#show_hide_password_verify input').attr('type', 'text');
  //         $('#show_hide_password_verify i').removeClass( "fa-eye-slash" );
  //         $('#show_hide_password_verify i').addClass( "fa-eye" );
  //     }
  // });
  function hapus(id) {
    console.log(id);
    $.post("setup_admin/backend.php", { id: id, params: "2"});
  }
</script>


<?php include('../templates/footer.php') ?>