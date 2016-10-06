<?xml version="1.0" encoding="utf-8" ?>	
<rss version="2.0">	
    <channel>
        <title><?php echo $feed_name; ?></title>
        <link><?php echo $feed_url; ?>
        <description><?php echo $page_description; ?></description>
        <dc:language><?php echo $page_language; ?></dc:language>
        <dc:creator><?php echo $creator_email; ?></dc:creator>

        <dc:rights>Copyright <?php echo gmdate("Y", time()); ?></dc:rights>
            <?php foreach ($posts as $post): ?>
                <item>				
                    <title><?php echo $post->title; ?></title>	
                    <link><?= site_url('news/detail/'. $post->id) ?></link>	
                    <description><![CDATA[<?= $post->summary ?>]]></description>		
                     <pubdate><?= $post->time; ?></pubdate>
                </item>
      
            <?php endforeach; ?>
    </channel>
</rss>