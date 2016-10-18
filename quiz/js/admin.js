function buildInputs(num_ans){
	var str = '';
	for(var i = 0; i < num_ans; i++){
	str += '<div class="form-group">';
		str += '<label class="col-lg-2 control-label"> Answer ' + String.fromCharCode(65+i) + '</label>';
		str += '<div class="col-lg-7">';
		str += '<input name="ans[]" class="form-control">';
		str += '</div>	';
	str += '</div>';
	}
	return str;
}

function buildRightAns(num_ans, type){
	var str = '';
	for(var i = 0; i < num_ans; i++){
	str += '<label class="checkbox-inline">';
		str += '<input type="'+ type +'" value="'+ String.fromCharCode(65+i) +'" name="right_ans[]">' + String.fromCharCode(65+i);
	str += '</label>'
	}
	return str;
}

function addTag(tagO, tagE){
     var obj = document.getElementById('quescontent');
     var st = obj.selectionStart;
     var en = obj.selectionEnd;

     var before = obj.value.substring(0,st);
     var after  = obj.value.substring(en,obj.value.length);
     var str = obj.value.substring(st,en);

     var result = before +  tagO + str + tagE  + after;
     obj.value = result;
}

function in_array(string, array){
    for (i = 0; i < array.length; i++) {
       if(array[i] == string) {
          return true;
       }
    }
    return false;
}


$(document).ready(function(){
    ////////////// ADD QUESTION
	$('#type_ques').change(function(){
		var num = $('#num_ans').val();
		var type = this.value;
		type = (type=='1') ? 'radio' : 'checkbox'; 
		str = buildRightAns(num, type);
		$('#right_ans').html(str);
	});
	
	$('#num_ans').change(function(){
		var num = this.value;
		var str = buildInputs(num);
		$('#list_ans').html(str);
		
		var type = $('#type_ques').val();
		type = (type=='1') ? 'radio' : 'checkbox'; 
		str = buildRightAns(num, type);
		$('#right_ans').html(str);
	});

   	$('#codetag').click(function(){
        addTag('<pre><code>','</code></pre>');
    });


    ////////////// SHOW QUESTION
	$('#select_subject').change(function(){
	     var val = this.value;
        var form =  $(this).closest('form');
        var href = window.location.href ;
        var arr = href.toString().split('show')[0];
        var link = arr + 'show/' + val ;
         console.log(link);
        $(form).attr("action", link);

		/*
		$.get("http://localhost/quiz/app/ajax/question.php?subject=" + this.value, function(data,status){
			console.log("Data: " + data + "\nStatus: " + status);
		});*/
	});

   ////////////// DETAIL QUESTION
     $('#solve').click(function(){
         console.log('click')
         var form =  $(this).closest('form');
         var form = form[0];

         var r_ans = form.right_ans.value.split(',');
         var nums = form.nums.value;

         // GET ANSWER chua xài
         var ans = [];
         for(var i = 0; i < nums ; i++ ){
             var name = 'ans_' +  String.fromCharCode(65+i);
           //  var radio = document.getElementsByName(name)[0];
             var radio = document.getElementById(name);
             var check = radio.checked;
             if(check){
               ans[ans.length] = String.fromCharCode(65+i);
             }
         }
           console.log(ans)
         // CHECK ANSWER
         for(var i = 0 ; i< nums; i++){
             var k =  String.fromCharCode(65+i);
             var name = 'ans_' + k;
          //   var radio = document.getElementsByName(name)[0];
             var radio = document.getElementById(name);
             var label = $(radio).closest('label');

             if( in_array( radio.value, r_ans)){
                 $(label).addClass('right_ans');
             }

             radio.disabled = true;

         }

     });




	
});