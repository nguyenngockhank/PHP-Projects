<h1 class="text-center">Create A Database</h1>

<div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
    <?php
    $db_name = $this->db->database;
    if (!empty($db_name)) {
        ?>
        <p class="alert alert-info">
            <em>Your config database is </em> <strong><?= $db_name ?></strong>
        </p>
        <?php
    }

    if (isset($result)) {
        if ($result) {
            ?>
            <p class="alert alert-success">
                Create <?= $this->input->post('db_name') ?> successfully;
            </p>
            <?php
        } else {
            ?><?php
        }
    }
    ?>

    <?= form_open($class_name . '/init_db'); ?>
    <div class="form-group">
        <?=
        form_input(array('name' => 'db_name',
            'value' => $db_name,
            'required' => '',
            'placeholder' => 'Input your database name ^^')
        )
        ?>
    </div>
    <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
            <?= form_submit('enter', 'Create') ?>
        </div>
    </div>
    <?= form_close() ?>
</div>