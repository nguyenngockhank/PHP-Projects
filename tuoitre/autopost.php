<meta charset="utf-8"/>
<?php
	include 'config.php';
	include 'includes/connection.php';
	include 'includes/common.php';
	include 'class/news.class.php';
	include 'includes/simple_html_dom.php';
	
	$news = new News($conn);

	$url = 'http://vnexpress.net/rss/tam-su.rss';
	$category = 11;
	$sub_category_id = 0;
	
	$xml = simplexml_load_file($url);
	
	$html = '';
	$i = 0;
	$j = 0;
	$data = array();
	while(isset($xml->channel->item[$i])){
		$title =  (string)$xml->channel->item[$i]->title;
		$atitle = khongdau($title);
		if(!$news->checkAtitle($atitle)){	
			$data[$j]['title'] = $title;
			$data[$j]['atitle'] = $atitle;
			$data[$j]['link'] = (string)$xml->channel->item[$i]->link;
			
			$summary = str_get_html($xml->channel->item[$i]->description);
			$data[$j]['summary'] = $summary->plaintext;
			
			// thumbnails
			
			$j++;
		}else{
			//echo '<div>'.$xml->channel->item[$i]->description.'</div>';
			$summary = str_get_html($xml->channel->item[$i]->description);
			$img = $summary->find('img',0);
			
			//echo '<div>'.$summary->plaintext.'</div>';
			echo '<img src="',$img->src,'" alt=""/>';
	
		}
		$i++;		
	}
	
	/*
	
	if(!empty($data)){
		//$link = $links[0];
		foreach($data as $item){
		
		$html = file_get_html($item['link']);
		
		$main = $html->find('#content',0); 
		
		$summary = $main->find('h2[class=Lead]',0);
		
		$content = $main->find('div[class=fck_detail]',0);
		
		$img = $content->find('img',0);
		
		if(empty($img))
			$img = '';
		
		$news->addNews($item['title'], $summary->plaintext, $content, $img, $category, $sub_category_id,  $item['atitle'], 0);

			
		}
	}
	*/
	
?>

