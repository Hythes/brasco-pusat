<?php


$base_url = 'http://localhost/brasco/';
$host = "localhost";
$user = "root";
$password = "";
$dbname = "brasco_pusat";
$conn = mysqli_connect($host, $user, $password, $dbname);

function jquery()
{
  echo '<script type="text/javascript" src="assets/bower_components/jquery/dist/jquery.min.js"></script>';
}
function query($query)
{
  global $conn;
  $result = mysqli_query($conn, $query);
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }
  return $rows;
}
function checkId($table, $id, $prefix)
{
  $query = "SELECT * FROM ${table} ORDER BY ${id} DESC LIMIT 1";
  $query = query($query);
  if (!isset($query[0][$id])) {
    $id = $prefix . '-001';
  } else {
    $id = tambahId(strval($query[0][$id]), $prefix);
  }
  return $id;
}
/** 	tambahID
 * 	
 *	Untuk menambah ID secara Otomatis
 *	@param $id ID yang akan diganti
 * @return $id ID yang sudah diganti
 */
function tambahId($id, $prefix)
{
  $id = intval(substr($id, -3));
  if ($id < 9) {
    $id = $prefix . '-00' . ++$id;
  } else if ($id == 9) {
    $id = $prefix . '-010';
  } else if ($id < 99) {
    $id = $prefix . '-0' . ++$id;
  } else if ($id == 99) {
    $id = $prefix . '-100';
  } else {
    $id = $prefix . '-' . ++$id;
  }
  return $id;
}
function alert($word)
{
  echo "<script>alert('" . $word . "')</script>";
}

function lanjutkan($sql, $word)
{
  global $conn;
  if ($sql) {
    alert('Data berhasil ' . $word . '!');
  } else {
    alert('Data gagal ' . $word . '!');
    echo mysqli_error($conn);
    exit();
  }
}
function status($st)
{
  if ($st == 'belum_approve') {
    return 'Belum Diapprove';
  }
  if ($st == 'approve') {
    return 'Approve';
  }
  if ($st == 'batal') {
    return 'Batal';
  }
}

function show_invoice($kode_customer, $nomor_packing)
{
  $dataModal = array();
  $kodeCustomer = $kode_customer;
  foreach (query("SELECT * FROM packing WHERE nomor_packing = '$nomor_packing'") as $data) {
    foreach (query("SELECT * FROM packing_item WHERE nomor_packing = '$data[nomor_packing]'") as $data2) {
      $dataPickingItem  = query("SELECT * FROM picking_item WHERE id = '$data2[id_picking_item]'")[0];
      $dataInventory = query("SELECT * FROM inventory WHERE barcode = '$dataPickingItem[barcode]'")[0];
      $dataCustomer = query("SELECT * FROM customer WHERE kode = '$kodeCustomer'")[0];

      if ($dataCustomer['tipe_customer'] == '1') $hargaSatuan = $dataInventory['harga_jual1'];
      if ($dataCustomer['tipe_customer'] == '2') $hargaSatuan = $dataInventory['harga_jual2'];
      if ($dataCustomer['tipe_customer'] == '3') $hargaSatuan = $dataInventory['harga_jual3'];

      $sessData['barcode'] = $dataPickingItem['barcode'];
      $sessData['nomor_packing'] = $data['nomor_packing'];
      $sessData['quantity'] = $dataInventory['quantity'];
      $sessData['totalHarga'] = intval($sessData['quantity']) * intval($hargaSatuan);
      $sessData['harga_satuan'] = $hargaSatuan;
      $sessData['nama_item'] = $dataInventory['nama_barang'];

      array_push($dataModal, $sessData);
    }
  }
  return $dataModal;
}
