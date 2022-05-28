<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Funzione con maggior numero di partecipanti</span></p>
<table border="solid #black">
  <tr>
    <th>Id Funzione</th>
    <th>GiornoOra Funzione</th>
    <th>Tipo Funzione</th>
    <th>Id Parrocchia</th>
    <th>Id Vescovo</th>
    <th>Nome Rito</th>
  </tr>
<tr>
    <td><?=$ris['IdFunzione'];?></td>
    <td><?=$ris['GiornoOra'];?></td>
    <td><?=$ris['Tipo'];?></td>
    <td><?=$ris['IdParrocchia'];?></td>
    <td><?=$ris['IdVescovo'];?></td>
    <td><?=$ris['NomeRito'];?></td>
</tr>
</table>
<br/>
<br/>