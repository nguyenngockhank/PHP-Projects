<style>
    .table-wrapper{

    }
    table{
        width: 100%;
        border: 1px solid #ddd;
    }
    th{
        text-align: left;
    }
</style>
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
?>
<?php foreach ($tables as $table => $fields): ?>

    <div class="table-wrapper">
        <h3><?= strtoupper($table) ?>  </h3> 
        <ul>
            <li> 
                <strong> where </strong>:  
                <?= form_input(array('name' => 'where')); ?>
            </li>
            <li>
                <strong> order </strong>:
                <?= form_dropdown('order_by', $fields) ?> Or <?= form_input(array('name' => 'order_by')); ?>
            </li>
            <li>
                <strong> relation_n_n </strong>:  <?= form_dropdown('act', $list_tables, $table); ?>
            </li>
            <li>
                <strong> unset_operations </strong>:  <?= form_checkbox('unset_operations', $table); ?>
                <ul>
                    <li>  
                        <strong> unset_read </strong>:  <?= form_checkbox('unset_read', $table); ?>
                    </li>
                    <li>  
                        <strong> unset_add </strong>:  <?= form_checkbox('unset_add', $table); ?>
                    </li>
                    <li>  
                        <strong> unset_edit </strong>:  <?= form_checkbox('unset_edit', $table); ?>
                    </li>
                </ul>

            </li>
        </ul>


        <?php
        $this->table->set_heading('Fields', 'Display As', 'Show Columns', 'Show Fields', 'Field Type', 'Callback', 'Action');
        foreach ($fields as $field) {
            $display_as = form_input(array('name' => 'display_as'));
            $show_column = form_checkbox('show_column', $field, TRUE);
            $show_field = form_checkbox('show_field', $field, TRUE);
            $field_type = form_dropdown('field_type', $field_options);
            $callback = form_input(array('name' => 'column_callback'));
            $act = form_dropdown('act', $act_options);
            $this->table->add_row($field, $display_as, $show_column, $show_field, $field_type, $callback, $act);
        }
        echo $this->table->generate();
        ?>
    </div>

<?php endforeach; ?>
