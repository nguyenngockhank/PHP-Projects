$(document).ready(function() {
    $("#ajax_list").bind("DOMSubtreeModified", function() {
        $('.chk_idea').on('click', function() {
            var value = $(this).data('accept');
            var idea = $(this).parent();
            var idea_id = $(idea).data('id');

            $('#ck-' + idea_id + ' .chk_idea').prop('disabled', true);

            if (value == 1) {
                $.ajax({
                    url: base_url + "admin/idea/ajax_accept/" + idea_id + '/' + value
                }).done(function(data) {
                    if (data === '1') {
                        $(idea).replaceWith('Đã chấp nhận');
                    }
                    console.log(data)
                }).fail(function() {
                    $('#ck-' + idea_id + ' .chk_idea').prop('disabled', false);
                });
            }
        });
    });
});

