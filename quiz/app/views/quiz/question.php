<?php $this->view('header') ?>
<?php $this->view('quiz/banner') ?>
<?php $this->view('quiz/sidebar') ?>
<?php
if(isset($question)){
$type = $question['type'] == '1' ? 'radio' : 'checkbox';  ?>

 <div class="panel panel-default">
    <!-- HEAD -->
    <div class="panel-heading">
        <h1><?= $subject['name'] ?></h1>
        <!-- BUTTON GROUP -->
        <div class="btn-toolbar">
        <div class="btn-group">
        <?php
            for($i=1; $i<= $subject['num']; $i++){
            ?>
            <a href="<?= WEB_DOMAIN.'quiz/question/'.$subject['slug'].'/'.$i ?>/"
                    class="btn <?= ($order == $i ) ? 'btn-primary' : 'btn-default' ?>"><?= $i ?></a>
            <?php
            }
        ?>
        </div>
      </div>
    </div>
      <!-- BODY -->
     <div class="panel-body">

       <p class="question"> <?= $question['content'] ?>  </p>
       <form method="post">
     <?php
        $right_ans = array();
        while($row = $answer->fetch_assoc()){
        ?>
       <div class="row">
         <label class="answrapper">
          <div class="col-lg-12">
            <div class="input-group pull-left">
               <span class="input-group-addon border"><?= $row['id'] ?> </span>
               <span class="input-group-addon">
                   <input type="<?= $type ?>" value="<?= $row['id'] ?>" name="ans[]" id="ans_<?= $row['id'] ?>">
               </span>
               <div class="answer"><?= $row['content'] ?>  </div>
           </div>

          </div><!-- /.col-lg-6 -->

          </label>
        </div>
        <?php
         if($row['isright']) $right_ans[] = $row['id']  ;
        }
     ?>
        <!--  BUTTONs  -->
        <div class="text-center">
            <?php   if($order > 1){ ?>
               <a href="<?= WEB_DOMAIN.'quiz/question/'.$subject['slug'].'/'.($order - 1) ?>/"
                    class="btn btn-success pull-left">&laquo;</a>
            <?php  } ?>

            <button id="solve" type="button" class="btn btn-primary"> Solve </button>

            <?php   if($order < $subject['num']){ ?>
               <a href="<?= WEB_DOMAIN.'quiz/question/'.$subject['slug'].'/'.($order + 1) ?>/"
                    class="btn btn-success pull-right">&raquo;</a>
            <?php  } ?>
       </div>
        <input name="nums" type="hidden" value="<?= $answer->num_rows ?>" />
        <input name="right_ans" type="hidden" value="<?= implode(',',$right_ans) ?>" />

      </form>

     </div>
  </div>
  <?php } ?>
 <?php $this->view('quiz/foot') ?>