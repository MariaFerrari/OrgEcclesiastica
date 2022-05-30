<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Parrocchie con funzioni celebrate solo da sacerdoti afferenti a quella parrocchia</span></p>
<table border="solid #black">
  <tr>
    <th>Nome Parrocchia</th>
    <th>Nome Diocesi</th>
    <th>Comune e Provincia</th>
    <th>Dettagli</th>
  </tr>

<?php
  foreach ($ris as $row) 
  {
?>
    <tr>
    <td><?=$row['Nome'];?></td>
    <td><?=$row['NomeDiocesi'];?></td>
    <td><?=$row['Comune'];?> - <?=$row['Provincia'];?></td>
    <td><a href="<?=$data['base_path'];?>/diacono/parrocchia/<?=$row['IdParrocchia'];?>">Dettagli Parrocchia</a></td>
    </tr>
<?php
  }?>
</table>
<br/>
<br/>