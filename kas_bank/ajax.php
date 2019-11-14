<?php
include '../env.php';
$parameter = $_POST['params'];
if ($parameter == 1) {
	$kode_bank = $_POST['kode_bank'];
	$query = mysqli_fetch_array(mysqli_query($conn,"SELECT nama_bank FROM bank WHERE kode_bank = '$kode_bank'"));
	echo json_encode($query);
}
else if ($parameter == 2) {
	$kode_akun = $_POST['kode_akun'];
	$query = mysqli_fetch_array(mysqli_query($conn,"SELECT namaakun as nama_akun FROM ms_akun WHERE kodeakun = '$kode_akun'"));
	echo json_encode($query);
}
else if ($parameter == 3) {
	$no_kas = $_POST['no_kas'];
	$tanggal_now = $_POST['tanggal_now'];
	$kode_bank = $_POST['kode_bank'];
	$nama_bank = $_POST['nama_bank'];
	$no_giro = $_POST['no_giro'];
	$tanggal_giro = $_POST['tanggal_giro'];
	$kode_akun = $_POST['kode_akun'];
	$nama_akun = $_POST['nama_akun'];
	$jumlah = $_POST['jumlah'];
	$ket = $_POST['ket'];
	$query = array();
	$kode = explode('-',$no_kas)[1];
	$qsaldo = mysqli_fetch_array(mysqli_query($conn,"SELECT saldo_jalan FROM bank WHERE kode_bank='$kode_bank'"));
	$saldo = $qsaldo['saldo_jalan'];
	$saldoInsert = $saldo-$jumlah;
	$query[1] = mysqli_query($conn,"UPDATE counter SET digit='$kode' WHERE nama='Kas Keluar'");
	$query[2] = mysqli_query($conn,"UPDATE bank SET saldo_jalan='$saldoInsert' WHERE kode_bank='$kode_bank'");
	$query[3] = mysqli_query($conn,"INSERT INTO bank_input_pembayaran(nomor_kas_keluar,tanggal,id_bank,no_giro,tanggal_giro,jenis_biaya,jumlah,keterangan) VALUES('$no_kas','$tanggal_now','$kode_bank','$no_giro','$tanggal_giro','$kode_akun','$jumlah','$ket')");
	$query[4] = mysqli_query($conn,"INSERT INTO tr_jurnal(novoucher,kodeakun,debet,keterangan,tanggal) VALUES('$no_kas','$kode_bank','$jumlah','$ket','$tanggal_now')");
	$query[5] = mysqli_query($conn,"INSERT INTO tr_jurnal(novoucher,kodeakun,kredit,keterangan,tanggal) VALUES('$no_kas','$kode_akun','$jumlah','$ket','$tanggal_now')");
	if ($query) {
		echo json_encode(['response'=>"Data Tersimpan !"]);
	}
	else{
		echo json_encode(['response'=>"Tidak Tersimpan !"]);
	}
}
else if ($parameter == 4) {
	$no_kas = $_POST['no_kas'];
	$tanggal_now = $_POST['tanggal_now'];
	$kode_bank = $_POST['kode_bank'];
	$nama_bank = $_POST['nama_bank'];
	$no_giro = $_POST['no_giro'];
	$tanggal_giro = $_POST['tanggal_giro'];
	$kode_akun = $_POST['kode_akun'];
	$nama_akun = $_POST['nama_akun'];
	$jumlah = $_POST['jumlah'];
	$ket = $_POST['ket'];
	$query = array();
	$kode = explode('-',$no_kas)[1];
	$qsaldo = mysqli_fetch_array(mysqli_query($conn,"SELECT saldo_jalan FROM bank WHERE kode_bank='$kode_bank'"));
	$saldo = $qsaldo['saldo_jalan'];
	$saldoInsert = $saldo+$jumlah;
	$query[1] = mysqli_query($conn,"UPDATE counter SET digit='$kode' WHERE nama='Kas Masuk'");
	$query[2] = mysqli_query($conn,"UPDATE bank SET saldo_jalan='$saldoInsert' WHERE kode_bank='$kode_bank'");
	$query[3] = mysqli_query($conn,"INSERT INTO bank_input_penerimaan(nomor_kas_masuk,tanggal,id_bank,no_giro,tanggal_giro,jenis_pendapatan,jumlah,keterangan) VALUES('$no_kas','$tanggal_now','$kode_bank','$no_giro','$tanggal_giro','$kode_akun','$jumlah','$ket')");
	$query[4] = mysqli_query($conn,"INSERT INTO tr_jurnal(novoucher,kodeakun,debet,keterangan,tanggal) VALUES('$no_kas','$kode_bank','$jumlah','$ket','$tanggal_now')");
	$query[5] = mysqli_query($conn,"INSERT INTO tr_jurnal(novoucher,kodeakun,kredit,keterangan,tanggal) VALUES('$no_kas','$kode_akun','$jumlah','$ket','$tanggal_now')");
	if ($query) {
		echo json_encode(['response'=>"Data Tersimpan !"]);
	}
	else{
		echo json_encode(['response'=>"Tidak Tersimpan !"]);
	}
}
elseif ($parameter == 5) {
	$kode_bank = $_POST['kode_bank'];
	$nama_bank = $_POST['nama_bank'];
	$saldo_awal = $_POST['saldo_awal'];
	$saldo_jalan = $_POST['saldo_jalan'];
	$nomor_akun = $_POST['nomor_akun'];
	$query = mysqli_query($conn,"INSERT INTO bank(kode_bank,nama_bank,saldo_awal,saldo_jalan,nomor_akun) VALUES('$kode_bank','$nama_bank','$saldo_awal','$saldo_jalan','$nomor_akun')");
	if ($query) {
		echo json_encode("Data Tersimpan !");
	}
	else{
		echo json_encode("Tidak Tersimpan !");
	}
}
elseif ($parameter == 6) {
	$kode_bank = $_POST['kode_bank'];
	$query = mysqli_fetch_array(mysqli_query($conn,"SELECT nama_bank,saldo_jalan FROM bank WHERE kode_bank = '$kode_bank'"));
	echo json_encode($query);
}
elseif ($parameter == 7) {
	extract($_POST);
	$kode1 = explode('-', $no_kas_keluar)[1];
	$kode2 = explode('-', $no_kas_masuk)[1];
	$kurang = $saldo1-$jumlah;
	$tambah = $saldo2+$jumlah;
	$query = array();
	$sql = "UPDATE counter SET digit='$kode1' WHERE nama='Kas Keluar';";
	$sql .= "UPDATE counter SET digit='$kode2' WHERE nama='Kas Masuk';";
	$sql .= "UPDATE bank SET saldo_jalan = '$kurang' WHERE kode_bank = '$kode_bank1';";
	$sql .= "UPDATE bank SET saldo_jalan = '$tambah' WHERE kode_bank = '$kode_bank2';";	
	$sql .= "INSERT INTO bank_input_pembayaran(nomor_kas_keluar,tanggal,id_bank,jenis_biaya,jumlah,keterangan) VALUES('$no_kas_keluar','$tanggal_now','$kode_bank1','$kode_bank2','$jumlah','$keterangan');";
	$sql .= "INSERT INTO bank_input_penerimaan(nomor_kas_masuk,tanggal,id_bank,jenis_pendapatan,jumlah,keterangan) VALUES('$no_kas_masuk','$tanggal_now','$kode_bank2','$kode_bank1','$jumlah','$keterangan');";	
	$sql .= "INSERT INTO tr_jurnal(novoucher,kodeakun,kredit,keterangan,tanggal) VALUES('$no_kas_keluar','$kode_bank1','$jumlah','$keterangan','$tanggal_now');";
	$sql .= "INSERT INTO tr_jurnal(novoucher,kodeakun,debet,keterangan,tanggal) VALUES('$no_kas_masuk','$kode_bank2','$jumlah','$keterangan','$tanggal_now');";
	$query = mysqli_multi_query($conn,$sql);
	if ($query) {
		echo json_encode("Data Berhasil Disimpan !");
	}
	else{
		echo json_encode("Data Gagal Disimpan !");	
	}
}
elseif ($parameter == 8) {
	extract($_POST);
	$data = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM customer WHERE kode='$kode_customer'"));
	echo json_encode($data);
}
elseif ($parameter == 9) {
	extract($_POST);
	$arr = array();
	$query = query("SELECT * FROM supplier WHERE kode='$kode_supplier'")[0];
	$arr['nama'] = $query['nama'];
	$arr['alamat'] = $query['alamat'];
	$arr['kota'] = $query['kota'];
	$arr['saldo_awal'] = $query['saldo_awal'];
	$arr['saldo_jalan'] = $query['saldo_jalan'];
	$arr['telepon'] = $query['telepon'];
	$arr['handphone'] = $query['handphone'];
	$arr['top'] = $query['top'];
	$timestamp = query("SELECT created_at FROM purchasing WHERE kode_supplier='$kode_supplier' ORDER BY created_at desc")[0];
	$arr['tanggal_beli_akhir'] = $timestamp['created_at'];
	echo json_encode($arr);
}
?>