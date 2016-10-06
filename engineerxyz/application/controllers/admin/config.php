<?php
class Config extends MY_Admin_Controller {

    const BANNER_WIDTH = 900;
    const BANNER_HEIGHT = 200;
    const SPONOR_WIDTH = 145;
    const STEP_WIDTH = 222;
 
    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    private function init_crud($group_key, $use_meta = false) {
        $crud = $this->crud;
        $crud->set_table('config')
                ->where('group_key', $group_key)
                ->order_by('order')
                ->unset_export()
        ;
        if ($use_meta === false) {
            $crud->unset_columns('meta', 'group_key')
                    ->unset_fields('meta');
        } else {
            $crud->unset_columns('group_key');
        }
        $crud->required_fields('title', 'value');
        $crud->display_as('order', 'Thứ tự');
        $crud->callback_field('order', array($this, 'order_field'));
        $crud->field_type('group_key', 'hidden', $group_key);
        return $crud;
    }

    function youtube() {
        $crud = $this->init_crud('youtube');
        $crud->display_as('title', 'Tiêu đề vidéo')
                ->display_as('value', 'Youtube Video ID');

        $crud->callback_column('value', array($this, '_make_yout_vids'));

        $this->render();
    }

    function tools() {
        $crud = $this->init_crud('tools');
        $crud->display_as('title', 'Tên hiển thị')
                ->display_as('value', 'Đường link http(s)');

        $crud->callback_column('value', array($this, '_make_link'));

        $this->render();
    }

    function banner() {
        $crud = $this->init_crud('banner', true);

        $crud->set_field_upload('value', 'upload/slider/');
//        $this->img_width = Config::BANNER_WIDTH;
//        $this->img_height = Config::BANNER_HEIGHT;
//        $crud->callback_after_upload(array($this, '_make_img_thumb'));
        
        $crud->set_relation('meta', 'article', 'title');
        
        
        $crud->display_as('title', 'Tiêu đề')
                ->display_as('value', 'Hình ảnh(900x200)')
                ->display_as('meta', 'Link tới bài viết')
                ;
        $this->render();
    }

    function info() {
        $crud = $this->init_crud('info', true);
        $crud->unset_delete()
                ->unset_add();
        
        $crud->required_fields('title', 'meta');
        
        $crud->unset_fields('order',  'value','is_show');
        $crud->unset_columns('group_key', 'order', 'value', 'is_show');

        $crud->field_type('meta', 'text');

       // $crud->unset_texteditor('meta');
        $crud->display_as('title', 'Tiêu đề')
                ->display_as('meta', 'Nội dung');
        $this->render();
    }

    function sponors() {
        $crud = $this->init_crud('sponors', true);

        $crud->set_field_upload('value', 'upload/sponors/');
//        $this->img_width = Config::SPONOR_WIDTH;
//        $this->img_height = Config::SPONOR_WIDTH;
//        $crud->callback_after_upload(array($this, '_make_img_thumb'));
        $crud->field_type('meta', 'string');
        $crud->callback_column('meta', array($this, '_make_link'));
        $crud->display_as('title', 'Tên nhà đầu tư')
                ->display_as('value', 'Logo')
                ->display_as('meta', 'Đường link http(s)');
        $this->render();
    }

    function steps() {
        $crud = $this->init_crud('steps', true);
     //   $crud->field_type('meta', 'text');
     //   $crud->unset_texteditor('meta');

        $crud->set_field_upload('value', 'upload/steps/');
        $this->img_width = Config::STEP_WIDTH;
        $this->img_height = Config::STEP_WIDTH;
        $crud->callback_after_upload(array($this, '_make_img_thumb'));

        $crud->display_as('title', 'Tiêu đề')
                ->display_as('meta', 'Nội dung')
                ->display_as('value', 'Hình ảnh');
        $this->render();
    }

    // CALL BACK

    function _make_link($value, $row) {
        if(empty($value)){
            return '';
        }
        
        return '<a  href="' . $value . '">' . $row->title . '</a>';
    }

    function _make_yout_vids($value, $row) {
        return '<iframe width="560" height="315" src="//www.youtube.com/embed/' . $value . '" frameborder="0" allowfullscreen></iframe>';
    }

}