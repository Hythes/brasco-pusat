$
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


if (active == 'header_profile') {
    $('#header_profile').addClass('active');
}
if (active == 'header_inventory') {
    $('#header_inventory').addClass('active');
    if (active_2 == 'header_inventory_master') {
        $('#header_inventory_master').addClass('active');
    }
    if (active_2 == 'header_inventory_edit') {
        $('#header_inventory_edit').addClass('active');
    }
    if (active_2 == 'header_inventory_search') {
        $('#header_inventory_search').addClass('active');
    }
}
