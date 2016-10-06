
function getChildNodes(x){
	var c = x.childNodes;
	var arr = [], j=0;
	for (var i = 0; i < c.length; i++) {
		if(c[i].nodeName=='DIV'){
			arr[j++]=c[i];
		}
	};
	return arr;
}

function tabDisplay(option, display){
	var arr = document.getElementById(option).getElementsByTagName('a');
	//var arr2 = document.getElementById(display).getElementsByTagName('div');
	var  arr2 = getChildNodes(document.getElementById(display));

	for (var i = arr.length - 1; i >= 0; i--) {
		arr[i].onclick = function(){
			for(var i = arr.length - 1; i >= 0; i--){
				arr[i].className='';
				arr2[i].style.display = 'none';
				if(arr[i]==this){
					arr2[i].style.display = 'block';
					this.className='selected';
				}
			}
		};
	};
}
