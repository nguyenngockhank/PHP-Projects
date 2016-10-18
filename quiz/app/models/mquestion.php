<?php
class Mquestion extends Model{
	private $table = 'question';

    private function getAnswer($question_id){
        $cols = 'id, content, isright';
        $this->db->select($cols);
        $this->db->where('question_id', $question_id);
        $this->db->order_by('id');
        return $this->db->get('answer');
    }

    public function getByOrder($subject_id, $order){
        $order = $order - 1;
        $cols = 'id, content, type';
        $this->db->select($cols);
        $this->db->where('subject_id', $subject_id);
        $this->db->order_by('time');
        $this->db->limit(1 , $order);

		$row = $this->db->get($this->table);
        if($row->num_rows){
            $res['question'] = $this->db->fetch_assoc();
            $res['answer'] =  $this->getAnswer($res['question']['id']);
            return $res;
        }
        return false;
    }

    public function getById($id){
        $id = (int)$id;
        $cols = 'id, content, type';
        $this->db->select($cols);
        $this->db->where('id', $id);
		$row = $this->db->get($this->table);

        if($row->num_rows){
             $res['question'] = $this->db->fetch_assoc();
             $res['answer'] =  $this->getAnswer($id);
             return $res;
        }
        return false;
    }

    public function getAll($subject_id, $cols = ''){
        if(empty($cols)){
			$cols = 'id, content, type';
		}
		$subject_id = (int)$subject_id;
        $this->db->where('subject_id', $subject_id);
        $this->db->order_by('time','asc');
		$this->db->select($cols);
		return $this->db ->get($this->table);
    }

    public function add($subject, $content, $type, $ans, $right_ans){
		$data = array(
           'subject_id' => $subject,
           'content' => $content,
           'type' => $type
        );
        $this->conn->autocommit(false);
        try{
            $res = $this->db->insert($this->table, $data);
            $num = count($ans);
            $post_id = $this->conn->insert_id;

            $cols = array('id', 'question_id', 'content', 'isright');
            $data = array();
            for( $i = 0 ; $i < $num; $i++ ){
                $k = chr(65+$i);
                $isright = in_array($k, $right_ans);
                $record = array( $k, $post_id, $ans[$i], $isright);
                $data[] = $record;
            }

            $this->db->insert_batch('answer', $cols , $data, FALSE);
            $this->conn->commit();
            return true;
        } catch(Exception $e){
            return false;
        }

	}

    public function delete($id){
        $id = (int)$id;
        $this->conn->autocommit(false);

        $this->db->where('question_id', $id);
        $this->db->delete('answer');
        $this->db->where('id', $id);
        $this->db->delete($this->table);

        $this->conn->commit();
    }

}