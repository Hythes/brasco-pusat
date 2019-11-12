<?php
$role = "utility";
require '../env.php';
extract($_POST);
if ($params == 2) {
    delete($_POST);
}
function delete($id)
{
    $id = $id['id'];
    $sql = "DELETE FROM admin WHERE id = '$id'";
    lanjutkan(mysqli_query($conn, $sql), "Ditambahkan!");
}
