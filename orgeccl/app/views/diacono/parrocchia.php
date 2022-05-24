<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a><a HREF="javascript:history.go(-1)" target="_self" class="btn btn-md btn-default">Torna alle Parrocchie</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Dettagli Parrocchia <?=$ris['Nome'];?></span></p>
<table border="solid #black">
  <tr>
    <th>Id Parrocchia</th>
    <th>Nome Parrocchia</th>
    <th>Lunghezza</th>
    <th>Larghezza</th>
    <th>Altezza</th>
    <th>Data Costruzione</th>
    <th>Comune</th>
    <th>Provincia</th>
    <th>Nome Diocesi</th>
  </tr>
<tr>
    <td><?=$ris['IdParrocchia'];?></td>
    <td><?=$ris['Nome'];?></td>
    <td><?=$ris['Lunghezza'];?></td>
    <td><?=$ris['Larghezza'];?></td>
    <td><?=$ris['Altezza'];?></td>
    <td><?=$ris['DataCostruzione'];?></td>
    <td><?=$ris['NomeComune'];?></td>
    <td><?=$ris['Provincia'];?></td>
    <td><?=$ris['NomeDiocesi'];?></td>
</tr>
</table>