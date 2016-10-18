<?php
function highlight_code($html, $lang = 'php'){
	$pos_start = strpos($html,'<code>'); // 6 kytu
	//echo $pos_start;
	if($pos_start !== false) {
		$length = strlen($html);
		$pos_end = strrpos($html,'</code>');
		$end = substr($html, $pos_end);	
		$start = substr($html, 0, $pos_start).'<code data-language="'. $lang .'">';
		$str = substr($html, $pos_start + 6, $length - $pos_start - strlen($end) - 6);
		$str = htmlentities($str);
		return $start.trim($str).$end;
	}
	return false;
}
