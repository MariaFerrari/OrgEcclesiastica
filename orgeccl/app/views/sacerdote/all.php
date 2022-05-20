<?php
  global $data;
  $sacerdoti = $data['rows'];
?>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Tutti i sacerdoti</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Data di nascita</th>
  </tr>
  <?php
  foreach ($sacerdoti as $sacerdote) {
    ?>
    <tr>
    <td><a href="/orgeccl/sacerdote/detail/<?=$sacerdote['IdSacerdote'];?>"><?=$sacerdote['Nome'];?></a></td>
    <td><?=$sacerdote['Cognome'];?></td>
    <td><?=$sacerdote['DataN'];?></td>
    </tr>
  <?php
  }
  ?>
</table>