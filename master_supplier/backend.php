            <?php $role = "procurement" ?>
            <?php
            include '../env.php';
            extract($_POST);
            if ($params == 1) {
                $json = array();
                $arr = array();
                $tanggal_tempo = query("SELECT * FROM purchasing WHERE tanggal_jatuh_tempo BETWEEN '$tanggal_satu' AND '$tanggal_dua'");
                foreach ($tanggal_tempo as $purchasing) {
                    $arr['invoice'] = $purchasing['kode'];
                    $kode_pu = $arr['invoice'];
                    $arr['tanggal_jatuh_tempo'] = $purchasing['tanggal_jatuh_tempo'];
                    $tanggal_now = date('Y-m-d', strtotime('now'));
                    $tiga_puluh = date('Y-m-d', strtotime('-30 days'));
                    $enam_puluh = date('Y-m-d', strtotime('-60 days'));
                    $sembilan_puluh = date('Y-m-d', strtotime('-90 days'));
                    $kode = $purchasing['kode_supplier'];
                    $kondisi = $arr['tanggal_jatuh_tempo'] < $tanggal_now;
                    if ($kondisi) {
                        $puItem = query("SELECT quantity_terima,harga_satuan FROM purchasing_item WHERE kode_pu='$kode_pu'");
                        foreach ($puItem as $total) {
                            if ($arr['tanggal_jatuh_tempo'] > $tiga_puluh) {
                                if (isset($arr['satu_bulan'])) {
                                    $arr['satu_bulan'] += $total['quantity_terima'] * $total['harga_satuan'];
                                } else {
                                    $arr['satu_bulan']  = $total['quantity_terima'] * $total['harga_satuan'];
                                }
                            } else if ($arr['tanggal_jatuh_tempo'] > $enam_puluh) {
                                if (isset($arr['dua_bulan'])) {
                                    $arr['dua_bulan'] += $total['quantity_terima'] * $total['harga_satuan'];
                                } else {
                                    $arr['dua_bulan']  = $total['quantity_terima'] * $total['harga_satuan'];
                                }
                            } else if ($arr['tanggal_jatuh_tempo'] > $sembilan_puluh) {
                                if (isset($arr['tiga_bulan'])) {
                                    $arr['tiga_bulan'] += $total['quantity_terima'] * $total['harga_satuan'];
                                } else {
                                    $arr['tiga_bulan']  = $total['quantity_terima'] * $total['harga_satuan'];
                                }
                            } else {
                                if (isset($arr['lebih_dari_tiga_bulan'])) {
                                    $arr['lebih_dari_tiga_bulan'] += $total['quantity_terima'] * $total['harga_satuan'];
                                } else {
                                    $arr['lebih_dari_tiga_bulan']  = $total['quantity_terima'] * $total['harga_satuan'];
                                }
                            }
                        }
                    } else if (!$kondisi) {
                        $puItem = query("SELECT quantity_terima,harga_satuan FROM purchasing_item WHERE kode_pu='$kode_pu'");
                        foreach ($puItem as $total) {
                            if (isset($arr['belum_jatuh_tempo'])) {
                                $arr['belum_jatuh_tempo'] += $total['quantity_terima'] * $total['harga_satuan'];
                            } else {
                                $arr['belum_jatuh_tempo']  = $total['quantity_terima'] * $total['harga_satuan'];
                            }
                        }
                    }

                    $kode_sup = query("SELECT * FROM supplier WHERE kode = '$kode'");
                    foreach ($kode_sup as $supplier) {
                        $arr['nama_supplier'] = $supplier['nama'];
                    }
                    array_push($json, $arr);
                }
                echo json_encode($json);
            }
            if ($params == 2) { }

            function kodee($data)
            {
                $tanggal_now = date('Y-m-d', strtotime('now'));
                $tanggal_satu = date('Y-m-d', strtotime('- 1 years'));
                $tanggal_dua = date('Y-m-d', strtotime('- 2 years'));
                $tanggal_tiga = date('Y-m-d', strtotime('- 3 years'));
                $arr = array();
                $arr['kode_supplier'] = $data['kode'];
                $arr['nama_supplier'] = $data['nama'];
                $arr['saldo_awal'] = $data['saldo_awal'];
                $arr['saldo_jalan'] = $data['saldo_jalan'];
                if ($data['tanggal_jatuh_tempo'] > $tanggal_satu && $data['tanggal_jatuh_tempo'] <= $tanggal_now) {
                    $arr['harga_satu'] = $data['quantity_terima'] * $data['harga_satuan'];
                } else {
                    $arr['harga_satu'] = "-";
                }
                if ($data['tanggal_jatuh_tempo'] > $tanggal_dua && $data['tanggal_jatuh_tempo'] <= $tanggal_satu) {
                    $arr['harga_dua'] = $data['quantity_terima'] * $data['harga_satuan'];
                } else {
                    $arr['harga_dua'] = "-";
                }
                if ($data['tanggal_jatuh_tempo'] > $tanggal_tiga && $data['tanggal_jatuh_tempo'] <= $tanggal_dua) {
                    $arr['harga_tiga'] = $data['quantity_terima'] * $data['harga_satuan'];
                } else {
                    $arr['harga_tiga'] = "-";
                }
                if ($data['tanggal_jatuh_tempo'] <= $tanggal_tiga) {
                    $arr['harga_empat'] = $data['quantity_terima'] * $data['harga_satuan'];
                } else {
                    $arr['harga_empat'] = "-";
                }
                return $arr;
            }
