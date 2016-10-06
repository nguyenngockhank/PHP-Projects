<?php

class gui_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->_get_data();
    }

    function _get_data() {
        $res = $this->db->select('group_key, title, value, meta')
                ->where('is_show', 1)
                ->or_where('group_key', 'info')
//                ->order_by('group_key')
                ->order_by('order', 'asc')
                ->get('config')
                ->result();

        $this->gui = array();
        foreach ($res as $rec) {
            $this->gui[$rec->group_key][] = $rec;
            unset($rec->group_key);
        }
    }

    function &getGUI($group_key) {
        return $this->gui[$group_key];
    }

    function &getBanner() {
        $res = $this->getGUI('banner');

        foreach ($res as &$banner) {
            if (!empty($banner->meta)) {
                $banner->meta = $this->article_model->getById($banner->meta, false);
            }
        }
        return $res;
    }

    function &getTools() {
        return $this->getGUI('tools');
    }

    function &getVids() {
        return $this->getGUI('youtube');
    }

    function &getSponors() {
        return $this->getGUI('sponors');
    }

    function &getSteps() {
        return $this->getGUI('steps');
    }

    function &getInfo() {
        $data = $this->getGUI('info');
        $info = new stdClass();
        foreach ($data as $d) {
            $key = $d->value;
            $info->$key = $d->meta;
        }
        unset($data);
        return $info;
    }

}
