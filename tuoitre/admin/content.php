<?php
    $act = isset($_GET['act']) ? $_GET['act'] : '';
    
    switch($act){
		case 'cat':
			include 'content/catelogies.php';  
			break;	
		case 'addcat':
			include 'content/addcat.php';  
			break;		
		case 'addsubcat':
			include 'content/addsubcat.php';  
			break;
		case 'addnews':
			include 'content/addnews.php';  
			break;	
		case 'news':
			include 'content/news.php';  
			break;	
		case 'fixnews':
			include 'content/fixnews.php';  
			break;			
		case 'fixcat':
			include 'content/fixcat.php';  
			break;		
		case 'fixsubcat':	
			include 'content/fixsubcat.php';  
			break;	
        default:
            //include 'content/catelogies.php';      
    }
    
?>
