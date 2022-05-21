<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Scegli una parrocchia per visualizzare le persone che afferiscono ad essa ma almeno un loro genitore no</span></p>
<table border="solid #black">
  <tr>
    <th>Id Parrocchia</th>
    <th>Nome Parrocchia</th>
    <th>Comune</th>
    <th>Provincia</th>
    <th>Nome Diocesi</th>
  </tr>

<?php
  foreach ($ris as $row) 
  {
?>
    <tr>
    <td><?=$row['IdParrocchia'];?></td>
    <td><?=$row['Nome'];?></td>
    <td><?=$row['NomeComune'];?></td>
    <td><?=$row['Provincia'];?></td>
    <td><?=$row['NomeDiocesi'];?></td>
    <td><a href="<?=$data['base_path'];?>/diacono/personeGenNoParrocchia/<?=$row['IdParrocchia'];?>">Scegli Parrocchia</a></td>
    <td><a href="<?=$data['base_path'];?>/diacono/parrocchia/<?=$row['IdParrocchia'];?>">Dettagli Parrocchia</a></td>
    </tr>
<?php
  }?>
</table>