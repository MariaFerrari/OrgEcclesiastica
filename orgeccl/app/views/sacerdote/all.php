<?php
  global $data;
  $sacerdoti = $data['rows'];
?>

<span><a HREF="/orgeccl/sacerdote/home" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Tutti i sacerdoti</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Data di nascita</th>
    <th>Link</th>
  </tr>
  <?php
  foreach ($sacerdoti as $sacerdote) {
    ?>
    <tr>
    <td><?=$sacerdote['Nome'];?></td>
    <td><?=$sacerdote['Cognome'];?></td>
    <td><?=$sacerdote['DataN'];?></td>
    <td><a href="/orgeccl/sacerdote/dettaglio/<?=$sacerdote['IdSacerdote'];?>">Dettagli</a></td>
    </tr>
  <?php
  }
  ?>
</table>