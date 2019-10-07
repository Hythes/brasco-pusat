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
        if (active_2 == 'header_satuan_master') {
            $('#header_satuan_master').addClass('active');
        }
        if (active_2 == 'header_type_barang') {
            $('#header_type_barang').addClass('active');
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
        if (active_2 == 'header_perubahan_status') {
            $('#header_perubahan_status').addClass('active');
        }
    }

    if (active == 'header_supplier') {
        $('#header_supplier').addClass('active');
        if (active_2 == 'header_supplier_tambah_saldo') {
            $('#header_supplier_tambah_saldo').addClass('active');
        }
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
            $('#header_purchasing_input').addClass('active');
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



//barcode quantity harga_jual keterangan

$('#cetak_barcode_input').on('click', function () {
    $('#table').append(
        '<tr id="tr_po_' + i + '">' +
        '<td>' + i + '</td>' +
        '<td>' + $('#barcode').val() + '</td>' +
        '<td>' + $('#quantity').val() + '</td>' +
        '<td>' + $('#harga_jual').val() + '</td>' +
        '<td>' + $('#keterangan').val() + '</td>' +
        '<td>' + '<button type="button" onclick="po_hapus(' + i + ')" class="btn btn-danger"> Hapus</button>' + '</td>' +
        '</tr>'

    );
    i++;
})

function fix_iteration(nama_table) {
    var num = 1;
    $(nama_table).find('tr').each(function () {
        $(this).find('#icr').each(function () {
            $(this).html(num++);
        });
    });
    num = 1;
}