<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/codemirror/lib/codemirror.css">
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/css/bootstrap-responsive.min.css" />


    </head>
    <body>
        <?php $this->load->view('admin/navbar'); ?>


        <h1 class="text-center" style="margin-top: 50px; text-transform: capitalize; text-align: center"><?= $file ?></h1>
        <div class="container">
            <?php if (isset($res)): ?>
                <?php if ($res): ?>
                    <div class="alert alert-success">
                        Save successfully;
                    </div>
                <?php else: ?>
                    <div class="alert alert-danger">
                        Save unsuccessfully;
                    </div>
                <?php endif; ?>
            <?php endif; ?>
            <form method="post">
                <input type="hidden" name="file" value="<?= $file ?>">

                <div style="margin-bottom: 20px;">
                    <button type="submit" class="btn"><i class="icon-ok"></i> Save</button>
                    <a href="<?= site_url() ?>admin/editor/" class="btn"><i class="icon-remove"></i> Cancel</a>
                </div>
                <?php
                $source = str_replace('</textarea>', '&lt;/textarea&gt;', $source);
                ?>

                <textarea id="source_code" name="source_code"><?= $source ?></textarea>
            </form>
        </div>

        <script src="<?= site_url() ?>assets/grocery_crud/js/jquery-1.10.2.min.js"></script>
        <script src="<?= site_url() ?>assets/grocery_crud/themes/twitter-bootstrap/js/libs/bootstrap/bootstrap.min.js"></script>

        <script src="<?= base_url() ?>assets/codemirror/lib/codemirror.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/addon/edit/matchbrackets.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/htmlmixed/htmlmixed.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/xml/xml.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/javascript/javascript.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/css/css.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/clike/clike.js"></script>
        <script src="<?= base_url() ?>assets/codemirror/mode/php/php.js"></script>
        <script>
            var editor = CodeMirror.fromTextArea(document.getElementById("source_code"), {
                lineNumbers: true,
                matchBrackets: true,
                mode: "application/x-httpd-php",
                indentUnit: 4,
                indentWithTabs: true
            });

        </script>
    </body>
</html>
