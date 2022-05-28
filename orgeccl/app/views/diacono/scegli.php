<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Selezionare un vescovo per visualizzare il numero delle funzioni celebrate da lui nelle diverse parrocchie</span></p>
<table border="solid #black">
  <tr>
    <th>Nome Vescovo</th>
    <th>Cognome Vescovo</th>
    <th colspan=2>Operazioni</th>
  </tr>

<?php
  foreach ($ris as $row) 
  {
?>
    <tr>
    <td><?=$row['Nome'];?></td>
    <td><?=$row['Cognome'];?></td>
    <td><a href="<?=$data['base_path'];?>/diacono/funzVescovo/<?=$row['IdVescovo'];?>">Scegli Vescovo</a></td>
    <td><a href="<?=$data['base_path'];?>/diacono/vescovo/<?=$row['IdVescovo'];?>">Dettagli Vescovo</a></td>
    </tr>
<?php
  }?>
</table>
<br/>
<br/>