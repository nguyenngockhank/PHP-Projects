<h1 class="text-center">Tables List</h1>
<div class="container">
    <?php foreach ($tables as $table => $fields): ?>
        <div class="col-lg-3 col-md-4">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><?= $table ?></h3>
                </div>

                <ul class="list-group">
                    <?php foreach ($fields as $field): ?>
                        <li class="list-group-item"><?= $field ?></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    <?php endforeach; ?>
</div>