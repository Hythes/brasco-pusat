<?php $role = "procurement" ?>

<script>
    var active = 'header_supplier';
    var active_2 = 'header_supplier_tempo';
</script>
<?php $title = "Jatuh Tempo Pembayaran";
require '../env.php' ?>
<?php include('../templates/header.php') ?>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
            <h1>
                Aging AP
                <small>it all starts here</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Examples</a></li>
                <li class="active">Blank page</li>
            </ol>
        </section> -->

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="row">
                    <div class="col-sm-7">
                        <h3 class="box-title">JATUH TEMPO PEMBAYARAN</h3>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <p class="col-sm-5" for="formtanggal">Tanggal Cetak</p>
                            <div class="col-sm-7">
                                <div class="input-group">
                                    <input type="date" readonly id="tanggal_now" value="<?= date('Y-m-d') ?>" class="form-control">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- box body -->
            <div class="box-body">
                <div class="">
                    <!-- grid buat tanggal jatuh tempo -->
                    <form>
                        <div class="row">
                            <div class="col-sm-5">
                                <!-- date picker jatuh tempo pembayaran -->
                                <div class="form-group">
                                    <label class="col-sm-4 control-label-inline" for="formtanggal">Tgl Jatuh Tempo</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="date" id="tanggal_satu" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.form group -->
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <!-- date picker jatuh tempo pembayaran -->
                                <div class="form-group">
                                    <label class="col-sm-1 control-label" for="formtanggal">s/d</label>
                                    <div class="col-sm-8">
                                        <div class="input-group" style="width: 40%;">
                                            <input type="date" id="tanggal_dua" class="form-control">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="button" id="search" class="btn btn-primary col-sm-2">Search</button>
                                    <!-- /.form group -->
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- table -->
                <table id="data-table" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Invoice</th>
                            <th>Supplier</th>
                            <th>Tanggal Jatuh Tempo</th>
                            <th>Belum Jatuh tempo</th>
                            <th>1-30</th>
                            <th>31-60</th>
                            <th>61-90</th>
                            <th>>90</th>
                        </tr>
                    </thead>
                    <tbody id="tabl">
                    </tbody>
                </table>

            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                Footer
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?= jquery() ?>
<script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
    $('#search').click(function() {
        $('#tabl').html('')
        var tanggal1 = $('#tanggal_satu').val()
        var tanggal2 = $('#tanggal_dua').val()
        $.post('master_supplier/backend.php', {
            'params': 1,
            'tanggal_satu': tanggal1,
            'tanggal_dua': tanggal2
        }, function(response) {
            console.log(response)
            return false
            res = JSON.parse(response)
            
            no = 1
            res.forEach(element => {
                $('#tabl').append(`
                    <tr>
                    <td> ${no++} </td>
                    <td> ${element.invoice} </td>
                    <td> ${element.nama_supplier} </td>
                    <td> ${element.tanggal_jatuh_tempo} </td>
                    <td> ${element.belum_jatuh_tempo} </td>
                    <td> ${element.tiga_puluh} </td>
                    <td> ${element.enam_puluh} </td>
                    <td> ${element.sembilan_puluh} </td>
                    <td> ${element.lebih_sembilan_puluh} </td>
                    </tr>`)
            })
        })
    })
</script>
<script>
    $(function() {
        $('#example1').DataTable()
        $('#data-table').DataTable({
            'paging': true,
            'lengthChange': false,
            'searching': true,
            'ordering': true,
            'info': true,
            'autoWidth': false,
            dom: 'Bfrtip',
            buttons: [{
                    extend: 'pdfHtml5',
                    orientation: 'landscape',
                    pageSize: 'LEGAL'
                },
                {
                    extend: 'print',
                    customize: function(win) {
                        $(win.document.body)
                            .css('font-size', '10pt')

                        $(win.document.body).find('table')
                            .addClass('compact')
                            .css('font-size', 'inherit');
                    }
                },
                {
                    extend: 'excel',
                    text: 'Excel',
                    exporOptions: {
                        modifier: {
                            page: 'current'
                        }
                    }
                },
                {
                    extend: 'csv',
                    text: 'CSV'
                },
                {
                    extend: 'copy',
                    text: 'Copy'
                }
            ]
        })
    })
</script>
<?php include('../templates/footer.php') ?>