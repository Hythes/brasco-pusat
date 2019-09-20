$(document).ready(function () {
    if (active == 'header_profil') {
        $('#header_profil').addClass('active');
    }

    if (active == 'header_jurnal') {
        $('#header_jurnal').addClass('active');
    }
    if (active == 'header_customer') {
        $('#header_customer').addClass('active');
    }

    if (active == 'header_inventory') {
        $('#header_inventory').addClass('active');
        if (active_2 == 'header_inventory_master') {
            $('#header_inventory_master').addClass('active');
        }
        if (active_2 == 'header_inventory_search') {
            $('#header_inventory_search').addClass('active');
        }
        if (active_2 == 'header_inventory_edit') {
            $('#header_inventory_edit').addClass('active');
        }
    }

    if (active == 'header_stock') {
        $('#header_stock').addClass('active');
        if (active_2 == 'header_stock_input') {
            $('#header_stock_input').addClass('active');
        }
        if (active_2 == 'header_stock_selisih') {
            $('#header_stock_selisih').addClass('active');
        }
    }

    if (active == 'header_perubahan') {
        $('#header_perubahan').addClass('active');
        if (active_2 == 'header_perubahan_pengajuan') {
            $('#header_perubahan_pengajuan').addClass('active');
        }
        if (active_2 == 'header_perubahan_approval') {
            $('#header_perubahan_approval').addClass('active');
        }
    }

    if (active == 'header_supplier') {
        $('#header_supplier').addClass('active');
        if (active_2 == 'header_supplier_master') {
            $('#header_supplier_master').addClass('active');
        }
        if (active_2 == 'header_supplier_list') {
            $('#header_supplier_list').addClass('active');
        }
        if (active_2 == 'header_supplier_hutang') {
            $('#header_supplier_hutang').addClass('active');
        }
        if (active_2 == 'header_supplier_saldo') {
            $('#header_supplier_saldo').addClass('active');
        }
        if (active_2 == 'header_supplier_tempo') {
            $('header_supplier_tempo').addClass('active');
        }
    }

    if (active == 'header_po') {
        $('#header_po').addClass('active');
        if (active_2 == 'header_purchase_order') {
            $('#header_purchase_order').addClass('active');
        }
        if (active_2 == 'header_purchase_cetak') {
            $('#header_purchase_cetak').addClass('active');
        }
        if (active_2 == 'header_purchase_data') {
            $('#header_purchase_data').addClass('active');
        }
        if (active_2 == 'header_purchase_approval') {
            $('#header_purchase_approval').addClass('active');
        }
        if (active_2 == 'header_purchase_status') {
            $('#header_purchase_status').addClass('active');
        }
        if (active_2 == 'header_purchase_closed') {
            $('#header_purchase_closed').addClass('active');
        }
    }

    if (active == 'header_purchasing') {
        $('#header_purchasing').addClass('active');
        if (active_2 == 'header_purchasing_input') {
            $('#header_purchasing_masuk').addClass('active');
        }
        if (active_2 == 'header_purchasing_masuk') {
            $('#header_purchasing_masuk').addClass('active');
        }
        if (active_2 == 'header_purchasing_list') {
            $('#header_purchasing_list').addClass('active');
        }
    }

    if (active == 'header_sales') {
        $('#header_sales').addClass('active');
        if (active_2 == 'header_sales_input') {
            $('#header_sales_input').addClass('active');
        }
        if (active_2 == 'header_sales_laporan') {
            $('#header_sales_laporan').addClass('active');
        }
        if (active_2 == 'header_sales_detail') {
            $('#header_sales_detail').addClass('active');
        }
        if (active_2 == 'header_sales_edit') {
            $('#header_sales_edit').addClass('active');
        }
        if (active_2 == 'header_sales_list') {
            $('#header_sales_list').addClass('active');
        }
        if (active_2 == 'header_sales_gudang') {
            $('#header_sales_gudang').addClass('active');
        }
    }

    if (active == 'header_packing') {
        $('#header_packing').addClass('active');
        if (active_2 == 'header_picking_list') {
            $('#header_picking_list').addClass('active');
        }
        if (active_2 == 'header_picking_gudang') {
            $('#header_picking_gudang').addClass('active');
        }
        if (active_2 == 'header_packing_list') {
            $('#header_packing_list').addClass('active');
        }
        if (active_2 == 'header_packing_gudang') {
            $('#header_packing_gudang').addClass('active');
        }
    }

    if (active == 'header_invoice') {
        $('#header_invoice').addClass('active');
    }

    if (active == 'header_surat_jalan') {
        $('#header_surat_jalan').addClass('active');
    }

    if (active == 'header_kwitansi') {
        $('#header_kwitansi').addClass('active');
    }

    if (active == 'header_retur') {
        $('#header_retur').addClass('active');
    }

    if (active == 'header_diskon') {
        $('#header_diskon').addClass('active');
    }
})




