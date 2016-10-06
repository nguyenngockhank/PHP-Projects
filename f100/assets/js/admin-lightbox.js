$(function() {
    if ($('#selection').length > 0) {
        var href = location.href;
        var pos = href.lastIndexOf('/');
        var id = href.substr(pos + 1);
        if (id >= 0) {
            $('#selection').val(id);
        } else {
            var link = href.substr(0, pos + 1);
            location.href = link + $('#selection').val();
        }

        $('#selection').change(function() {
            var link = href.substr(0, pos + 1);
            location.href = link + this.value;
        });
    }
});