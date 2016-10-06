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
        
    $.get(site_url + "ajax/allow_rate/" + pro_id, function(data) {

        if (data == '1') {
            $('#review-problem').css('display', 'block');	
        
            $('#rate span').click(function() {
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

function equalProblemList(){

	$(window).load(function() {
		var highestBox = 0;
		$('#open_list_problem .thumbnail').each(function(){
		    if ($(this).height() > highestBox)
		        highestBox = $(this).height();
	
		});
		$('#open_list_problem .thumbnail').height(highestBox);



		$('#solved_list_problem .thumbnail').each(function(){
		     if ($(this).height() > highestBox)
		        highestBox = $(this).height();
		})
		$('#solved_list_problem .thumbnail').height(highestBox);
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
    equalProblemList();
});