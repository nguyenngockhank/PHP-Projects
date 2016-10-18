
<?php $this->view('admin/header'); ?>
<h1> <?= $title ?> </h1>
<?php
   $type = $question['type'] == '1' ? 'radio' : 'checkbox';
?>

 <div class="panel panel-default">
    <!-- HEAD -->
    <div class="panel-heading">

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
        <!-- SOLVE BUTTON -->
        <div class="col-lg-7">
            <button id="solve" type="button" class="btn btn-primary"> Solve </button>
        </div>
        <input name="nums" type="hidden" value="<?= $answer->num_rows ?>" />
        <input name="right_ans" type="hidden" value="<?= implode(',',$right_ans) ?>" />
       </form>
     </div>
  </div>

<?php $this->view('admin/footer'); ?>