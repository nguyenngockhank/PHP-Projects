function active_sidebar() {
    console.log(app_router);
    var item = '';
    if (app_router.directory == 'admin/article/') {
        item = $('.sidebar-nav li[data-control="post"]');
    } else if (app_router.directory == 'admin/account/') {
        item = $('.sidebar-nav li[data-control="user"]');
    } else if (app_router.directory == 'admin/product/') {
        item = $('.sidebar-nav li[data-control="product"]');
    } else if (app_router.directory == 'admin/option/') {
        item = $('.sidebar-nav li[data-control="gui"]');
    }
    else {
        var item = $('.sidebar-nav li[data-control="' + app_router.controller + '"]');
    }

    item.addClass('active');
    item.find('ul').addClass('collapse in');

    if (app_router.controller == 'slider') {
        item.find('li[data-method="slider"]').addClass('selected');
    } else if (app_router.controller == 'info') {
        item.find('li[data-method="info"]').addClass('selected');
    } else if (app_router.method == 'trash') {
        item.find('li[data-method="trash"]').addClass('selected');
    } else if (app_router.controller == 'category') {
        item.find('li[data-method="cat"]').addClass('selected');
    } else if (app_router.controller == 'post' || app_router.controller == 'product' || app_router.controller == 'user') {
        if (location.href.indexOf('add') > 0) {
            item.find('li[data-method="add"]').addClass('selected');
        } else {
            item.find('li[data-method="list"]').addClass('selected');
        }
    }
}
$(document).ready(function() {

    // PREVENT ENTER SUBMIT FORM
    $(".form-input-box input").keydown(function(event) {
        if (event.which == 13) {
            event.preventDefault();
        }
    });

    // CHOOSE LANGUAGE EVENT
    $('.ch-lang').click(function(e) {
        var select_lang = $(this).data('lang');
        var cur_lang = $.cookie('lang');
        if (cur_lang != select_lang) {
            $.cookie('lang', select_lang, {expires: 7, path: '/'});
            location.reload();
        }
    });


    // ACTIVE SIDEBAR ITEM
    active_sidebar();

}
);

