function initSounds() {
    sounds = true;
    $.ionSound({
        sounds: ["new_message"],
        path: site_url + "assets/sounds/",
        volume: "1.0"
    });
}

function OrderController() {
    var _this = this;
    this.init = function() {
        // INIT LAST_ID
        _this.last_order_id = 0;
        _this.last_message_id = 0;
        this.getNew();
        setInterval(this.getNew, 30000);
    };
    this.getNew = function() {
        $.getJSON(site_url + 'ajax/get_new_order/', function(data) {
            if (parseInt(data.order_num) > 0 && _this.last_order_id < data.order_id) {
                _this.last_order_id = data.order_id;
                _this.num_new_order = data.order_num;
                _this.alertNewOrder();
            }
            if (parseInt(data.message_num) > 0 && _this.last_message_id < data.message_id) {
                _this.last_message_id = data.message_id;
                _this.num_new_message = data.message_num;
                _this.alertNewMessage();
            }
        });
    };
    this.alertNewOrder = function() {
        $.ionSound.play("new_message");
        $('#new_order').html(this.num_new_order);
    };
    this.alertNewMessage = function() {
        $.ionSound.play("new_message");
        $('#new_message').html(this.num_new_message);
    };
    this.init();
}

$(function() {
    $('.box').click(function() {
        $(this).find('.alert-num').html('0');
        var link = $(this).data('link');
        if (link == undefined)
            return;
        var href = location.href;
        var uri = href + '/' + link;
        window.open(uri);
    });

    initSounds();
    new OrderController();

});


