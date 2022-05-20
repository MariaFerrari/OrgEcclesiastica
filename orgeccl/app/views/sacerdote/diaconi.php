<?php
  global $data;
  $diaconi = $data['rows'];
?>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">DIACONI CON ALMENO DUE FUNZIONI CELEBRATE ASSIEME</span></p>
<table border="solid #black">
  <tr>
    <th>Nominativo</th>
  </tr>
  <?php
  foreach ($diaconi as $diacono) {
    ?>
    <tr>
    <td><?=$diacono['Cognome'];?> <?=$diacono['Nome'];?></td>
    </tr>
  <?php
  }
  ?>
</table>