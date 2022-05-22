<?php
  global $data;
  $diaconi = $data['rows'];
?>

<span><a HREF="/orgeccl/sacerdote/home" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">DIACONI CON ALMENO DUE FUNZIONI CELEBRATE ASSIEME</span></p>
<p style="margin:0.36em 0em 0.71em 0em;line-height:2.11267605633803;">
  <span style="font-family:'Abel','Arial';font-size:1.143em;">
    <ul>
    <?php
    foreach ($diaconi as $diacono) {
      ?>
      <li><?=$diacono['Cognome'];?> <?=$diacono['Nome'];?></li>
    <?php
    }
    ?>
    </ul>
  </span>
</p>