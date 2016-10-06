<div class="container">
    <div class="col-md-9">
        <h2>Searching the website </h2>

        <script>
            (function() {
                var cx = '011542190987586639426:33n4c637cxa';
                var gcse = document.createElement('script');
                gcse.type = 'text/javascript';
                gcse.async = true;
                gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                        '//www.google.com/cse/cse.js?cx=' + cx;
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(gcse, s);
            })();
        </script>


        <gcse:searchbox></gcse:searchbox>


        <gcse:searchresults></gcse:searchresults>
    </div>
    
    <div>
        <?php $this->load->view('layout/sidebar'); ?>
    </div>
</div>


