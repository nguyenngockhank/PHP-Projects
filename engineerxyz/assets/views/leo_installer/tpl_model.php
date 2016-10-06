<?= '<?php ' ?>
class <?= $table_name ?> extends MY_Admin_Controller {
function __construct() {
parent::__construct();
$this->loadGC();
}

function index(){
$crud = $this->crud;
$crud->set_table('<?= $table_name ?>');


<?php if (!empty($unset_columns)) { ?>
    $crud->unset_columns(<?= $this->installer_model->param2str($unset_columns) ?>);   
<?php } ?>

<?php if (!empty($unset_fields)): ?>
    $crud->unset_fields(<?= $this->installer_model->param2str($unset_fields) ?>);
<?php endif; ?>
    
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
