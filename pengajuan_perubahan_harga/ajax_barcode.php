<?php

require('../env.php');



if (isset($_POST['barcode'])) {
    $barcode = $_POST['barcode'];
    header('Content-Type: Application/Json');
    $sql = mysqli_query($conn, "SELECT * FROM inventory WHERE barcode = '$barcode'");
    $data = mysqli_fetch_assoc($sql);
    if ($data) {
        echo json_encode($data);
    } else {
        echo json_encode(['msg' => 'Tidak Ditemukan Data', 'err' => mysqli_error($conn)]);
    }
    mysqli_close($conn);
}

if (isset($_POST['simpan'])) {
    $sql = '';
    header('Content-Type: Application/Json');
    $input = $_POST['data'];
    $inti = $_POST['inti'];
    $nomor_pengajuan = $inti['nomor_pengajuan'];
    $tipe_customer  = $inti['tipe_customer'];
    $tanggal = $inti['tanggal'];
    foreach ($input as $data) {
        $barcode = $data['barcode'];
        $harga_lama = $data['harga_jual_lama'];
        $harga_baru = $data['harga_jual_baru'];
        $ket = $data['keterangan'];
        $qty = $data['quantity'];

        $sql .= "INSERT INTO pengajuan_perubahan_harga(nomor_pengajuan,tanggal,tipe_customer,barcode_inventory,harga_jual_lama,harga_jual_baru,quantity,keterangan) VALUES('$nomor_pengajuan',CAST('$tanggal' AS DATE),'$tipe_customer','$barcode','$harga_lama','$harga_baru','$qty','$ket');";
    }
    if (mysqli_multi_query($conn, $sql)) {
        if (intval($tipe_customer) == 1) {
            $sql2 = "UPDATE inventory SET harga_jual1 ='$harga_baru' WHERE barcode = $barcode";
        }
        if (intval($tipe_customer) == 2) {
            $sql2 = "UPDATE inventory SET harga_jual2 ='$harga_baru' WHERE barcode = $barcode";
        }
        if (intval($tipe_customer) == 3) {
            $sql2 = "UPDATE inventory SET harga_jual3 ='$harga_baru' WHERE barcode = $barcode";
        }
        $query2 = mysqli_query($conn, $sql2);
        if ($query2) {
            echo json_encode(['msg' => 'berhasil']);
        } else {
            echo json_encode([
                'msg' => 'err Insert',
                'err' => mysqli_error($conn)
            ]);
        }
    } else {
        echo json_encode([
            'err' => mysqli_error($conn)
        ]);
    }
}
