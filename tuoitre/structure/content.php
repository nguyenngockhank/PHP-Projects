<?php
    switch($act){
		case 'viewnews':
			include 'content/viewnews.php';  
			break;	
		case 'viewcat':
			include 'content/viewcat.php';  
			break;		
		case 'viewsubcat':
			include 'content/viewsubcat.php';  
			break;	
		case 'search':
			include 'content/search.php';  
			break;			
		case 'search2':
			include 'content/search2.php';  
			break;		
        default:
            include 'content/main.php';      
    }
?>
