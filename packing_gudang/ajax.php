<?php
require '../env.php';
if (isset($_GET['request'])) {
    $req = $_GET['request'];
    header('Content-Type: Application/Json');
    if ($req == 'data_picking') {
        $return = array();
        $i = 1;
        foreach (query("SELECT * FROM picking_item") as $pick) {
            $d  = query(sprintf("SELECT * FROM picking WHERE nomor_picking = '%s'", $pick['nomor_picking']))[0];
            $bar = query(sprintf("SELECT * FROM inventory WHERE barcode = '%s'", $pick['barcode']))[0];
            $data = [
                'i' => $i++,
                'tanggal' => $d['tanggal'],
                'kode_customer' => $d['kode_customer'],
                'nomor_picking' => $pick['nomor_picking'],
                'nama_barang' => $bar['nama_barang'],
                'quantity_picking' => $pick['quantity_picking'],
                'quantity_packing' => $pick['quantity_packing'],
                'barcode' => $pick['barcode'],
                'total' => intval($pick['quantity_picking']) - intval($pick['quantity_packing'])
            ];
            array_push($return, $data);
        }
        echo json_encode($return);
    }
}


/* <td><?= $i2 ?></td>
    <td><?= $d['tanggal'] ?></td>
    <td><?= $d['kode_customer'] ?></td>
    <td><?= $pick['nomor_picking'] ?></td>
    <td><?= $bar['nama_barang'] ?></td>
    <td><?= $pick['quantity_picking'] ?></td>
    <td><?= $pick['quantity_packing'] ?></td>
    <td><?= intval($pick['quantity_picking']) - intval($pick['quantity_packing']) ?></td> 
*/
