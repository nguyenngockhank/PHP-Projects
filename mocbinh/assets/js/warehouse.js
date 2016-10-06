var warehouse = {
    set_status_pos: function(link, status) {
        $.get(site_url + 'ajax/warehouse/' + link, function(data) {
            var arr_json = JSON.parse(data);
            for (var i = 0, len = arr_json.length; i < len; i++) {
                var pos = arr_json[i];
                var span = $('#bin-' + pos.bin).find('[data-col="' + pos.col + '"][data-row="' + pos.row + '"]');
                if (span.length) {
                    $(span).parent().addClass(status);
                }
            }

        });
    },
    set_error_pos: function() {
        this.set_status_pos('pos_error', 'error');
    },
    set_stored_pos: function() {
        this.set_status_pos('pos_stored', 'success');
    },
    set_check_pos: function() {
        this.set_status_pos('pos_check', 'warning');
    },
    get_bin_detail: function(bin, row, col) {
        $.get(site_url + 'ajax/warehouse/bin_detail/' + bin + '/' + row + '/' + col, function(data) {
            var json = JSON.parse(data);
            console.log(json)
            $('#medit').data('id', json.position_id);
            if (json.barcode) {
                $('#mbarcode').html(json.barcode);
                if (json.batch_id) {
                    $('#mbatch').html(json.batch_id);
                } else {
                    $('#mbatch').html('None');
                }
            } else {
                $('#mbarcode').html('None');
                $('#mbatch').html('None');
            }
        });
    },
    set_event_pos: function() {
        $('.pos').click(function() {
            var zbin = $(this).parent().parent().parent();
            var bin = $(zbin).data('bin');

            if (typeof bin != 'undefined') {
                var x = $(this).find('span').data('col');
                var y = $(this).find('span').data('row');
                $('#mpos').html(bin + 'x' + y + 'x' + x)

                // SET STATUS
                if ($(this).hasClass('success')) {
                    $('#mstatus').html('Storing');
                } else if ($(this).hasClass('warning')) {
                    $('#mstatus').html('Waiting confirm');
                } else if ($(this).hasClass('error')) {
                    $('#mstatus').html('Error');
                } else {
                    $('#mstatus').html('Available');
                }
                // GET BIN DETAIL
                warehouse.get_bin_detail(bin, y, x);
            }
            // SHOW MODAL
            $('#myModal').modal('show');
        });

        $('#medit').click(function() {
            var id = $(this).data('id');
            console.log(id);
            if (id)
                location.href = site_url + 'admin/bin/detail/all/edit/' + id;
        });
    },
    start: function() {
        this.set_stored_pos();
        this.set_check_pos();
        this.set_error_pos();

        this.set_event_pos();
    },
}


$(document).ready(function() {
    warehouse.start();
});
