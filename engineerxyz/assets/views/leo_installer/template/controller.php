<?= '<?php ' ?>
class <?= $name ?> extends <?= $parent ?>_Controller{

    function index(){
        
        $this->render('<?= $layout ?>');
    }
}
