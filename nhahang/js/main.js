jQuery.fn.exists = function() {
    return this.length > 0;
}
function number_format(number, decimals, dec_point, thousands_sep) {
    number = (number + '')
            .replace(/[^0-9+\-Ee.]/g, '');
    var n = !isFinite(+number) ? 0 : +number,
            prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
            sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
            dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
            s = '',
            toFixedFix = function(n, prec) {
                var k = Math.pow(10, prec);
                return '' + (Math.round(n * k) / k)
                        .toFixed(prec);
            };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
    }
    if ((s[1] || '')
            .length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1)
                .join('0');
    }
    return s.join(dec);
}
var QueryString = function() {
    var query_string = {};
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split("=");
        if (typeof query_string[pair[0]] === "undefined") {
            query_string[pair[0]] = pair[1];
        } else if (typeof query_string[pair[0]] === "string") {
            var arr = [query_string[pair[0]], pair[1]];
            query_string[pair[0]] = arr;
        } else {
            query_string[pair[0]].push(pair[1]);
        }
    }
    return query_string;
}();
function HTMLBuilder() {
    this.buildAttr = function(attr) {
        var str = '';
        for (var i in attr) {
            str += ' ' + i + '="' + attr[i] + '"';
        }
        return str;
    };
    this.buildData = function(data) {
        var str = '';
        for (var i in data) {
            str += ' data-' + i + '="' + data[i] + '"';
        }
        return str;
    };
    this.tag2 = function(tagName, attr, data) {
        var str = '<' + tagName;
        if (typeof (attr) !== 'undefined') {
            str += this.buildAttr(attr);
            if (typeof (data) !== 'undefined') {
                str += this.buildData(data);
            }
            return str + ' />';
        }
    };
    this.tag = function(tagName, content, attr, data) {
        var str = '<' + tagName;
        if (typeof (attr) !== 'undefined') {
            if (typeof (attr) === 'object') {
                str += this.buildAttr(attr);
            } else {
                str += ' class="' + attr + '"';
            }
        }
        if (typeof (data) !== 'undefined') {
            str += this.buildData(data);
        }
        str += '>' + content + '</' + tagName + '>';
        return str;
    };
    this.img = function(attr, data) {
        return this.tag2('img', attr, data);
    };
    this.input = function(attr, data) {
        return this.tag2('input', attr, data);
    };
    this.icon = function(name) {
        return this.tag('span', '', 'glyphicon glyphicon-' + name);
    }
}
var Builder = new HTMLBuilder();
function setActiveLink() {
    var href = location.href;
    if (href == site_url) {
        $('.navbar-brand').css({});
    } else {
        var a = $('a[href="' + href + '"]');
        for (var i = 0, len = a.length; i < len; ++i) {
            var p = $(a[i]).parent()[0];
            if (p.localName === 'li') {
                $(p).addClass('active');
            }
        }
    }
}
function OrderTable() {
    var table = $('#order-table')[0];
    var _this = this;

    this.removeItem = function(id) {
        $('#order-table [data-id="' + id + '"]').remove();
        $('.dish[data-id="' + id + '"] .ordered').removeClass('ordered');
        this.countTotal();
    };
    this.submit = function() {
        var mess = JSON.stringify(_this.getData());
        var name = $('#customerName').val().trim();
        var addr = $('#customerAddress').val().trim();
        var phone = $('#customerPhone').val().trim();
        if (name == '' || addr == '' || phone == '') {
            alert('Required all fields');
            return;
        }
        var data = {name: name, addr: addr, phone: phone, json: mess}
        $.post(site_url + 'ajax/order', data).done(function() {
            alert("success");
        }).fail(function() {
            alert("error");
        });
    };

    this.loadModal = function() {
        var lang = QueryString.lang;
        var query = (lang == undefined) ? '' : '?lang=' + lang;
        $.get(site_url + "ajax/order_modal/" + query, function(data) {
            $('body').append(data);
            // EVENT LOAD MODAL
            $('#order-modal').on('show.bs.modal', function(e) {
                var dishes = _this.getTotal();
                $('#dishes-price-submit').html(number_format(dishes));
                var ship = dishes / 100 * 5;
                $('#ship-price-submit').html(number_format(ship));
                var total = dishes + ship;
                $('#total-price-submit').html(number_format(total));
            });

            $('#order-form').submit(function(e) {
                _this.submit();
                e.preventDefault();
            })
        });
    };
    this.isEmpty = function() {
        return $('#order-table').css('display') === 'none';
    };
    this.isExistItem = function(dish) {
        return $(table).find('tr[data-id="' + dish.id + '"]').length > 0;
    };
    this.initOrderTable = function() {
        $('#order-table').css('display', 'block');
        $('#order-btn').css('display', 'inline');
        $('#order-label').css('font-size', '14px');
        this.loadModal();
    };
    this.buildNewItem = function(dish) {
        var img = Builder.img({src: dish.img, class: 'img-circle pull-left', alt: dish.name});
        var input = Builder.input({class: 'count-input', type: 'number', min: '0', max: '10', value: '1'}, {price: dish.price});
        var name = Builder.tag('span', dish.name) + '<br>';
        var inf = Builder.tag('td', img + name + input);
        var price = Builder.tag('td', number_format(dish.price), null, {total: dish.price});
        var tr = Builder.tag('tr', inf + price, null, {id: dish.id});
        return tr;
    };
    this.setEventCountInput = function() {
        $('.count-input').unbind('change');
        $('.count-input').change(function() {
            var price = $(this).data('price');
            var value = $(this).val();
            var total = price * value;
            var total_area = $(this).parent().next();
            $(total_area).attr('data-total', total).html(number_format(total));
            _this.countTotal();
        });
        $('.count-input').blur(function() {
            if (this.value == 0) {
                var pa = $(this).parent().parent();
                var id = $(pa).data('id');
                _this.removeItem(id);
            }
        });
    };

    this.getTotal = function() {
        var total_area = $(table).find('[data-total]');
        var total_price = 0;
        $(total_area).each(function(index) {
            var t = $(this).attr('data-total');
            total_price += parseInt(t);
        });
        return total_price;
    }
    this.countTotal = function() {
        var total_price = this.getTotal();
        $('#total-price').html(number_format(total_price));
    };
    this.order = function(dish) {
        if (!this.isExistItem(dish)) {
            var tr = this.buildNewItem(dish)
            $(table).find('.table-header').after(tr);
            this.countTotal();
            this.setEventCountInput();

            $('.dish[data-id="' + dish.id + '"] .order').addClass('ordered');
//            $('.dish[data-id="' + dish.id + '"] .ordered').click(function() {
//                $('#order-table [data-id="' + dish.id + '"]').remove();
//                $(this).removeClass('ordered');
//                _this.countTotal();
//            });
        }
    };
    this.getData = function() {
        var data = [];
        var list = $(table).find('[data-id]');
        $(list).each(function() {
            var id = $(this).data('id');
            var num = $(this).find('.count-input');
            var t = $(num).val();
            data.push({id: id, num: t});
        });
        return data;
    };
}
function OrderControl() {
    var _this = this;
    this.data = [];

    this.orderTable = new OrderTable();
    this.isOrderLink = function() {
        var href = location.href;
        return (href.indexOf(site_url + 'menu') == 0);
    };
    this.getInfoItem = function(item) {
        var id = item.data('id');
        var img = item.find('img')[0];
        var src = $(img).attr('src');
        var n = item.find('.dish-name')[0];
        var name = $(n).text();
        var p = item.find('.price')[0];
        var price = $(p).data('price');
        return {id: id, name: name, img: src, price: price};
    };
    this.addItem = function(info) {
        if (info) {
            if (_this.orderTable.isEmpty()) {
                _this.orderTable.initOrderTable();
            }
            _this.orderTable.order(info);
        }
    };
    this.setEventOrder = function() {
        $('.dish').draggable({
            containment: "#boxdemo", revert: true,
            start: function(event, ui) {
                $(this).css("z-index", 1000);
            }
        });
        $('.order').click(function() {
            if ($(this).hasClass('ordered')) {
                var p = $(this).parent().parent();
                _this.orderTable.removeItem($(p).data('id'));
                return;
            }
            var t = $(this).parent().parent();
            var info = _this.getInfoItem(t);
            _this.addItem(info);
        });
        $('#order-panel').droppable({
            tolerance: 'touch', accept: '.dish',
            activeClass: "active", hoverClass: "hover",
            drop: function(event, ui) {
                var item = ui.draggable;
                var info = _this.getInfoItem(item);
                _this.addItem(info);
            }
        });
    };
    this.setActiveTab = function() {
//        $('#menu-cat a:first').tab('show');
        $('#menu-cat a').on('shown.bs.tab', function(e) {
            var href = $(e.target).attr('href');
            $(href).each(function() {
                var highestBox = 0;
                $('.dish', this).each(function() {
                    if ($(this).height() > highestBox)
                        highestBox = $(this).height();
                });
                $('.dish', this).height(highestBox);
            });
        })
        $('#menu-cat a:first').tab('show');
        $('#menu-cat-2').change(function() {
            var a = $('#menu-cat a[href="' + this.value + '"]')[0];
            $(a).tab('show');
        });
    }
    this.test = function() {
        var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
        if (width <= 767)
            return;
        var widget = $("#order-widget").css({'position': 'relative', 'top': 0});
        var offsetY = widget.offset().top;
        $(window).scroll(function() {
            var mouseY = $(this).scrollTop();
            console.log('Mouse ' + mouseY + ' off ' + offsetY);
            if (mouseY > offsetY) {
                widget.css('top', (mouseY - offsetY + 50) + 'px');
            } else {
                widget.css('top', '0px');
            }
        });
    }
    this.start = function() {
        if (this.isOrderLink() != true)
            return;
        $(window).ready(function() {
            _this.setActiveTab();
            $('.nav-tabs').tabdrop()
            _this.setEventOrder();
            _this.test();
        })

    };
}
function setLanguage() {
    $('#lang-nav a').click(function(e) {
        e.preventDefault();
        var select_lang = $(this).data('lang');
        var curr_lang = QueryString.lang;
        if (curr_lang == 'en' && select_lang == 'vi') {
            var href = location.origin + location.pathname;
            location.href = href;
        } else if (select_lang == 'en' && curr_lang == undefined) {
            var href = location.origin + location.pathname + '?lang=en';
            location.href = href;
        }
    });
}
$(function() {
    setLanguage();
    $('#main-navbar .trigger').click(function() {
        var a = $('#main-navbar .trigger em').toggleClass('plus');
        var t = $(a).attr('class');
        if (t === 'plus') {
            $('#main-navbar').animate({top: "-=40px"}, "fast");
            $('body').css('padding-top', '0');
        } else {
            $('#main-navbar').animate({top: "+=40px"}, "fast");
            $('body').css('padding-top', '41px');
        }
    });

    //setActiveLink();
    var orderControl = new OrderControl();
    if (!orderControl.isOrderLink()) {
        $("a[rel^='prettyPhoto']").prettyPhoto({
            theme: 'facebook', social_tools: '',
            slideshow: 5000,
            autoplay_slideshow: false
        });
    } else {
        orderControl.start();
    }
});