<?php
//$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE) or die('cannot connect to database');	
//$conn->set_charset('utf8');

class MySQL{
	private $result;

	private $query; // cau lenh
	private $conn; // connection 

	private $select;
	private $delete;
	private $insert;	
	private $update;
	
	private $from;
	private $where;
	
	private $join;
	private $limit;
	private $order_by;
	private $group_by;
    
    private $on_duplicate;
    
	private static $instance;
	
	private function __construct(){
		$this->conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE) or die('cannot connect to database');	
        $this->conn->set_charset('utf8');
		$this->reset();
	}
    
    public static function getInstance()  {
        if (is_null(self::$instance)){
          self::$instance = new self();
        }
        return self::$instance;
    }

    public function getConnection(){
        return $this->conn;
    }
	
	private function reset(){
		$this->table='';
		$this->select='SELECT * ';
		$this->delete = 'DELETE ';
		$this->insert= 'INSERT ';
		$this->update= 'UPDATE ';
		$this->from='';
		$this->where='';
		$this->join='';
		$this->order_by='';	
		$this->limit='';
		
		$this->group_by='';
        $this->on_duplicate = '';
	}
	
	// check string has operator or not
	private function notOperator($str){
		$arr = explode(' ',$str);
		return empty($arr[1]);
	} 
	
	private function arr2condition($arr, $tail){
		$temp = '';
		foreach($arr as $col => $val){
			$temp .= $col.($this->notOperator($col) ? '=' : '' )."'$val' "; 
			$temp .= "$tail "; 
		}
		return substr($temp,0,-(strlen($tail)+1));		
	}
		
	public function query($query){
		$this->result = $this->conn->query($query);
	   //	echo $query;
		return $this->result;
	}
	
	/********* INSERT *************/
	
	public function insert($table, $data){  // data is a associative array
		$query = $this->insert.' INTO '.$table;
		$cols = '(';
		$values =' VALUES(';
		foreach($data as $key => $value){
			$cols .= $key. ',';	
			$values .= "'".$this->conn->real_escape_string($value)."',"; // sau nay them $conn->real_escape_string($value)
		}
		$cols = substr($cols,0,-1);
		$cols .= ')';
		$values = substr($values,0,-1);
		$values .= ')';
		
		$query .= $cols;
		$query .= $values;
        $query .= $this->on_duplicate;
        
		$this->reset();
		return $this->query($query);
	}
	
    public function on_duplicate($exp){
        $this->on_duplicate = ' ON DUPLICATE KEY UPDATE '.$exp;
    }
    
	public function insert_batch($table, $cols, $data, $ignore = TRUE){ // data mang 2 chieu
		$query = $this->insert;
		$query .= (!empty($ignore)) ? '' : ' IGNORE ';
        $query .=' INTO '.$table;
        
		$query .= '('.implode(',',$cols).')'; // columns 
        
        $values =' VALUES';
		foreach($data as $record){	
            $values.='(';
			foreach($record as $value){
  	             $values .= "'".$this->conn->real_escape_string($value)."',";
			}
            $values = substr($values,0,-1);
            $values.='),';
		}
        $values = substr($values,0,-1);
        
        $query .= $values;
        $query .= $this->on_duplicate;
		
		$this->reset();
		return $this->query($query);
	}
	
	/********* UPDATE *************/
	
	public function update($table, $data){ 
		$query = $this->update.$table;
		$query .= ' SET ';
		
		foreach($data as $key => $value){
			$query .= $this->conn->real_escape_string($key)."='".$this->conn->real_escape_string($value)."',"; // sau nay them $conn->real_escape_string($value)
		}
		$query = substr($query,0,-1);
		$query .= $this->where;
        
        $this->reset();
        return $this->query($query);
	}
	
	public function update_batch($table, $data){
	
	}
	
	
	/********* DELETE *************/
	public function delete($table,$condition=''){
		$query = $this->delete;
		$this->from($table);
		$query .= $this->from;	
		
		if($condition===''){
			if(empty($this->where))
				return false;
			$query .= $this->where;
		}else{
			if(gettype($condition=='array')){
				$query .= $this->arr2condition($condition,'AND');
			}
		}
        
		$this->reset();
        return $this->query($query);
	}	
	
	public function empty_table($table){
		$query = $this->delete.' FROM '.$table;
	}
	
	/********* GET SELECT *************/
	public function get($table='', $num='', $start=0){
		$query = $this->select;
		if(!empty($table)){
			$this->from($table);
		}
		$query .= $this->from;
		$query .= $this->join;
		$query .= $this->where;
		$query .= $this->group_by;
		$query .= $this->order_by;
		if(!empty($num)){
			$this->limit($num,$start);
		}
		
		
		$query .= $this->limit;
		$this->reset();
		return $this->query($query);
	}
	
    
    /**********************************************************************/
    
	private function checkOrderBy(){
		if(empty($this->order_by)){ 	
			$this->order_by = ' ORDER BY ';
		}else{
			$this->order_by .= ',';
		}
	}
	
	public function order_by($col, $type=''){ // type asc desc random
		$this->checkOrderBy();

		$this->order_by .= $col;
		
		if(!empty($type)){
			switch($type){
				
				case 'desc':
				case 2:
					$this->order_by .= ' DESC ';	
					break;	
				case 'random':
					$this->order_by .= ' RAND() ';	
					break;	
				case 'asc':
				case 1:
					$this->order_by .= ' ASC ';	
					break;	
					
			}
		}
	}
	
    public function solve_limit($display ,$page){ // page starts at 1
        $display = (int)$display;
		$page = (int)$page;
		$x = ($page-1)*$display; 
		$this->limit = ' LIMIT '.$x.','.$display;
    }
    
	public function limit($num, $start = 0){
		$this->limit = ' LIMIT '.$start.','.$num;
	}

	public function from($table){
		$this->from= ' FROM '.$table.' ';
	}
	
	public function join($table, $condition, $type=''){
	// type :  left, right, outer, inner, left outer, and right outer.
		if($type===''){
			$this->join .= ' JOIN '.$table.' ON '.$condition;
		}else{
			$this->join .= ' '.$type.' JOIN '.$table.' ON '.$condition;
		}
	}
	
	/********* SELECT *************/
	
	public function select($cols='*'){
		$type = gettype($cols);
		
		switch($type){
			case 'array':
				$this->select = 'SELECT '.implode(',',$cols);
				break;
			case 'string':
				$this->select = 'SELECT '.$cols;
				break;
		}		
	}
	
	private function select_z($type, $col, $aka=''){
		$this->select = 'SELECT '.$type.'('.$col.') AS ';
		$this->select .= ($aka==='') ? $col : $aka;
	}
	
	public function select_max($col, $aka=''){
		select_z('MAX',$col,$aka);
	}
	
	public function select_min($col, $aka=''){
		select_z('MIN',$col,$aka);
	}
	
	public function select_avg($col, $aka=''){
		select_z('AVG',$col,$aka);
	}
	
	public function select_sum($col, $aka=''){
		select_z('SUM',$col,$aka);
	}
	
	
	/********* LIKE & WHERE *************/
	
	// first time call where , like
	private function checkWhere($and_or){
		if(empty($this->where)){ 	
			$this->where = ' WHERE ';
		}else{
			$this->where .= " $and_or ";
		}
	}
	
	/********* WHERE *************/
	
	private function where_z($and_or, $str , $value=''){
		$this->checkWhere($and_or);
		if($value===''){
			$type = gettype($str);
			switch($type){
			case 'string': // CUSTOM STRING check
				$this->where .= $str;
				break;
			case 'array': // Associative array 	
				$this->where .= $this->arr2condition($str, $and_or);
				break;
			}
		}else{	
			$this->where .=  $str.($this->notOperator($str) ? '=' : '' )."'$value'"; 
		}
		
	}
	
	public function where($str , $value=''){
		$this->where_z('AND',$str , $value);
	}

	public function or_where($str, $value=''){
		$this->where_z('OR',$str , $value);
	}
	
	/********* LIKE *************/
	
	private function like_z($and_or,$type_like, $str, $value='' , $type='both'){
		$this->checkWhere($and_or);
		
		if($value===''){
			if(gettype($str)=='array'){
				$temp = '';
				foreach($str as $col => $val){
					$temp .= $col." $type_like '%$val%' $and_or "; 
				}
				$this->where .= substr($temp,0,strlen($temp)-(strlen($and_or)+1));
			}
		}else{
			$this->where .= "$str $type_like ";
			switch($type){
				case 'none':
					$this->where .= "'$value'";
					break;		
				case 'after':
					$this->where .= "'$value%'";
					break;
				case 'before':
					$this->where .= "'%$value'";
					break;
				case 'both':
				default:
					$this->where .= "'%$value%'";
			}
		}
	}
	
	public function like($str, $value='' , $type='both'){
	// before, after, none, both
		$this->like_z('AND','LIKE',$str,$value, $type);
	}
	
	public function or_like($str, $value , $type='both'){
		$this->like_z('OR','LIKE',$str, $value, $type);
	}
	
	public function not_like($str, $value , $type='both'){
		$this->like_z('AND','NOT LIKE',$str, $value, $type);
	}
	
	public function or_not_like($str, $value , $type='both'){
		$this->like_z('OR','NOT LIKE',$str, $value, $type);
	}
	
	/* GROUP BY */
	public function group_by($cols){
		$type = gettype($cols);
		switch($type){
			case 'array':
				$this->group_by = ' GROUP BY '.implode(',',$cols);
				break;
			case 'string':
				$this->group_by = ' GROUP BY '.$cols;
				break;
		}		
		
	}
	
	/* COUNT */
	public function count_all($table){
		$query = 'SELECT COUNT(*) FROM '.$table;
		// return $res->fetch_array('MYSQLI_NUM')[0];	
	}
	
	/********* EXCUTE *************/
	public function excute(){
		echo $this->query;
		//return $this->conn->query($this->query);
	}

	public function fetch_row(){
		$row = $this->result->fetch_row();
		$this->result->free();
		return $row;
	}
	
    public function fetch_assoc(){
        $row = $this->result->fetch_assoc();
		$this->result->free();
		return $row;
    }
    
}


