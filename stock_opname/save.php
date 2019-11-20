<?php
$id =  $_SESSION['admin']['id'];
include '../env.php';
extract($_POST);
if ($params == 1) {
    $query = query("SELECT namaakun FROM ms_akun WHERE kodeakun='$kode_akun'");
    foreach ($query as $data) {
        echo json_encode($data);
    }
} elseif ($params == 2) {
    $kode_counter = $_POST['no_bukti'];
    $sql = '';
    $i  = 1;
    foreach ($_POST['simpanData'] as $data) {
        $sql .= "INSERT INTO tr_jurnal(novoucher,nourut,kodeakun,debet,kredit,keterangan,tanggal,userid,useredit) VALUES('$kode_counter','$i','$data[nama_akun]','$data[debet]','$data[kredit]','Adjust Selisih Stock Opname','date(Y-m-d)','$id','0');";
        $i++;
    }
    $query = mysqli_multi_query($conn, $sql);
    if ($query) {
        echo json_encode("Data Berhasil Dibuat !");
    }
}
