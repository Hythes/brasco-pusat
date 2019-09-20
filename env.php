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
function tambahId($id)
{
  $id = intval(substr($id, -3));
  if ($id < 9) {
    $id = 'PH-00' . ++$id;
  } else if ($id == 9) {
    $id = 'PH-010';
  } else if ($id < 99) {
    $id = 'PH-0' . ++$id;
  } else if ($id == 99) {
    $id = 'PH-100';
  } else {
    $id = 'PH-' . ++$id;
  }
  return $id;
}
function alert($word)
{
  echo "<script>alert('" . $word . "')</script>";
}

function lanjutkan($sql, $word)
{
  if ($sql) {
    alert('Data berhasil ' . $word . '!');
  } else {
    alert('Data gagal ' . $word . '!');
    echo mysqli_error($conn);
    exit();
  }
}
