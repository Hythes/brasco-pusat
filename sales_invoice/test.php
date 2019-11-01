<?php

require '../env.php';
$i = 1;
$dataModal = array();
$kodeCustomer = 'CST-001';
foreach (query("SELECT * FROM packing") as $data) {
    $sessData2 = array();

    $sessData2['nomor_packing'] = $data['nomor_packing'];
    $sessData2['tanggal'] = $data['tanggal'];
    $sessData2['id'] = $i;
    $sessData2['item'] = array();

    foreach (query("SELECT * FROM packing_item WHERE nomor_packing = '$data[nomor_packing]'") as $data2) {
        $dataPickingItem  = query("SELECT * FROM picking_item WHERE id = '$data2[id_picking_item]'")[0];
        $dataInventory = query("SELECT * FROM inventory WHERE barcode = '$dataPickingItem[barcode]'")[0];
        $dataCustomer = query("SELECT * FROM customer WHERE kode = '$kodeCustomer'")[0];

        if ($dataCustomer['tipe_customer'] == '1') $hargaSatuan = $dataInventory['harga_jual1'];
        if ($dataCustomer['tipe_customer'] == '2') $hargaSatuan = $dataInventory['harga_jual2'];
        if ($dataCustomer['tipe_customer'] == '3') $hargaSatuan = $dataInventory['harga_jual3'];

        $sessData['quantity'] = $dataInventory['quantity'];
        $sessData['totalHarga'] = intval($sessData['quantity']) * intval($hargaSatuan);
        $sessData['harga_satuan'] = $hargaSatuan;
        $sessData['nama_item'] = $dataInventory['nama_barang'];

        array_push($sessData2['item'], $sessData);
    }
    $i++;
    array_push($dataModal, $sessData2);
}
print_r($dataModal);
