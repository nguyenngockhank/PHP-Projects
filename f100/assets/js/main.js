$(function() {
    if (class_name == 'product') {
        $('#menu-main-menu li:nth-child(2)').addClass('actived');
        $('#list-product a[href="' + location.href + '"]').parent().addClass('list-checked');
    } else if (class_name == 'article') {
        var link = site_url + 'article/category/' + cat_id;
        $('#menu-main-menu a[href="' + link + '"]').parent().addClass('actived');
    } else {
        $('#menu-main-menu a[href="' + location.href + '"]').parent().addClass('actived');
    }

    if (method_name == 'phanphoi') {
        $('#main-menu-wrapper a:first').tab('show') // Select first tab
    }

})