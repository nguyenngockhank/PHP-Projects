window.onload = function(){
	xmlhttp = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
	start = getQueryVariable();
	check = false;
}
function init(url_host){
	url = url_host;
	pageComments();
}
function likeNews(){
	document.getElementById('likeButton').style.display='none';
	atitle = getAtitle();
	if(!atitle)
		return;
	xmlhttp.open("GET", url + "ajax/user.php?act=like&id="+atitle,true);
	xmlhttp.send();
	xmlhttp.onreadystatechange=function(evt) {
		evt.preventDefault();
		//document.getElementById('likeButton').style.display='none';
		txt = xmlhttp.responseText;
		txt.trim();
		if(txt.length>0)
			document.getElementById('displayLike').innerHTML = txt;
	}
}
function initPostAjax(){
	xmlhttp.open("POST",url + "ajax/user.php",true);
	xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xmlhttp.setRequestHeader("Connection", "close");
}
function validateEmail(email) { 
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
} 
function commentNews(){
	atitle = getAtitle();
	if(!atitle)
		return;
	var comment = document.getElementById('commentForm');
	if(comment!=null){
		var email = comment.email.value.trim();
		if(email!=null&&validateEmail(email)){
			var content = comment.content.value.trim();
			if(content!=null&&content.length<5000 && content.length>20){
				var title = comment.title.value.trim();
				var name = comment.name.value.trim();
				if(title.length>0 && name.length>0){
					initPostAjax();
					xmlhttp.send('act=comment&id='+atitle+'&title='+title+'&content='+content+'&name='+name+'&email='+email);

					xmlhttp.onreadystatechange=function(evt) { 
						evt.preventDefault();
						document.getElementById('displayComment').innerHTML = xmlhttp.responseText;
						comment.title.value = '';
						comment.content.value = '';
						comment.email.value = '';
						comment.name.value = '';
					}
				}else{
					alert('Nhập thiếu nội dung !!!');
				}
			}else{
				alert('Nội dung quá ngắn hoặc quá dài  !!!');
			}
		}else{
			alert('Email không hợp lệ !!!');
		}
	}
}
function getAtitle(){
	var query = document.URL;
	var temp = query.split(".html")[0];
	temp = temp.split('/');
	var atitle = temp[temp.length-1];
	return atitle;
}

function getPageComments(page,display){
	atitle = getAtitle();
	if(!atitle)
		return;
	initPostAjax();
	xmlhttp.send('act=getcm&id='+atitle+'&display='+display+'&p='+page);
	xmlhttp.onreadystatechange=function(){ 
		txt = xmlhttp.responseText;
		txt.trim();
		if(txt.length>0)
			document.getElementById('comments').innerHTML = txt;
	}
}

function pageComments(){
	var arr = document.getElementsByClassName('links');
	if(arr.length==0)
		return;
	var links = arr[0];
	var arr = links.getElementsByTagName('a');
	num = arr.length-1;

	for(var i=0; i < arr.length; i++){
		arr[i].onclick = function(){
			var page = getQueryVariable();
			var display =3;
			if(!isNaN(page)){
				if(page != this.innerHTML){
					getPageComments(this.innerHTML,display);
				}else if(!isNaN(start)){
					if(start!=1&&!check && start == this.innerHTML){
						var display =3;
						getPageComments(this.innerHTML,display);
					}
				}
			}else{
				if(this.innerHTML!='1')
					getPageComments(this.innerHTML,display);
			}
		}
	}
}

function getQueryVariable() {
	var query = window.location.toString();
	var vars = query.split("#");
	var str = vars[vars.length-1];
	return str;
}