$('#title').val(title);
function delayTimes(callback, ms) {
    var timer = 0;
    return function () {
        var context = this, args = arguments;
        clearTimeout(timer);
        timer = setTimeout(function () {
            callback.apply(context, args);
        }, ms || 0);
    };
}

$('#insert_pph').on('click', function () {

    var data = {
        'barcode': $('#barcode_pph').val(),
        'harga_jual_lama': $('#jual_pph').val(),
        'harga_jual_baru': $('#harga_baru').val(),
        'quantity': $('#qty').val(),
        'keterangan': $('#keterangan').val()
    }
    if (!Number.isInteger(parseInt(data.harga_jual_baru)) || !Number.isInteger(parseInt(data.quantity))) {
        alert('Harga / Quantity Harus Berbentuk angka');
        return;

    }
    simpanData.push(data);
    $('#table').append(
        '<tr id="tr_pph_' + i + '">' +
        '<td>' + i + '</td>' +
        '<td>' + data.barcode + '</td>' +
        '<td>' + $('#item_pph').val() + '</td>' +
        '<td>' + data.harga_jual_lama + '</td>' +
        '<td>' + data.harga_jual_baru + '</td>' +
        '<td>' + data.quantity + '</td>' +
        '<td>' + data.keterangan + '</td>' +
        '<td onclick="hapus_pph(' + i + ')" style="cursor:pointer; color: red;" > Hapus' + '</td>' +
        '</tr>'
    );
    i++;
});
function hapus_pph(number) {
    $('#tr_pph_' + number).remove();
    console.log(number);
}
$('#simpan_pph').on('click', function () {
    var owo = {
        'nomor_pengajuan': $('#nomorpengajuan').val(),
        'tanggal': $('#formtanggal').val(),
        'tipe_customer': $('#tipecustomer_pph').children("option:selected").val(),
    }
    $.ajax({
        url: './pengajuan_perubahan_harga/ajax_barcode.php',
        type: 'POST',
        data: {
            'simpan': 'yes',
            'data': simpanData,
            'inti': owo
        },
        complete: function (res) {
            var response = JSON.parse(res.responseText);
            console.log(response);
            if (response.msg == "berhasil") {
                alert('Data Berhasil Masuk');
                window.location.reload();
            } else {
                alert('Data Gagal Masuk');
                if (response.err = "Column 'tanggal' cannot be null") {
                    alert('Tolong diisi tanggalnya');
                }
            }
        },
        error: function (jqXHR, textStatus, err) {
            console.log(textStatus + err + jqXHR);
        }
    })
})

$('#barcode_pph').keyup(delayTimes(function () {
    $.ajax({
        url: './pengajuan_perubahan_harga/ajax_barcode.php',
        type: 'POST',
        data: {
            "barcode": $('#barcode_pph').val()
        },
        complete: function (response, text, XHR) {
            var res = JSON.parse(response.responseText);
            $('#item_pph').val(res.nama_barang);
            var tipe_pelanggan = $('#tipecustomer_pph').children("option:selected").val();
            if (tipe_pelanggan == 1) {
                $('#jual_pph').val(res.harga_jual1);
            }
            else if (tipe_pelanggan == 2) {
                $('#jual_pph').val(res.harga_jual2);
            }
            else if (tipe_pelanggan == 3) {
                $('#jual_pph').val(res.harga_jual3);
            }
        }
    })
}, 500));

$('#barcode').on('click', function () {
    console.log($('#isi_barcode').val());

    if ($('#isi_barcode').val() == null) {
        alert('Tolong diisi barcodenya');
        return;
    }
    $.ajax({
        url: './master_inventory/cekBarcode.php',
        type: 'POST',
        data: {
            "barcode": $('#isi_barcode').val()
        },
        complete: function (response, textStatus, jqXHR) {
            var respon = JSON.parse(response.responseText);
            if (respon.result == 0) {
                alert("Barcode bisa digunakan!");
            } else {
                alert("Barcode tidak bisa digunakan!");
            }


        },
        error: function (jqXHR, textStatus, err) {
            console.log(textStatus + err + jqXHR);
        }
    });
})