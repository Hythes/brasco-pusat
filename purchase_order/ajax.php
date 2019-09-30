<?php

require '../env.php';
header('Content-Type: Application/Json');
if (isset($_POST['request'])) {
    $req = $_POST['request'];
    extract($_POST);
    if ($req == 'data_inventory') {
        $query = "SELECT * FROM profil WHERE id = 1";
        $sql = mysqli_fetch_assoc(mysqli_query($conn, $query));
        echo json_encode($sql);
    }
    if ($req == 'kode_po') {
        $query = query('SELECT * FROM purchase_order ORDER BY kode DESC LIMIT 1');
        if (!isset($query[0]['kode'])) {
            $id = 'PO-001';
        } else {
            $id = tambahId(strval($query[0]['kode']), 'PO');
        }
        echo json_encode($id);
    }
    if ($req == 'data_supplier') {
        $query = "SELECT * FROM supplier WHERE kode = '$data' ";
        $sql = mysqli_fetch_assoc(mysqli_query($conn, $query));
        echo json_encode($sql);
    }
    if ($req == 'cari_barcode') {
        $query = "SELECT * FROM inventory WHERE barcode = '$data' ";
        $sql = mysqli_fetch_assoc(mysqli_query($conn, $query));
        echo json_encode($sql);
    }
    if ($req == "data_po") {
        $kode = $_POST['kode'];
        $query = "SELECT * FROM purchase_order_item WHERE kode_po = '$kode'";
        $sql = query($query);
        echo json_encode($sql);
    }
}
