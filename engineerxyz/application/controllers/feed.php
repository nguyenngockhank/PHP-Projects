<?php

class Feed extends CI_Controller {

    function index() {
        $this->load->helper('xml');
        $this->load->helper('text');
        $this->load->model('article_model', 'posts');


        $data['feed_name'] = 'engineerxyz.com'; // your website
        $data['encoding'] = 'utf-8'; // the encoding
        $data['feed_url'] = 'http://engineerxyz.com/feed'; // the url to your feed
        $data['page_description'] = 'What my site is about comes here'; // some description
        $data['page_language'] = 'en-en'; // the language
        $data['creator_email'] = 'contact@engineerxyz.com'; // your email
        $data['posts'] = $this->posts->getTopNews(20);
        header("Content-Type: application/rss+xml"); // important!
        
        $this->load->view('widget/feed', $data);
    }

}
