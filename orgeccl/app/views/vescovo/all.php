<?php
  global $data;
  $diaconi = $data['rows'];
?>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Tutti i vescovi</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Data di nascita</th>
  </tr>
  <?php
  foreach ($diaconi as $diacono) {
    ?>
    <tr>
    <td><a href="/orgeccl/vescovo/detail/<?=$diacono['IdVescovo'];?>"><?=$diacono['Nome'];?></a></td>
    <td><?=$diacono['Cognome'];?></td>
    <td><?=$diacono['DataN'];?></td>
    </tr>
  <?php
  }
  ?>
</table>