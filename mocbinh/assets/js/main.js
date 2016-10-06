function getTimeNow() {
    var d = new Date();
    var day = d.getDay();
    var date = d.getDate();
    var month = d.getMonth();
    var year = d.getFullYear();

    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturdat"];
    var months = new Array("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12");
    return days[day] + ', ' + date + '/' + month + '/' + year;
}
function setBackToTop() {
    $("#back-top").hide();
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 100) {
                $('#back-top').fadeIn();
            } else {
                $('#back-top').fadeOut();
            }
        });
        $('#back-top a').click(function() {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
    });
}

function setProblemAction() {
    var pro_id = $('#problem_id').val();
    if (!pro_id)
        return;
    console.log()
    var num_rate = 0;
    $.get(site_url + "ajax/allow_rate/" + pro_id, function(data) {
        $('#review-problem').css('display', 'block');
        if (data == '1') {
            $('#rate span').click(function() {
                num_rate++;
                if(num_rate > 3){
                    alert('You only change your review in 3 times');
                    return;
                }
                
                var score = $(this).data('score');
                if (score > 0 && score < 6) {
                    $('#rate').removeClass('rating').addClass('rated');
                    $("#rate .score").removeClass('score');
                    $("#rate [data-score=" + score + "]").addClass('score');
                    $.get(site_url + "ajax/rate/" + pro_id + '/' + score, function(data) {
                        console.log(data);
                    });
                }
            });
        }
    });
}

$(document).ready(function() {
    setBackToTop();
    $('#date_now').html(getTimeNow());

    // trang chủ
    $('#carousel-banner .carousel-indicators li:first-child').addClass('active');
    $('#carousel-banner .carousel-inner .item:first-child').addClass('active');

    // trang problem
    setProblemAction();

});