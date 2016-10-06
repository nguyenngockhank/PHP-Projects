<?php

class News {
	private $conn;

	function __construct($conn){
		$this->conn = $conn;
	}

	private function apLimitQuery($display ,$page){
		$display = (int)$display;
		$page = (int)$page;
		$x = ($page-1)*$display; 
		return ' LIMIT '.$x.','.$display;
	}

	private function apDateQuery($time){
		$query = '';
		switch ($time) {
			case 'day':
				$query .= ' AND DATE( news.date ) = CURDATE()';
				break;
			case 'month':
				$query .= ' AND EXTRACT( YEAR FROM CURDATE()) = EXTRACT( YEAR FROM news.`date` ) 
							AND EXTRACT( MONTH FROM CURDATE()) = EXTRACT( MONTH FROM news.`date` ) ';
				break;
			case 'year':	
				$query .= ' AND EXTRACT( YEAR FROM CURDATE()) = EXTRACT( YEAR FROM news.`date` ) ';
				break;
			default:
				break;
		}
		return $query;
	}

	private function returnPages($query,$display){
		$res = $this->conn->query($query);
		$row = mysqli_fetch_array($res,MYSQLI_NUM);
		$records = $row[0];
		$res->free();
		return ceil($records/$display);
	}

	public function getLinkNews($start, $display,$asubname='',$date=false){
		$query = 'SELECT title, atitle '.((!$date) ? '' : ', DATE_FORMAT(date,"%d/%c - %H:%i") AS date ' ).'
				  FROM news INNER JOIN subcategory 
				  ON news.subcategory_id = subcategory.subcategory_id ';
				  
		$query .= (!empty($asubname)) ?  ' WHERE subcategory.aname = "'.$asubname.'"' : '';	
		$query .= ' ORDER BY news.date DESC LIMIT '.$start.','.$display;	   
		return $this->conn->query($query);			  
	}

	public function getAnotherNews($asubname, $display=10){
		$query = 'SELECT title, atitle 
				  FROM news INNER JOIN subcategory 
				  ON news.subcategory = subcategory.subcategory
				  WHERE subcategory.aname != "'.$asubname.'" 
				  ORDER BY news.date DESC LIMIT 0,'.$display;
		return $this->conn->query($query);				  
	}

	public function getNewsByAtitle($atitle){
		$atitle= $this->conn->real_escape_string($atitle);
		$query ='SELECT content,summary,image,subcategory_id,date,views,news.like,LEFT(title,55) AS title,comments 
				FROM news WHERE atitle="'.$atitle.'" ORDER BY news.date DESC LIMIT 0,1';
		return $this->conn->query($query);			
	}

	public function getNewsById($news_id){
		$query ='SELECT * FROM news WHERE news_id="'.$news_id.'"';
		return $this->conn->query($query);	
	}

	public function getMostViewNews($display,$start=0){
		$query ='SELECT `atitle`,  `title`
				FROM news ORDER BY news.views DESC 
				LIMIT '.$start.','.$display;
		return $this->conn->query($query);		
	}

	public function getHottestNews($display,$start=0,$sum=false,$img=false){
		$query = 'SELECT `atitle`, `title`'.((!$img) ? '' : ',image ').((!$sum) ? '' :',summary ').'
				FROM news WHERE hot ORDER BY news.date DESC LIMIT '.$start.','.$display;
		return $this->conn->query($query);	
	}

	public function getMostLikeNews($display,$start=0){
		$query ='SELECT `atitle`,  `title`
				FROM news ORDER BY news.like DESC 
				LIMIT '.$start.','.$display;
		return $this->conn->query($query);
	}
	
/* LẤY TIN TRONG CATEGORY */
	private function apByCatId($category_id, $display,$start){
		if(empty($category_id))
			return '';
		$query =' WHERE category_id="'.$category_id.'" 
					ORDER BY news.date DESC
				 	LIMIT '.$start.','.$display;
		return $query;		
	}

