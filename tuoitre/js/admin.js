window.onload = function(){
	xmlhttp = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
	//getSubCat();
	category_id.onchange = getSubCat;
}

function getSubCat(){
	var category_id = document.getElementById('category_id');
	var cat_id = category_id.options[category_id.selectedIndex].value;		
	xmlhttp.open("GET",'ajax/getsubcat.php?cat_id='+cat_id,true);
	xmlhttp.send();
	xmlhttp.onreadystatechange=function(){ 
		document.getElementById('subcat_id').innerHTML = xmlhttp.responseText.trim();
	}

}