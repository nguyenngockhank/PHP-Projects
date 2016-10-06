var alert_builder = {
    message: function(message, type) {
        this.html = '<div class="alert alert-' + type + '">'
                + '<button type="button" class="close" data-dismiss="alert">&times;</button>'
                + message
                + '</div>';
        return this.html;
    },
    error: function(message) {
        return this.message(message, 'error');
    },
    success: function(message) {
        return this.message(message, 'success');
    },
    show: function() {
        $('#alert-area').html(this.html);
    }
}

var program = {
    showAlert: function(html) {
        $('#alert-area').html(html);
    },
    resetGUI: function() {
        $('#confirm_barcode').attr('readonly', true);
        $('#alert-area').html('');
        $('#position').val('');
        $('#confirm_barcode').val('');
        $('#batch_barcode').val('').focus();
    }
    ,
    ajaxConfirm: function() {
        $.get(site_url + 'ajax/import/confirm', function(data) {
            console.log(data);
            if (data) {
                var html = alert_builder.success('Confirm successfully !!!');
                program.showAlert(html);
            } else {
                $('#confirm_barcode').val('').focus();
                var html = alert_builder.error('Error: Please input confirm barcode again !!!');
                program.showAlert(html);
            }
        });

    }
    ,
    ajaxPosition: function(batch_barc) {
        var site = site_url + 'ajax/import/getpos/' + batch_barc;
        alert(site);

        $.get(site, function(data) {
            alert(data)
//            console.log(data);
            if (data) {
                var json = JSON.parse(data);
                if (json.barc) {
                    program.command = json;
                    $('#position').val(json.pos);
                    program.confirm();
                } else {
                    $('#batch_barcode').val('').focus();
                    var html = alert_builder.error(json.pos);
                    program.showAlert(html);
                }
            } else {
                $('#batch_barcode').val('').focus();
                var html = alert_builder.error('Error: Batch barcode error !!!');
                program.showAlert(html);
            }
        });
    }
    ,
    start: function() {
//        $('#batch_barcode').val('').focus();

        $('#batch_barcode').keydown(function(event) {
            var value = this.value;
//            if ((event.which == 13 && value.length == 13)) {
//               
//                event.preventDefault();
//
//                if (value) {
//                    program.ajaxPosition(value);
//                }
//            } else
//                
            if (value.length == 12) {
                
                var c = String.fromCharCode(event.which);
                value += c;
//                alert(value)
                if (value) {
                    program.ajaxPosition(value);
                }
            }
        });


        $('#btn-save').click(function() {
            program.resetGUI();
        })

    }
    ,
    confirm: function() {
        $('#confirm_barcode').removeAttr('readonly');
        $('#confirm_barcode').keydown(function(event) {
            if (event.which == 13) {
                event.preventDefault();
                var value = $(this).val().trim();
                if (value) {
                    if (value == program.command.barc) {
                        program.ajaxConfirm();
                    } else {
                        $('#confirm_barcode').val('').focus();
                        var html = alert_builder.error('Error: Please input confirm barcode again !!!');
                        program.showAlert(html);
                    }
                }
            }
        });
    }
}

$(function() {
    program.start();
})