<?php

$host = "localhost";
$user = "root";
$password = "";
$dbname = "brasco_pusat";
$conn = mysqli_connect($host, $user, $password, $dbname);
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
