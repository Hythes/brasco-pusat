<?php require_once("../env.php"); ?>
<?php
$title = "Setting Counter";

if (isset($_POST['header'])) {
    $sql = '';
    extract($_POST);
    for ($i = 0; $i < count($_POST['header']); $i++) {
        $sql .= "UPDATE counter SET header = '$header[$i]', digit = '$digit[$i]' WHERE tabel = '$tabel[$i]';" . PHP_EOL;
    }
    lanjutkan(mysqli_multi_query($conn, $sql), "Diubah!");
    header('Refresh:0');
}

?>

<?php include('../templates/header.php') ?>
<div class="content-wrapper">
    <section class="content">
        <div class="box box-pinfo">
            <div class="box-header with-border">
                <h3 class="box-title">Setting No Counter</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="alert alert-info alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-info"></i> Informasi!</h4>
                    Format no counter ini bisa di setting bulanan atau bulanan, jadi andai bulanan setiap bulan di edit untuk reset no counter kembali
                </div>
                <form action="" method="POST" id="form">
                    <div class="data-table">
                        <div class="table-responsive">
                            <table id="eee" class="table table-bordered table-striped ">
                                <thead>
                                    <th>Nama Counter</th>
                                    <th>Header 2(digit)</th>
                                    <th>No Counter 8(digit)</th>
                                </thead>
                                <tbody>
                                    <?php $i = 0;  foreach (query("SELECT * FROM counter") as $data) : ?>
                                        <tr>
                                            <td id="nama<?=$i?>"><?= $data['nama'] ?></td>
                                            <td><input type="text" name="header[]" value="<?= $data['header'] ?>" class="form-control"> </td>
                                            <td ><input type="number" id="digit<?=$i?>"  name="digit[]" value="<?= $data['digit'] ?>" class="validasi form-control"></td>
                                            <input type="hidden" name="tabel[]" value="<?= $data['tabel'] ?>">
                                        </tr>
                                    <?php $i++; endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="pull-right pad">
                        <button class="btn btn-danger">Reset</button>
                        <button class="btn btn-info" name="simpan" type="submit" >Simpan</button>
                    </div>
                </form>

            </div>
        </div>
    </section>
</div>
<script>
    var active = 'header_counter'
</script>

<script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<script>
    $('.validasi').keyup(function(){
        if($(this).val() > 100000000){
            alert("maksimal inputan harus 8");
        }
        return false;
    });
    var switch2 = false;
    $('#form').submit((e)=>{
        e.preventDefault();
        var i = $('.validasi').val()
        $('#eee > tbody > tr ').each(e =>{
            switch2 = false;
            var b = $('#digit'+e).val();
            console.log(b.length)
            if(b.length < 8 || b.length > 8){
                alert($('#nama'+e).html() +' harus 8 Digit!');
                switch2 = true;
                return false;
            }
            
        })
        $('#eee').promise().done(()=>{
            if(switch2 === false){
            $('#form').submit()
            }
        })
    })
    

</script>

<?php include('../templates/footer.php') ?>