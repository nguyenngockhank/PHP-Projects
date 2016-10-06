<?php
    switch($act){
		case 'viewsubcat':
			include 'sidebar/anothernews.php';  

			break;		
		case 'viewnews':
			include 'sidebar/hotnews.php';  
			break;	
		case 'viewcat':
			include 'sidebar/interestingnews.php';  
			break;			
        default:
   			include 'sidebar/linhtinh.php';
    }
?>
