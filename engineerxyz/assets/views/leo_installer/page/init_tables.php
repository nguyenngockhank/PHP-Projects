<h1 class="text-center">Create Tables</h1>
<div class="col-lg-offset-1 col-lg-10">
    <?= form_open($class_name . '/init_tables'); ?>
    <?php
    $tables = array(
        'user', 'category', 'article', 'slider'
    );
    $widgets = array(
        'user' => array('role'),
        'article' => array('slug', 'order', 'is_show'),
        'category' => array('slug', 'order', 'is_show'),
        'slider' => array('order', 'is_show')
    );
    ?>
    <?php
    if (isset($result)) {
        ?>
        <div class="alert alert-success">
            Set up successfully !!!
        </div>
        <?php
    }
    ?>
    <fieldset>
        <legend>Tables:</legend>
        <?php foreach ($tables as $table): ?>
            <div class="col-lg-2 col-md-3" style="margin-bottom: 20px">
                <div class="input-group">
                    <label>
                        <input name="tables[]" value="<?= $table ?>" type="checkbox" checked>
                        <?= $table ?>
                    </label>
                    <?php if (isset($widgets[$table])): ?>
                        <ul class="list-unstyled" style="margin-left: 20px">
                            <?php foreach ($widgets[$table] as $widget): ?>
                                <li><input name="widgets[<?= $table ?>][]" value="<?= $widget ?>" type="checkbox" checked><?= $widget ?></li>
                            <?php endforeach; ?>
                        </ul>
                    <?php endif; ?>
                </div>
            </div>
        <?php endforeach; ?>
    </fieldset>


    <div class="row">
        <div class="form-group">
            <div class="col-md-4 col-md-offset-4">
                <?= form_submit('enter', 'Create') ?>
            </div>
        </div>
    </div>
    <?= form_close() ?>
</div>