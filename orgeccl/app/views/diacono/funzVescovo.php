<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Numero di funzioni celebrate da un vescovo nelle diverse parrocchie</span></p>
<table border="solid #black">
  <tr>
    <th>Id Parrocchia</th>
    <th>Nome Parrocchia</th>
    <th>Funzioni svolte dal Vescovo</th>
  </tr>

<?php
  foreach ($ris as $row) 
  {
?>
    <tr>
    <td><?=$row['IdParrocchia'];?></td>
    <td><?=$row['Nome'];?></td>
    <td><?=$row['NumeroFunzioni'];?></td>
    </tr>
<?php
  }?>
</table>
<span><a HREF="<?=$data['base_path'];?>/diacono/scegli" target="_self" class="btn btn-md btn-default">Torna ai Vescovi</a></span><br/>