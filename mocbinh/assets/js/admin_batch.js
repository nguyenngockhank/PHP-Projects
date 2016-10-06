$(function() {
    $("#ajax_list").bind("DOMSubtreeModified", function() {

        $('.calc_pos').click(function() {
            var instance = this;
            var id = $(this).data('id')

            $.ajax({
                url: site_url + 'ajax/import/setpos/' + id
            }).done(function(data) {
                console.log(data);
                if (data === 'false')
                    alert('Something wrong happened !!!')
                $(instance).parent().html(data);
            }).fail(function() {
                alert('Refresh page and try again !!!')
            });

            console.log('calc' + id);
            return false;
        });
    });
})