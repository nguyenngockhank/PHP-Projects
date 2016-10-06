<?php if (!isset($table)): ?>
    <h1 class="text-center">Choose a table</h1>
    <div class="container text-center">
        <?php foreach ($list_tables as $table): ?>
            <button class="btn btn-default">
                <a href="<?= site_url($class_name . '/' . $method_name . '/' . $table) ?>">
                    <span class="glyphicon glyphicon-ok"></span> <?= $table ?>
                </a>
            </button>
        <?php endforeach; ?>
    </div>
<?php else: ?>

    <h1 class="text-center">`<?= ucfirst($table) ?>` selected <a title="back" href="<?= site_url($class_name . '/' . $method_name) ?>">
            <span class="glyphicon glyphicon-share-alt"></span></a>
    </h1> 
    <?php
    if (isset($alert)) {
        echo alert_message($alert['message'], $alert['type']);
        exit;
    }
    ?>

    <div class="container">
        <form class="form-horizontal" role="form" method="post">
            <fieldset style="margin-bottom: 20px">
                <legend>SQL Options</legend>
                <div class="row">
                    <!--like, or_like, or_where-->
                    <div class="col-lg-3">
                        <strong  class="col-lg-3 control-label"> Where </strong> 
                        <div class="col-lg-9">
                            <?= form_input(array('name' => 'where')); ?>
                        </div>
                    </div>                  
                    <div class="col-lg-3">
                        <strong class="col-lg-3 control-label"> Order </strong>
                        <?php
                        $t = $fields;
                        array_unshift($t, "none");
                        ?>
                        <div  class="col-lg-9">  <?= form_dropdown('order_by', $t) ?>  </div>
                    </div>
                    <div class="col-lg-3">
                        <strong class="col-lg-3 control-label"> Limit </strong>
                        <div  class="col-lg-9">   <?= form_input(array('name' => 'limit', 'type' => 'number', 'value' => '0')); ?>  </div>
                    </div>
                </div>
            </fieldset>

            <fieldset  style="margin-bottom: 20px">
                <legend>Operations</legend>
                <?php
                $operations = array('unset_print', 'unset_export', 'unset_read', 'unset_add', 'unset_delete', 'unset_edit',);
                ?>
                <?php foreach ($operations as $value) : ?>
                    <div class="col-lg-2">
                        <label class="control-label"> <?= $value ?>
                            <?= form_input(array('name' => $value, 'type' => 'checkbox', 'value' => 'unset')); ?>
                        </label>
                    </div>
                <?php endforeach; ?>
            </fieldset>


            <fieldset  style="margin-bottom: 20px">
                <legend>Relation Table 1 - n <span class="glyphicon glyphicon-plus-sign pull-right"></span></legend>
                <div class="col-lg-2">
                    <strong  class="col-lg-3 control-label"> Field </strong> 
                    <div class="col-lg-8">
                        <?= form_dropdown('relation[0][0]', $fields) ?> 
                    </div>
                </div>      
                <div class="col-lg-3">
                    <strong  class="col-lg-3 control-label"> Table </strong> 
                    <div class="col-lg-8">
                        <?php
                        $t = array_combine($list_tables, $list_tables);
                        array_unshift($t, "none");
                        ?>
                        <?= form_dropdown('relation[0][1]', $t) ?> 
                    </div>
                </div>    
                <div class="col-lg-4">
                    <strong  class="col-lg-3 control-label">Relation title</strong> 
                    <div class="col-lg-8">
                        <?= form_input('relation[0][2]') ?> 
                    </div>
                </div>    
                <div class="col-lg-3">
                    <strong  class="col-lg-3 control-label">where</strong> 
                    <div class="col-lg-8">
                        <?= form_input('relation[0][3]') ?> 
                    </div>
                </div>   
            </fieldset>


            <fieldset  style="margin-bottom: 20px">
                <legend>Relation Table n - n</legend>
            </fieldset>

            <!--END OPTIONS-->

            <?php
            $field_options = array(
                'default' => 'Default',
                'hidden' => 'Hidden',
                'integer' => 'Integer',
                'string' => 'String',
                'text' => 'Text',
            );
            $act_options = array(
                'none' => 'No Action',
                'upload' => 'Field Upload',
                'relation' => 'Relation'
            );
            $this->table->set_template(array(
                'table_open' => '<table class="table table-strip">'
            ));
            $this->table->set_heading('Fields', 'Display As', 'Required', 'Columns', 'Fields', 'Field Type', 'Callback', 'Action');
            foreach ($fields as $field) {
                $display_as = form_input(array('name' => "display_as[$field]"));
                $required = form_checkbox('required[]', $field, FALSE);
                $show_column = form_checkbox('columns[]', $field, TRUE);
                $show_field = form_checkbox('fields[]', $field, TRUE);
                $field_type = form_dropdown("field_type[$field]", $field_options);
                $callback = form_input(array('name' => "column_callback[$field]"));
                $act = form_dropdown('act', $act_options);
                $this->table->add_row($field, $display_as, $required, $show_column, $show_field, $field_type, $callback, $act);
            }
            ?>
            <?= $this->table->generate(); ?>
            <hr>
            <div class="col-md-4 col-md-offset-4">
                <input type="submit" name="enter" class="btn-primary" value="Submit" />
            </div>

        </form>
    </div>

<?php endif; ?>
