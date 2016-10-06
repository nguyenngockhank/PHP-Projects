<style>
    .conf_row{
        margin: 20px;
        overflow: auto;
    }
</style>
<h1 class="text-center"> Web Config CRUD</h1>
<div class="container">
    <div class="col-lg-10 col-lg-offset-1">
        <div class="row">
            <div class="col-md-3">
                <button class="btn btn-default" id="btn_add_row">
                    <span class="glyphicon glyphicon-plus"></span> New Stuff
                </button>

                <button class="btn btn-success" id="btn_save">
                    <span class="glyphicon glyphicon-ok"></span> Save
                </button>
            </div>
            <div class="col-md-8" id="key_suggests">
                <strong>Key Suggests :</strong> 
                <button class="btn btn-link">website</button>
                <button class="btn btn-link">phone</button>
                <button class="btn btn-link">address</button>
                <button class="btn btn-link">email</button>
                <button class="btn btn-link">hotline</button>
            </div>
        </div>
        <hr>
        <div id="conf_panel">
            <div class="conf_row">
                <div class="col-sm-6">
                    <input name="key[]" value="" placeholder="key" />
                </div>
                <div class="col-sm-6">
                    <input name="value[]" value="" placeholder="value" />
                </div>
            </div>
        </div>


    </div>
</div>