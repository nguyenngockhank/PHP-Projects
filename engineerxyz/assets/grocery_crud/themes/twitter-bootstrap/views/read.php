<?php
$this->set_css($this->default_theme_path.'/twitter-bootstrap/css/bootstrap.min.css');
$this->set_css($this->default_theme_path.'/twitter-bootstrap/css/bootstrap-responsive.min.css');



$this->set_js_lib($this->default_javascript_path . '/jquery-1.10.2.min.js');
$this->set_js_lib($this->default_theme_path.'/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js');
?>
<div class='container'>
    <h3>
        View Record
    </h3>
    <div class='form-content form-div'>
        <div>
            <?php
            $counter = 0;
            foreach ($fields as $field) {
                $even_odd = $counter % 2 == 0 ? 'odd' : 'even';
                $counter++;
                ?>
                <div class='form-field-box <?php echo $even_odd ?>' id="<?php echo $field->field_name; ?>_field_box">
                    <strong class='pull-left span2' id="<?php echo $field->field_name; ?>_display_as_box">
    <?php echo $input_fields[$field->field_name]->display_as ?><?php echo ($input_fields[$field->field_name]->required) ? "<span class='required'>*</span> " : "" ?> :
                    </strong>
                    <div id="<?php echo $field->field_name; ?>_input_box">
    <?php echo $input_fields[$field->field_name]->input ?>
                    </div>
                    <div class='clearfix'></div>
                    <hr>
                </div>
<?php } ?>

    </div>
</div>
