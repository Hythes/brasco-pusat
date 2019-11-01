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