	public function getNewestNews($category_id=''){
		$query ='SELECT `atitle`, `title`, LEFT(summary,250) AS summary, `image`, DATE_FORMAT(date,"%d/%c - %H:%i") AS date 
				FROM news ';
		$query .= $this->apByCatId($category_id,1,0);		
		
		$res = $this->conn->query($query);	
		$row = mysqli_fetch_array($res,MYSQLI_ASSOC);
		$res->free();
		return $row;
	}

	public function getNewNews($display,$start=1,$category_id=''){
		$query ='SELECT `atitle`, `news_id`, `title`, `summary`, `image`, DATE_FORMAT(date,"%d/%c - %H:%i") AS date 
				FROM news ';
		$query .= $this->apByCatId($category_id,$display,$start);			
		return $this->conn->query($query);			
	}	

	public function getPagesCat($category_id,$display=10){
		$query = '	SELECT COUNT(news_id)
					FROM news
					INNER JOIN category ON news.category_id = category.category_id
					WHERE category.category_id="'.$category_id.'"';
		//echo $query;
		return $this->returnPages($query,$display);	
	}

	public function getPagesCat2($acatname,$display=10){
		$cat = new Category($this->conn);
		$category_id = $cat->getCatId($acatname);
		return $this->getPagesCat($category_id, $display);
	}
	public function getNewsByCat2($acatname, $display= 10, $page = 1){
		$cat = new Category($this->conn);
		$category_id = $cat->getCatId($acatname);
		return $this->getNewsByCat($category_id, $display, $page);
	}

	public function getNewsByCat($category_id, $display= 10, $page = 1){
		$query = 'SELECT atitle, title, summary, content, image, date, views, news.like
		FROM news WHERE category_id="'.$category_id.'"
		ORDER BY news.date DESC ';
		$query.= $this->apLimitQuery($display,$page);
		return $this->conn->query($query);	
	}


/* LẤY TIN TRONG SUBCATEGORY */	

	
	private function getQuery($subcategory_id='0', $time=''){
		$query = 'SELECT atitle, news_id, title, summary, content, image, date, views,news.like	FROM news ';
		$query .= ($subcategory_id!='0') ? ' WHERE subcategory_id = "'.$subcategory_id.'"' : ' WHERE 1'; 
		$query .= $this->apDateQuery($time);
		return $query;
	}

	public function getNumPages($subcategory_id='0', $time='',$display='10'){
		$query = $this->getQuery($subcategory_id, $time);
		$res = $this->conn->query($query);
		$records  = mysqli_num_rows($res);
		$res->free();
		return ceil($records/$display);
	} 

	public function getNumPages2($subaname, $time='',$display='10'){
		$cat = new Category($this->conn);
		$subcategory_id = $cat->getSubCatId($subaname);
		if(empty($subcategory_id))
			return 0;
		return $this->getNumPages($subcategory_id, $time, $display);	
	} 

	public function getNews2($subaname, $time='', $display=10, $page=1){
		$cat = new Category($this->conn);
		$subcategory_id = $cat->getSubCatId($subaname);
		if(empty($subcategory_id))
			return false;
		return $this->getNews($subcategory_id, $time, $display, $page);	
	}

	public function getNews($subcategory_id='0', $time='', $display=10, $page=1){
		$query = $this->getQuery($subcategory_id, $time);
		$query .= ' ORDER BY news.date DESC ';
		$query .= $this->apLimitQuery($display,$page);
		return $this->conn->query($query);	
	}

/** CAP NHAT TIN TUC **/
	private function editImageNews($news_id, $image){
		$query = 'UPDATE `news` SET image = "'.$image.'" WHERE news_id ="'.$news_id.'"';
		$this->conn->query($query);
	}

