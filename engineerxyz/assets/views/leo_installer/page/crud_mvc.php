<h1 class="text-center"> MVC CRUD <a title="back" href="<?= site_url($class_name . '/' . $method_name) ?>">
        <span class="glyphicon glyphicon-share-alt"></span></a>
</h1> 

<div class="container">

    <div class="row">
        <div class="col-lg-4">
            <form method="post">
                <fieldset style="margin-bottom: 20px">
                    <legend>Controller </legend>
                    <div>
                        <input type="text" name="name" required placeholder="Controller Name" value="">                        
                    </div>
                    <br>
                    <div class="col-lg-12">

                        <div class="row">
                            <h4> Parent Controller </h4>
                            <div class="col-lg-6">
                                <div class="radio">
                                    <label>
                                        MY_Controller
                                        <input type="radio" name="parent" value="MY" required >
                                    </label>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="radio">
                                    <label>
                                        CI_Controller
                                        <input type="radio" name="parent" value="CI" required >
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--END PARENT CONTROLLER-->

                   <br>
                   <div class="clearfix">
                        <h4> Layout </h4>
                        <input type="text" name="layout" required placeholder="Layout Block">      
                    </div>

                    <hr>
                    <div class="row">
                        <input type="submit" name="submit_c" value="Submit" class="form-control btn btn-primary">

                    </div>


                </fieldset>

            </form>
        </div>


        <div class="col-lg-4">
            <strong class="col-lg-3 control-label"> View </strong>
            <div class="col-lg-9"> 
                <input type="text" name="view" value="" class="form-control">     
            </div>
        </div>
        <div class="col-lg-4"> 
            <strong class="col-lg-3 control-label"> Model </strong>
            <div class="col-lg-9"> 
                <input type="text" name="model" value="" class="form-control">     
            </div>        
        </div>

    </div>   


    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <input type="submit" name="enter" value="Submit" class="form-control">
        </div>
    </div>
</div>