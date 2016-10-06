<?php
$sql_params = array('where', 'order_by', 'limit');
$operations = array('unset_print', 'unset_export', 'unset_read', 'unset_add', 'unset_delete', 'unset_edit',);
$fld_ops = array('required_fields', 'unset_columns', 'unset_fields');
?>
<?= '<?php ' ?>
class <?= $table ?> extends MY_Admin_Controller {
function __construct() {
parent::__construct();
$this->loadGC();
}

function index(){
$crud = $this->crud;
$crud->set_table('<?= $table ?>')
<?php foreach ($sql_params as $param): ?>
    <?php if (isset($$param)): ?>
        -><?= $param ?>('<?= $$param ?>')
    <?php endif; ?>
<?php endforeach; ?>

<?php foreach ($operations as $param): ?>
    <?php if (isset($$param)): ?>
        -><?= $param ?>()
    <?php endif; ?>
<?php endforeach; ?>
;

<?php foreach ($fld_ops as $param): ?>
    <?php if (!empty($$param)): ?>
        $crud-><?= $param ?>('<?= implode($$param, "','") ?>');
    <?php endif; ?>
<?php endforeach; ?>



<?php if (!empty($display_as)): ?>
    $crud
    <?php foreach ($display_as as $field => $value): ?>
        ->display_as('<?= $field ?>', '<?= $value ?>')
    <?php endforeach; ?>
    ; 
<?php endif; ?>
$this->render();
}
}
