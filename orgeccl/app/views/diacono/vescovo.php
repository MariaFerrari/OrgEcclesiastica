<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a><a HREF="<?=$data['base_path'];?>/diacono/scegli" target="_self" class="btn btn-md btn-default">Torna ai Vescovi</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Funzione con maggior numero di partecipanti</span></p>
<table border="solid #black">
  <tr>
    <th>Nome Vescovo</th>
    <th>Cognome Vescovo</th>
    <th>Data di Nascita</th>
    <th>Luogo di Nascita</th>
    <th>Data di Morte</th>
    <th>Is Emerito</th>
  </tr>
<tr>
    <td><?=$ris['Nome'];?></td>
    <td><?=$ris['Cognome'];?></td>
    <td><?=$ris['DataN'];?></td>
    <td><?=$ris['LuogoN'];?></td>
    <td><?=$ris['DataM'];?></td>
    <td><?=($ris['IsEmerito'] == 0)?'NO':'SI';?></td>
</tr>
</table>
<br/>
<br/>