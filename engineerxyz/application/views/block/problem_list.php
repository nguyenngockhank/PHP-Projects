<div class="container">
    <div class="jumbotron hero-spacer">
        <h1 class="text-color">What Are Open Problems ?</h1>
        <p>Open problems can be from daily life to industrial applications, from environment protection, energy, green technology, healthcare, business.</p>
        <p class="pull-right" ><button data-toggle="modal" data-target="#YourProblemModal" class="btn btn-primary btn-large">Submit Your Problem !</button></p>
    </div>
    <div class="modal fade" id="YourProblemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Submit Your Open Problem</h4>
                </div>
                <div class="modal-body">
                    <iframe src="https://docs.google.com/forms/d/1s_v2LhKGfJgkzyV2kH6cqJX97lqq9FjqZTbCX8dxbxw/viewform?embedded=true" width="550" height="450" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="SolvedModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Submit Your Solutions</h4>
                </div>
                <div class="modal-body">
                    <iframe src="https://docs.google.com/forms/d/1m7SRHjpl316IviyoFUnJDKEjqjmmXFbgUV46tliS12w/viewform?embedded=true" width="550" height="450" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <?php
    $num_problems = count($problems);
    ?>
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-color">Open Problems</h3>
        </div>
    </div>
    <!-- /.row -->
    <div id="open_list_problem" class="list_problem text-center">
        <?php for ($j=0, $i = 0; $i < $num_problems && $problems[$i]->status == 0; ++$i, ++$j): $problem = $problems[$i]; ?>
             <?php if($j%4==0): ?> <div class="row"> <?php endif; ?> 
             <div class="col-lg-3 col-md-6">
                <div class="thumbnail">
                    <img class="img-responsive" src="<?= srcImgProblem($problem) ?>" alt="<?= $problem->title ?>">
                    <div class="caption">
                        <h3><?= $problem->title ?></h3>
                        <p class="text-justify"><?= $problem->summary ?> <a href="<?= hrefProblem($problem) ?>"><i>Read More</i></a></p>
                        <p class="rated">
                            <?php for ($j = 1; $j <= 5; ++$j): ?>
                                <?php if ($problem->star == (6 - $j)): ?>
                                    <span class="score">☆</span>
                                <?php else: ?>
                                    <span>☆</span>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </p>
                    </div>
                </div>
            </div>
            <?php if($i%4==3): ?> </div> <?php endif; ?> 
        <?php endfor; ?>
        <?php if($i%4!=0): ?> </div> <?php endif; ?> 

        <div class="clearfix"></div>
        <p class="text-center">
            <button data-toggle="modal" data-target="#SolvedModal"  class="btn btn-danger btn-lg">Submit Your Idea To Solve</button>
        </p>
    </div>
    <hr>
   
 
    <div class="container">
     <div class="row">
        <div class="col-lg-12">
            <h3 class="text-color">Solved Problems</h3>
        </div>
    </div>
    <!-- /.row -->
    <div id="solved_list_problem" class="list_problem row text-center">
        <?php for ($j=0; $i < $num_problems; ++$i, ++$j): $problem = $problems[$i]; ?>
            <?php if($j%4==0): ?> <div class="row"> <?php endif; ?> 
            <div class="col-lg-3 col-md-6 ">
                <div class="thumbnail">
                    <img class="img-responsive" src="<?= srcImgProblem($problem) ?>" alt="<?= $problem->title ?>">
                    <div class="caption">
                        <h3><?= $problem->title ?></h3>
                        <p class="text-justify"><?= $problem->summary ?> <a href="<?= hrefProblem($problem) ?>"><i>Read More</i></a></p>
                        <p class="rated">
                            <?php for ($j = 1; $j <= 5; ++$j): ?>
                                <?php if ($problem->star ==  (6- $j)): ?>
                                    <span class="score">☆</span>
                                <?php else: ?>
                                    <span>☆</span>
                                <?php endif; ?>
                            <?php endfor; ?>
                        </p>
                    </div>
                </div>
            </div>
            <?php if($j%4==3): ?> </div> <?php endif; ?> 
        <?php endfor; ?>
        <?php if($j%4!=3): ?> </div> <?php endif; ?> 

    </div>
    </div>
    <hr>
</div>