<?php
include '../env.php';
$conn = mysqli_connect($host, $user, $password, $dbname);


function tambah($data)
{
	global $conn;

	$barcode = htmlspecialchars($data['barcode']);
	$nama_barang = htmlspecialchars($data['nama_barang']);
	$satuan = htmlspecialchars($data['satuan']);
	$id_tipe_barang = htmlspecialchars($data['id_tipe_barang']);
	$harga_jual1 = htmlspecialchars($data['harga_jual1']);
	$harga_jual2 = htmlspecialchars($data['harga_jual2']);
	$harga_jual3 = htmlspecialchars($data['harga_jual3']);
	$query = " INSERT INTO inventory(barcode,nama_barang,satuan,id_tipe_barang,harga_jual1,harga_jual2,harga_jual3)         
	VALUES 
	('$barcode','$nama_barang','$satuan','$id_tipe_barang','$harga_jual1','$harga_jual2','$harga_jual3')";
	$thread = mysqli_query($conn, $query);
	if (!$thread) {
		echo mysqli_error($conn);
		exit();
	}
	return mysqli_affected_rows($conn);
}

function hapus($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM inventory WHERE id=$id");
	return mysqli_affected_rows($conn);
}

function ubah($data)
{
	global $conn;
	$barcode = htmlspecialchars($data['barcode']);
	$nama_barang = htmlspecialchars($data['nama_barang']);
	$satuan = htmlspecialchars($data['satuan']);
	$id_tipe_barang = htmlspecialchars($data['id_tipe_barang']);
	$harga_jual1 = htmlspecialchars($data['harga_jual1']);
	$harga_jual2 = htmlspecialchars($data['harga_jual2']);
	$harga_jual3 = htmlspecialchars($data['harga_jual3']);
	$id = $data['id'];
	$query = " UPDATE inventory SET
	barcode = '$barcode',
	nama_barang = '$nama_barang',
	satuan = '$satuan',
	id_tipe_barang = '$id_tipe_barang',
	harga_jual1 = '$harga_jual1',
	harga_jual2 = '$harga_jual2',
	harga_jual3 = '$harga_jual3'
	WHERE id='$id'
	";
	$thread = mysqli_query($conn, $query);
	if (!$thread) {
		echo mysqli_error($conn);
		exit();
	}
	return mysqli_affected_rows($conn);
}

function cariBarang()
{
	global $conn;
	$return = query('SELECT * FROM tipe_barang');
	return $return;
}