	public function editNews($news_id, $title, $summary, $content,$category_id, $subcategory_id, $atitle,$hot,$image=''){
		if($image!=''){
			$image= $this->conn->real_escape_string($image);
			$this->editImageNews($news_id, $image);
		}

		$title= $this->conn->real_escape_string($title);
		$summary= $this->conn->real_escape_string($summary);
		$content= $this->conn->real_escape_string($content);
		$subcategory_id= $this->conn->real_escape_string($subcategory_id);
		$hot = (int)$hot;

		$query = 'UPDATE news SET atitle="'.$atitle.'", title= "'.$title.'", summary="'.$summary.'",
		content="'.$content.'",category_id ="'.$category_id.'",subcategory_id="'.$subcategory_id.'" , hot='.$hot.'
					WHERE news_id ="'.$news_id.'"';
		$this->conn->query($query);			
	}

	public function checkAtitle($atitle){
		$query = 'SELECT * FROM news WHERE atitle ="'.$atitle.'"';
		$res = $this->conn->query($query);
		return mysqli_num_rows($res);
	}
	
	private function getAtitle($atitle){
	
		$a = 1; 
		$temp = $atitle;
		while($this->checkAtitle($atitle)){
			$atitle = $temp.$a;
			$a++;
		}
		
		return $atitle;
	}

