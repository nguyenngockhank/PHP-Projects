var alert = {
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
    start: function() {
        var bar = $('.bar');
        var percent = $('.percent');
        var status = $('#status');
        
        $('form').ajaxForm({
            beforeSend: function() {
                status.empty();
                var percentVal = '0%';
                bar.width(percentVal)
                percent.html(percentVal);
            },
            uploadProgress: function(event, position, total, percentComplete) {
                var percentVal = percentComplete + '%';
                bar.width(percentVal)
                percent.html(percentVal);
                //console.log(percentVal, position, total);
            },
            success: function() {
                var percentVal = '100%';
                bar.width(percentVal)
                percent.html(percentVal);
            },
            complete: function(xhr) {
                status.html(xhr.responseText);
            }
        });
    }
}



$(function() {

    program.start();
})