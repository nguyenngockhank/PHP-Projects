<div class="container">
    <div class="row">
        <aside class="col-md-3">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><strong>Danh sách các chủ đề</strong></h3>
          </div>

            <ul class="list-group">
            <?php
                while($row = $listsubject->fetch_assoc()){
                ?>
              <li class="list-group-item">
                <h4 class="list-group-item-heading">
                    <a href="<?= WEB_DOMAIN ?>quiz/question/<?= $row['slug'] ?>/"><?= $row['name'] ?></a>
                </h4>
              </li>
                <?php
                }
            ?>
            </ul>

        </div>
        </aside>
		<div class="col-md-9">