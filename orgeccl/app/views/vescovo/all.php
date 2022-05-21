<?php
  global $data;
  $vescovi = $data['rows'];
?>

<span><a HREF="/orgeccl/vescovo/home" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Tutti i vescovi</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Data di nascita</th>
    <th>Link</th>
  </tr>
  <?php
  foreach ($vescovi as $vescovo) {
    ?>
    <tr>
    <td><?=$vescovo['Nome'];?></td>
    <td><?=$vescovo['Cognome'];?></td>
    <td><?=$vescovo['DataN'];?></td>
    <td><a href="/orgeccl/vescovo/dettaglio/<?=$vescovo['IdVescovo'];?>">Dettagli</a></td>
    </tr>
  <?php
  }
  ?>
</table>