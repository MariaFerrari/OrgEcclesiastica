<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a> <a HREF="<?=$data['base_path'];?>/diacono/scegliParrocchia" target="_self" class="btn btn-md btn-default">Torna alle Parrocchie</a></span><br/><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Persone con almeno un genitore che non afferisce alla sua stessa parrocchia</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Dettagli</th>
  </tr>

<?php
  foreach ($ris as $row) 
  {
?>
    <tr>
    <td><?=$row['Nome'];?></td>
    <td><?=$row['Cognome'];?></td>
    <td><a href="<?=$data['base_path'];?>/diacono/persona/<?=$row['IdPersona'];?>">Dettagli Persona</a></td>
    </tr>
<?php
  }?>
</table>
<br/>
<br/>