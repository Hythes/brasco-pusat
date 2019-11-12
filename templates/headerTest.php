<?php
$base = "http://192.168.0.109:80/brasco/";
session_start();
if (!isset($_SESSION['is_admin'])) {
    return header("Location: " . $base . "login.php?err=1  ");
}
if ($_SESSION['admin']['groupType'] !== $role && $role !== 'index') {
    return header("Location: " . $base . "index.php?err=1  ");
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <base href="<?= $base ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title id="title"><?= $title ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="assets/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
  folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="assets/bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="assets/bower_components/jvectormap/jquery-jvectormap.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="assets/bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- button datatables -->
    <link rel="stylesheet" href="assets/bower_components/datatables.net/css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="assets/bower_components/select2/dist/css/select2.min.css">
    <!-- datatables css -->
    <!-- <link rel="stylesheet" href="assets/bower_components/datatables.net/css/jquery.dataTables.min.css"> -->

    <!-- Google Font -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->

    <style>
        .example-modal .modal {
            position: relative;
            top: auto;
            bottom: auto;
            right: auto;
            left: auto;
            display: block;
            z-index: 1;
        }

        .example-modal .modal {
            background: transparent !important;
        }
    </style>

</head>
<?php if (isset($_GET['err'])) : ?>
    <script>
        alert('Tidak diperbolehkan!')
    </script>
<?php endif; ?>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="index.php" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b>LT</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>BRASCO </b>PUSAT</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <?= ucfirst($_SESSION['admin']['username']) ?>
                                <!-- <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
                            </a>
                            <ul class="dropdown-menu">
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="mx-auto">
                                        <a href="logout.php" class="btn btn-default btn-flat" onclick="return confirm('Anda yakin ingin logout?')>Logout</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <!-- <li>
                            <a href=" #" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                                </li> -->
                            </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <!-- <div class="user-panel">
          <div class="pull-left image">
            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p>Alexander Pierce</p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
          </div>
        </div> -->
                <!-- search form -->
                <!-- <form action="#" method="get" class="sidebar-form">
          <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
          </div>
        </form> -->
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">INVENTORY</li>
                    <li class="treeview" id="header_diskon">
                        <a href="#">
                            <i class="fa fa-percent"></i>
                            <span>Diskon Barang Reject</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_diskon_buat">
                                <a href="diskon_barang/buat.php"><i class="fa fa-circle-o"></i> <span>Buat Diskon</span></a>
                            </li>
                            <li id="header_diskon_approval">
                                <a href="diskon_barang/approval.php"><i class="fa fa-circle-o"></i><span>Approval Diskon</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview" id="header_perubahan">
                        <a href="#">
                            <i class="fa fa-dollar"></i>
                            <span>Perubahan Harga</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_perubahan_pengajuan"><a href="pengajuan_perubahan_harga"><i class="fa fa-circle-o"></i>Pengajuan Perubahan Harga</a></li>
                            <li id="header_perubahan_approval"><a href="pengajuan_perubahan_harga/approval.php"><i class="fa fa-circle-o"></i>Approval Perubahan Harga</a></li>
                            <li id="header_perubahan_status"><a href="pengajuan_perubahan_harga/status.php"><i class="fa fa-circle-o"></i>Status Perubahan Harga</a></li>
                        </ul>
                    </li>

                    <li class="treeview" id="header_inventory">
                        <a href="#"><i class="fa fa-cubes"></i>
                            <span>Inventori</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_inventory_master"><a href="master_inventory"><i class="fa fa-circle-o"></i> Master Inventori</a></li>
                            <li id="header_satuan_master"><a href="master_inventory/master_satuan.php"><i class="fa fa-circle-o"></i> Master Satuan</a></li>
                            <li id="header_type_barang"><a href="master_inventory/type_barang.php"><i class="fa fa-circle-o"></i>Type Barang</a></li>
                            <!-- <li id="header_inventory_search"><a href="master_inventory/"><i class="fa fa-circle-o"></i>Search Data Inventory</a></li> -->
                            <!-- <li id="header_inventory_edit"><a href="master_inventory/ubah.php"><i class="fa fa-circle-o"></i>Edit Data Inventory</a></li> -->
                        </ul>
                    </li>
                    <li class="treeview" id="header_stock">
                        <a href="#"><i class="fa fa-cube"></i>
                            <span>Stock Opname</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_stock_input"><a href="stock_opname"><i class="fa fa-circle-o"></i>Input Hasil Stock Opname</a></li>
                            <li id="header_stock_selisih"><a href="selisihStokOpname.php"><i class="fa fa-circle-o"></i>Selisih Stock Opname</a></li>
                        </ul>
                    </li>
                    <li class="header">PEMASARAN</li>
                    <li class="treeview" id="header_order">
                        <a href="#">
                            <i class="fa fa-flip-horizontal fa-truck"></i>
                            <span>Order Gudang</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_order_list">
                                <a href="order_gudang/list_order.php"><i class="fa fa-circle-o"></i> <span>List Order ke Gudang</span></a>
                            </li>
                            <li id="header_order_input">
                                <a href="order_gudang/input_order.php"><i class="fa fa-circle-o"></i> <span>Order ke Gudang</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview" id="header_picking">
                        <a href="#">
                            <i class="fa  fa-truck"></i>
                            <span>Picking Gudang</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_picking_list">
                                <a href="picking_gudang/list.php"><i class="fa fa-circle-o"></i> <span>List Picking Gudang</span></a>
                            </li>
                            <li id="header_picking_gudang">
                                <a href="picking_gudang/input.php"><i class="fa fa-circle-o"></i> <span> Picking Gudang</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview" id="header_packing">
                        <a href="#">
                            <i class="fa fa-dropbox"></i>
                            <span>Packing Gudang</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_packing_list">
                                <a href="packing_gudang/list.php"><i class="fa fa-circle-o"></i> <span>List Packing Gudang</span></a>
                            </li>
                            <li id="header_packing_gudang">
                                <a href="packing_gudang/input.php"><i class="fa fa-circle-o"></i> <span> Packing Gudang</span></a>
                            </li>
                        </ul>
                    </li>
                    <li id="header_customer">
                        <a href="master_customer"><i class="fa fa-users"></i> <span>Data Master Customer</span></a>
                    </li>
                    <li id="header_invoice">
                        <a href="sales_invoice/buat.php"><i class="fa fa-fax"></i> <span>Sales Invoice</span></a>
                    </li>
                    <li id="header_invoice">
                        <a href="sales_invoice/buat.php"><i class="fa fa-fax"></i> <span>Kas Dan Bank (Joko)</span></a>
                    </li>
                    <li class="treeview" id="header_sales">
                        <a href="#">
                            <i class="fa fa-user-secret"></i>
                            <span>Sales Order</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_sales_input">
                                <a href="sales_order/input_so.php"><i class="fa fa-circle-o"></i> <span>Input Sales Order</span></a>
                            </li>
                            <li id="header_sales_laporan">
                                <a href="sales_order/laporan_so.php"><i class="fa fa-circle-o"></i> <span>Laporan Sales Order</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="header">PROCUREMENT</li>
                    <li id="header_retur">
                        <a href="retur_pembelian_barang"><i class="fa  fa-cart-arrow-down"></i> <span>Retur Pembelian Barang</span></a>
                    </li>
                    <li class="treeview" id="header_supplier">
                        <a href="#">
                            <i class="fa fa-archive"></i>
                            <span>Supplier</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_supplier_master"><a href="master_supplier"><i class="fa fa-circle-o"></i>Master Supplier</a></li>
                            <li id="header_supplier_list">
                                <a href="master_supplier/list_supplier"><i class="fa fa-circle-o"></i><span>List Supplier</span></a>
                            </li>
                            <li id="header_supplier_hutang">
                                <a href="master_supplier/list_hutang.php"><i class="fa fa-circle-o"></i><span>List Hutang</span></a>
                            </li>
                            <li id="header_supplier_tempo">
                                <a href="master_supplier/aging.php"><i class="fa fa-circle-o"></i> <span>Jatuh Tempo Pembayaran</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview" id="header_po">
                        <a href="#">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Purchase Order</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_purchase_order">
                                <a href="purchase_order"><i class="fa fa-circle-o"></i>Purchase Order</a>
                            </li>
                            <!-- <li id="header_purchase_cetak">
                <a href="purchase_order/cetak_label_barcode.php"><i class="fa fa-circle-o"></i> <span>Cetak Label Barcode</span></a>
              </li> -->
                            <li id="header_purchase_data">
                                <a href="purchase_order/data_purchase_order.php"><i class="fa fa-circle-o"></i> <span>Data Purchase Order</span></a>
                            </li>
                            <li id="header_purchase_approval">
                                <a href="purchase_order/approve_po.php"><i class="fa fa-circle-o"></i> <span>Approval PO Manager</span></a>
                            </li>
                            <li id="header_purchase_status">
                                <a href="purchase_order/status.php"><i class="fa fa-circle-o"></i> <span>Status Approval PO</span></a>
                            </li>
                            <li id="header_purchase_closed">
                                <a href="purchase_order/closed_po.php"><i class="fa fa-circle-o"></i> <span>Menu Closed PO</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview" id="header_purchasing">
                        <a href="#">
                            <i class="fa fa-usd"></i>
                            <span>Purchasing</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li id="header_purchasing_input">
                                <a href="purchasing/input_pu.php"><i class="fa fa-circle-o"></i> <span>Input Barang Masuk</span></a>
                            </li>
                            <li id="header_purchasing_masuk">
                                <a href="purchasing/laporan_pu.php"><i class="fa fa-circle-o"></i> <span>Laporan Barang Masuk</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="header">UTILITY</li>
                    <li id="header_admin">
                        <a href="setup_admin"><i class="fa fa-users"></i> <span>Setup Admin</span></a>
                    </li>
                    <li id="header_profil">
                        <a href="profile"><i class="fa fa-user"></i> <span>Setup Profile</span></a>
                    </li>
                    <li id="header_counter">
                        <a href="setting_counter"><i class="fa fa-clock-o"></i> <span>Setup Counter</span></a>
                    </li>
                    <li id="header_jurnal">
                        <a href="jurnal_referensi"><i class="fa fa-calendar-o"></i> <span>Jurnal Referensi</span></a>
                    </li>

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>