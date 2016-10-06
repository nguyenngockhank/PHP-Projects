<?php
 
class course extends MY_Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->loadGC();
    }

    function index() {
        $crud = $this->crud;
        $crud->set_table('course')->unset_read();
        $crud->set_field_upload('img', 'upload/course/');
        $crud->add_action('', 'http://png.findicons.com/files/icons/1018/pixelicious/32/picture.png', 'admin/course/image', 'btn ico');

        $crud->add_action('', base_url() . 'assets/images/utube.ico', 'admin/course/youtube', 'btn ico');
        $crud->display_as('img', 'Ảnh cover')
                ->display_as('title', 'Tiêu đề')
                ->display_as('summary', 'Nội dung')
        ;

        $this->render();
    }

    function image($course_id) {
        $course = $this->db->get_where('course', array('id' => $course_id))->row();
        if (empty($course))
            return;
        $crud = $this->crud;
        $crud->set_table('course_media')->where('course_id', $course_id)->where('type', 'image')
                ->unset_columns('course_id', 'type')
                ->unset_read()->unset_export();

        $crud->field_type('type', 'hidden', 'image');
        $crud->field_type('course_id', 'hidden', $course_id);
        $crud->required_fields('value');

        $crud->set_field_upload('value', 'upload/course/media/');


        $crud->display_as('title', 'Tiêu đề')
                ->display_as('value', 'Hình ảnh(400x250)')
        ;
        $this->md_render($course);
    }

    function youtube($course_id) {
        $course = $this->db->get_where('course', array('id' => $course_id))->row();
        if (empty($course))
            return;
        $crud = $this->crud;
        $crud->set_table('course_media')->where('course_id', $course_id)->where('type', 'youtube')
                ->unset_columns('course_id', 'type')
                ->unset_read()->unset_export();

        $crud->field_type('type', 'hidden', 'youtube');
        $crud->field_type('course_id', 'hidden', $course_id);
        $crud->required_fields('value');

        $crud->callback_column('value', array($this, '_column_youtube'));

        $crud->display_as('title', 'Tiêu đề')
                ->display_as('value', 'Youtube ID')
        ;
        $this->md_render($course);
    }

    private function md_render($course) {
        $output = $this->crud->render();
        $output->course = $course;
        $this->load->view('admin/block/course', $output);
    }

}