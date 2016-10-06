<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Image_style {

    public function crop($img_path, $img_thumb, $thumb_size = 300) {
        $config['source_image'] = $img_path;
        $config['new_image'] = $img_thumb;
        $config['image_library'] = 'gd2';
        $config['create_thumb'] = TRUE;
        $config['thumb_marker'] = '';
        $config['maintain_ratio'] = FALSE;

        $img = imagecreatefromjpeg($img_path);

        $_width = imagesx($img);
        $_height = imagesy($img);

        $img_type = '';
        if ($_width > $_height) {
            $img_type = 'wide';
            $config['width'] = intval(($_width / $_height) * $thumb_size);
            if ($config['width'] % 2 != 0) {
                $config['width'] ++;
            }
            $config['height'] = $thumb_size;
        } else if ($_width < $_height) {
            $img_type = 'landscape';
            $config['width'] = $thumb_size;
            $config['height'] = intval(($_height / $_width) * $thumb_size);
            if ($config['height'] % 2 != 0) {
                $config['height'] ++;
            }
        } else {
            $img_type = 'square';
            $config['width'] = $thumb_size;
            $config['height'] = $thumb_size;
        }

        $ci = & get_instance();
        $ci->load->library('image_lib');

        $this->image_lib = $ci->image_lib;
        $this->image_lib->initialize($config);
        $this->image_lib->resize();

        // reconfigure the image lib for cropping
        $conf_new = array(
            'image_library' => 'gd2',
            'source_image' => $img_thumb,
            'create_thumb' => FALSE,
            'maintain_ratio' => FALSE,
            'width' => $thumb_size,
            'height' => $thumb_size
        );

        if ($img_type == 'wide') {
            $conf_new['x_axis'] = ($config['width'] - $thumb_size) / 2;
            $conf_new['y_axis'] = 0;
        } else if ($img_type == 'landscape') {
            $conf_new['x_axis'] = 0;
            $conf_new['y_axis'] = ($config['height'] - $thumb_size) / 2;
        } else {
            $conf_new['x_axis'] = 0;
            $conf_new['y_axis'] = 0;
        }
        $this->image_lib->initialize($conf_new);
        return $this->image_lib->crop();
    }

}
