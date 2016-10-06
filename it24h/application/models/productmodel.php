<?phpclass ProductModel extends CI_Model {    const TABLE = 'product';    const DISPLAY = 10;      // TRANG TIM KIM    public function getSearchPage($keyword, $cat_id = 0) {        $keyword = $this->db->escape_str($keyword);        $this->db->like('name', $keyword);        if ($cat_id != 0) {            $this->db->where('cat_id', $cat_id);        }        $product_num = $this->db->from(ProductModel::TABLE)->count_all_results();        return ceil($product_num / ProductModel::DISPLAY);    }    public function search($keyword, $cat_id = 0, $page = 1) {        $start = ($page - 1) * ProductModel::DISPLAY;        $keyword = $this->db->escape_str($keyword);        if ($cat_id != 0) {            $this->db->where('cat_id', $cat_id);        }        $this->db->select('name, slug, price, img, warranty, describe')->like('name', $keyword)->limit(ProductModel::DISPLAY, $start);        $query = $this->db->get(ProductModel::TABLE);        return $query->result_array();    }    // TRANG CHU    public function getHot() {        $query = $this->db->select('name, slug, price, img')->where('hot', 1)->limit(3)->order_by('date', 'desc')->get(ProductModel::TABLE);        return $query->result_array();    }    public function getRandom() {        $query = $this->db->select('name, slug, price, img')->limit(6)->order_by('id', 'random')->get(ProductModel::TABLE);        return $query->result_array();    }    public function getNew($category) {		$this->db->select('name, slug, price, img, warranty, describe')->limit(4)->order_by('date', 'desc')->order_by('id', 'desc');		if (empty($category['child'])) {			$this->db->where('cat_id', $category['id']);        } else {			$list = array_keys($category['child']);            $list[] = $category['id'];            $query = $this->db->where_in('cat_id', $list);        }				return $this->db->get(ProductModel::TABLE)->result_array();    }    // TRANG PRODUCT DETAIL    public function getBySlug($slug) {        $slug = $this->db->escape_str($slug);        $query = $this->db->select('id, img, cat_id, warranty, name, price, describe')->where('slug', $slug)->get(ProductModel::TABLE);        return $query->row_array();    }    public function getById($id) {        $query = $this->db->select('slug, img, name, price')->where('id', $id)->get(ProductModel::TABLE);        return $query->row_array();    }    public function getOthers($id, $cat_id) {        $cond = array('cat_id' => $cat_id, 'id !=' => $id);        $query = $this->db->select('img, name, slug, price, warranty, describe')->where($cond)->limit(4)->get(ProductModel::TABLE);        return $query->result_array();    }}?>