function in_array(string, array){
    for (i = 0; i < array.length; i++) {
       if(array[i] == string) {
          return true;
       }
    }
    return false;
}


$(document).ready(function(){
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