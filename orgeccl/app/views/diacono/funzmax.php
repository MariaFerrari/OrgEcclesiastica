<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Diocesi della Parrocchia della Funzione con maggior numero di partecipanti</span></p>
<table border="solid #black">
  <tr>
    <th>Nome Diocesi</th>
    <th>Tipo Diocesi</th>
    <th>Nome Parrocchia</th>
    <th>GiornoOra Funzione</th>
    <th>Tipo Funzione</th>
    <th>Persone Presenti</th>
    <th>Dettagli</th>
  </tr>
<tr>
    <td><?=$ris['Nome'];?></td>
    <td><?=$ris['Tipo'];?></td>
    <td><?=$ris['NomeParrocchia'];?></td>
    <td><?=$ris['GiornoOra'];?></td>
    <td><?=$ris['TipoFunzione'];?></td>
    <td><?=$ris['CountPersone'];?></td>
    <td><a href="<?=$data['base_path'];?>/diacono/funzione/<?=$ris['IdFunzione'];?>">Dettagli Funzione</a></td>
</tr>
</table>