	public function addNews($title, $summary, $content, $image, $category_id, $subcategory_id, $atitle,$hot){
		$title= $this->conn->real_escape_string($title);
		$summary= $this->conn->real_escape_string($summary);
		$content= $this->conn->real_escape_string($content);
		$image= $this->conn->real_escape_string($image);
		$subcategory_id= $this->conn->real_escape_string($subcategory_id);
		$category_id= $this->conn->real_escape_string($category_id);
		$hot = (int)$hot;
		
		//$atitle= $this->getAtitle($atitle);
		$query = 'INSERT INTO news(title, summary, content, image, date,category_id, subcategory_id, atitle, hot) 
				VALUES ("'.$title.'","'.$summary.'",\''.$content.'\',"'.$image.'",NOW(),"'.$category_id.'","'.$subcategory_id.'","'.$atitle.'","'.$hot.'")';	
		return $this->conn->query($query);
	}

	public function delNews($news_id){
		$query = 'DELETE FROM news WHERE news_id ="'.$news_id.'"';
		return $this->conn->query($query);		
	}

	public function increaseViews($atitle){
		$atitle= $this->conn->real_escape_string($atitle);
		$query='UPDATE news SET views=views+1 WHERE atitle="'.$atitle.'"';
		return $this->conn->query($query);		
	}
	public function increaseComments($atitle){
		$atitle= $this->conn->real_escape_string($atitle);
		$query='UPDATE news SET news.comments=news.comments+1 WHERE atitle="'.$atitle.'"';
		if(!$this->conn->query($query))
			return 0;		
		$query ='SELECT news.comments FROM news WHERE atitle="'.$atitle.'"';
		$res = $this->conn->query($query);	
		$row = mysqli_fetch_array($res,MYSQLI_NUM);
		return $row[0]; /* tra ve so comment */
	}

	public function increaseLike($atitle){
		$atitle= $this->conn->real_escape_string($atitle);
		$query='UPDATE news SET news.like=news.like+1 WHERE atitle="'.$atitle.'"';
		if(!$this->conn->query($query))
			return 0;		
		$query ='SELECT news.like FROM news WHERE atitle="'.$atitle.'"';
		$res = $this->conn->query($query);	
		$row = mysqli_fetch_array($res,MYSQLI_NUM);
		return $row[0]; /* tra ve so like */
	}

	private function getNewsId($atitle){
		$atitle= $this->conn->real_escape_string($atitle);
		$query = 'SELECT news_id FROM news WHERE atitle="'. $atitle .'"';
		$res = $this->conn->query($query);
		if(mysqli_num_rows($res)==0)
			return 0;
		$row = mysqli_fetch_array($res);
		return $row[0];
	}

	public function addComment($atitle, $tit, $content, $name, $email){
		$news_id = $this->getNewsId($atitle);
		if($news_id==0)
			return;
		$comments = $this->increaseComments($atitle);
		if($comments==0)
			return;

		$tit= $this->conn->real_escape_string($tit);
		$content= $this->conn->real_escape_string($content);
		$name= $this->conn->real_escape_string($name);
		$email= $this->conn->real_escape_string($email);

		$query = 'INSERT INTO comment(`id`, `news_id`, `title`, `content`, `name`, `email`,time) 
					VALUES ("'.$comments.'","'.$news_id.'","'.$tit.'","'.$content.'","'.$name.'","'.$email.'",NOW())';
	
		$this->conn->query($query);
	}

	public function getComments($atitle, $display=3, $page=1){
		$news_id = $this->getNewsId($atitle);
		if($news_id==0)
			return;

		$display = (int)$display;
		$page = (int)$page;
		$x = ($page-1)*$display; 

		$query = 'SELECT `id`, `title`, `content`, `name`,time 
					FROM `comment` WHERE news_id='.$news_id.' 
					ORDER BY comment.id DESC ';

		$query .= $this->apLimitQuery($display,$page);
		return $this->conn->query($query);
	}

	public function getPagesComment($atitle,$display=3){
		$query = '	SELECT comments
					FROM news
					WHERE news.atitle="'.$atitle.'"';

		$res = $this->conn->query($query);
		$row  = mysqli_fetch_array($res,MYSQLI_NUM);
		$res->free();
		$records = $row[0];
		return ceil($records/$display);			
	}
/** TIM KIEM TIN TUC **/

	private function apSearchQueryAtitle($keyword){
		$keyword= $this->conn->real_escape_string($keyword);
		$arr = explode (' ',$keyword);
		$query = '';
		foreach ($arr as $keyword) {
			$query.= ' ( atitle LIKE "%-'.$keyword.'-%" OR atitle LIKE "'.$keyword.'-%" OR atitle LIKE "%-'.$keyword.'"  ) AND';
		}
		$query.= ' 1 ';
		return $query;
	}

	public function searchOnTitle($keyword,$display,$page=1){
		$query = 'SELECT atitle, title, summary, content, image, date, views, news.like FROM news WHERE ';
		$query .= $this->apSearchQueryAtitle($keyword);
		$query .= ' ORDER BY news.date DESC ';
		$query .= $this->apLimitQuery($display,$page);
		return $this->conn->query($query);				
	}
	

	public function getPagesSearchOnAtitle($keyword,$display){
		$query = 'SELECT COUNT(news_id) FROM news WHERE ';	
		$query .= $this->apSearchQueryAtitle($keyword);
		return $this->returnPages($query,$display);
	}


	private function apSearchQuery($keyword, $subcat, $pos, $time, $order){
		$arr = explode (' ',$keyword);
		$query = '';		
		foreach ($arr as $keyword) {
			$query.= ' ( '.$pos.' LIKE "%'.$keyword.'%" ) AND';
		}
		$query.= ($subcat=='all') ? ' 1 ' : ' subcategory_id='.$subcat ;
		$query.= $this->apDateQuery($time);
		$query.=' ORDER BY news.'.$order.' DESC ';
		return $query;
	}

	
	public function getPagesSearch($keyword, $subcat, $pos, $time, $order,$display){
		$query = 'SELECT COUNT(news_id) FROM news WHERE ';
		$query .= $this->apSearchQuery($keyword, $subcat, $pos, $time, $order);
		return $this->returnPages($query,$display);
	}

	public function searchNews($keyword, $subcat, $pos, $time, $order,$display ,$page=1 ){
		$keyword= $this->conn->real_escape_string($keyword);	
		$subcat= $this->conn->real_escape_string($subcat);
		$pos= $this->conn->real_escape_string($pos);
		$order= $this->conn->real_escape_string($order);
		$time= $this->conn->real_escape_string($time);

		$query = 'SELECT atitle, title, summary, content, image, date, views, news.like 
				FROM news WHERE ';

		$query .= $this->apSearchQuery($keyword, $subcat, $pos, $time, $order );		

		$query .= $this->apLimitQuery($display,$page);

		return $this->conn->query($query);		

	}

}