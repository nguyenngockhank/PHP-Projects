function getCookie(c_name) {
    if (document.cookie.length > 0) {
        var c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            var c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return '';
}

function getURLParameter(sParam) {
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) {
            return sParameterName[1];
        }
    }
}

function fillValue(formId, nameInput) {
    var value = getURLParameter(nameInput);
    if (value != undefined) {
        $('#' + formId + ' [name=' + nameInput + ']').val(value);
    }
}

function checkSearch() {
    fillValue('search_form', 'k');
}

function checkFilter() {
    fillValue('filter_form', 'cat_id');
    fillValue('filter_form', 'min');
    fillValue('filter_form', 'max');
}

// CART

function numberOfCart(baseUrl) {
    var total_item = getCookie('total_item');
    if (total_item == '') {
        total_item = 0;
    }

    $('#total_item').html(total_item);
//    $.ajax({url: baseUrl + 'cart/total_item/',
//        success: function(res) {
//            total_item = parseInt(res);
//            
//        }
//    });
}

function addToCart(baseUrl) {
    $('.product-cart').unbind('click');
    $('.product-cart').click(function() {
        var slug = $(this).data('slug').trim();
        console.log(slug)
        $.ajax({url: baseUrl + 'cart/add/' + slug,
            success: function(res) {
                var t = parseInt($('#total_item').html());
                var total_item = parseInt(getCookie('total_item'));
                if (t < total_item) {
                    if (location.href === baseUrl + 'gio-hang') { // trang giỏ hàng
                        location.reload();
                    } else {
                        $('#total_item').html(total_item);
                        alert('Đã thêm vào giỏ hàng');
                    }
                }
            }
        });
    });
}

function updateCart(baseUrl) {
    $('.update-cart').click(function() {
        var rowid = $(this).data('rowid');
        var td = $(this).parent().prev().prev(); // td number
        var input = $(td).find('input');
        var num = $(input).val();

        $.ajax({
            type: "POST",
            url: baseUrl + 'cart/update/',
            data: {rowid: rowid, qty: num},
            success: function(html) {
                location.reload();
            }
        });
    });
}

// RANDOM PRODUCT
function randomProduct(baseUrl) {
    $.ajax({url: baseUrl + 'ajax/product_random',
        success: function(res) {
            $('#sidebar .widget:first-child').after(res);
            addToCart(base);
        }
    });
}

function setActive() {
    var href = window.location.href;
    if (href == base) {
        $('.navbar-brand').css({'color': 'white', 'background': '#080808'});
    } else {
        var a = $('a[href="' + href + '"]');
        for (var i = 0, len = a.length; i < len; ++i) {
            var p = $(a[i]).parent()[0];
            if (p.localName === 'li') {
                $(p).addClass('active');
            }
        }

        // set phan trang
        var a = $('a[href="' + href.substring(0, href.length - 2) + '"]')[0];
        var p = $(a).parent()[0];
        if (p!== undefined && p.localName === 'li') {
            $(p).addClass('active');
        }
    }
}


$(function() {
    numberOfCart(base);
    randomProduct(base);
    addToCart(base);
    updateCart(base);

    checkSearch();
    checkFilter();
    setActive();

    $('.carousel').carousel({interval: 3000});
});
