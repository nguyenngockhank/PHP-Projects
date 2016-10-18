<?php
class Msubject extends Model{
	private $table = 'subject';

    public function getPublic(){
        $cols = 'id, name, slug';
        $this->db->select($cols);
        $this->db->where('public', 1 );
        return $this->db->get($this->table);
    }




	public function getAll($cols=''){
		if(empty($cols)){
			$cols = 'id, name, slug, public';
		}
		$this->db->select($cols);
		return $this->db ->get($this->table);
	}
	
	public function delete($id){
		$id = (int)$id;
        $this->db->where('question_id', $id);
		$this->db->delete('answer');

		$this->db->where('id', $id);
		$this->db->delete($this->table);
	}
	
	public function add($name, $slug, $public){
		$data = array(
           'name' => $name,
           'slug' => $slug,
           'public' => $public
        );

		return $this->db->insert($this->table, $data);
	}
	
	public function getById($id){
		$cols = 'name, slug, public';
		$this->db->where('id', $id);
		$res = $this->db->get($this->table);

        if($res->num_rows > 0){
			return $this->db->fetch_assoc();
		}
        return false;
	}


     public function getStatistic(){
        $this->db->select('subject.id as id, COUNT(subject_id) as num , subject.name as name');
		$this->db->join('question','question.subject_id = subject.id');
		$this->db->group_by('subject_id');
		return $this->db ->get($this->table);
     }

     public function getInfo($slug){
        $this->db->select('subject.id as id, COUNT(subject_id) as num , subject.name as name');
        $this->db->join('question','question.subject_id = subject.id');
        $this->db->group_by('subject_id');
        $this->db->where('subject.slug', $slug);
        $res = $this->db->get($this->table);
        if($res->num_rows > 0){
			return $this->db->fetch_assoc();
		}
        return false;
     }

	
    public function edit($id, $name, $slug, $public){
        $this->db->where('id',$id);
        $data = array(
           'name' => $name,
           'slug' => $slug,
           'public' => $public
        );   
        return $this->db->update($this->table,$data);
    }    
}