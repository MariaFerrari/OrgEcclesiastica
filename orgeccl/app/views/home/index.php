<?php
global $data;
var_dump($data);
?>
<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Home</span></p>
<p style="margin:0.36em 0em 0.71em 0em;line-height:2.11267605633803;"><span style="font-family:'Abel','Arial';font-size:1.143em;">Welcome to our site!<br />
        Today is: <?php echo date('l jS \of F Y h:i:s A'); ?></span></p>
<a href="<?=$data['base_path']. "/diocesi/all"?>">Tutte le diocesi</a>
<a href="<?=$data['base_path'] ?>/home/about">about us</a>