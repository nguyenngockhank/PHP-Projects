<?php $num_course = count($courses); ?>
<?php for ($i = 0; $i < $num_course; ++$i): $day = $courses[$i]; ?>
    <div class="content-section-<?= ($i % 2 == 0) ? 'a' : 'b' ?>" >
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-sm-6">
                    <h2 class="section-heading"><?= $day->title ?></h2>
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <p class="lead"><?= $day->summary ?></p>
                </div>
                <div class="col-lg-5 col-sm-6">
                    <img class="img-responsive"  src="<?= srcImgCourse($day) ?>" alt="<?= $day->title ?>">
                </div>
            </div>
           <div class="clearfix"></div>
            <?php $media = $this->course->getMedia($day->id); ?>
            <?php if (!empty($media)): ?>
                <div class="row">
                    <?php $j = 0; ?>
                    <?php foreach ($media as $md): $j++; ?>
                        <div class="col-lg-3 col-md-6 hero-feature">
                            <?php if ($md->type == 'image'): ?>
                                <div class="thumbnail">
                                    <img src="<?= srcImgCourseMedia($md) ?>" alt="<?= $day->title ?>">
                                </div>                               
                            <?php elseif ($md->type == 'youtube'): ?>
                                <iframe style="margin-bottom: 4px" width="253" height="158" src="//www.youtube.com/embed/<?= $md->value ?>" frameborder="0" allowfullscreen></iframe>
                            <?php endif; ?>
                        </div>
                    <?php endforeach; ?>

                </div>
            <?php endif; ?>

        </div>
        <!-- /.container -->
    </div>

<?php endfor; ?>
