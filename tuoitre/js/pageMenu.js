
var main_nav = document.getElementById('main_nav');
var arr = main_nav.getElementsByTagName('ul');
var arr2 = getSubLI(main_nav);
centerMainMenu(arr,arr2);

function centerMainMenu(arrul,arrli){
	for (var i = arrli.length - 1; i >= 1; i--) {
		var w1 = getTotalWidthUL(arrul[i]);
		var w2 = arrli[i].offsetWidth;
		if(w1>w2){
			var dx = Math.ceil((w2-w1)/2);
			var ul = arrli[i].getElementsByTagName('ul')[0];
			ul.style.left = dx+'px';
			ul.style.width = (w1 + 5) +'px';
		}

	}
}

function getTotalWidthUL(ul){
	var arr = ul.getElementsByTagName('li');
	var total =0;

	for(var i = arr.length - 1; i >= 0; i--){
		total += arr[i].offsetWidth;
	}
	return total;
}

function getSubLI(main_nav){
	var c = main_nav.childNodes;

	arr = []; var j=0;
	for (var i = 0; i < c.length; i++) {
		if(c[i].nodeName=='LI'){
			arr[j++] = c[i];
		}
	};

	return arr;
}