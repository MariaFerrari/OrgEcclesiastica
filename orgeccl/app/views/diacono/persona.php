<?php
  global $data;
  $ris = $data['rows'];
?>

<span><a HREF="<?=$data['base_path'];?>/diacono/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Dettagli Persona</span></p>
<table border="solid #black">
  <tr>
    <th>Id Persona</th>
    <th>Codice Fiscale</th>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Sesso</th>
    <th>Data di Nascita</th>
    <th>Luogo di Nascita</th>
    <th>Id Parrocchia</th>
    <th>Parrocchia</th>
  </tr>
  
  <tr>
    <td><?=$ris['IdPersona'];?></td>
    <td><?=$ris['CodF'];?></td>
    <td><?=$ris['Nome'];?></td>
    <td><?=$ris['Cognome'];?></td>
    <td><?=$ris['Sesso'];?></td>
    <td><?=$ris['DataN'];?></td>
    <td><?=$ris['CittaN'];?></td>
    <td><?=$ris['IdParrocchia'];?></td> 
    <td><?=$ris['ParrocchiaPersona'];?></td>
    </tr>
</table>
<br/><br/>
<table border="solid #black">
  <tr>
    <th>Id Padre</th>
    <th>Nome Padre</th>
    <th>Cognome Padre</th>
    <th>Id Parrocchia Padre</th>
    <th>Parrocchia Padre</th>
    <th>Id Madre</th>
    <th>Nome Madre</th>
    <th>Cognome Madre</th>
    <th>Id Parrocchia Madre</th>
    <th>Parrocchia Madre</th>
  </tr>
  
  <tr>
    <td><?=$ris['Padre'];?></td>
    <td><?=$ris['NomePadre'];?></td>
    <td><?=$ris['CognomePadre'];?></td>
    <td><?=$ris['IdParrocchiaPadre'];?></td>
    <td><?=$ris['ParrocchiaPadre'];?></td>
    <td><?=$ris['Madre'];?></td>
    <td><?=$ris['NomeMadre'];?></td>
    <td><?=$ris['CognomeMadre'];?></td>
    <td><?=$ris['IdParrocchiaMadre'];?></td>
    <td><?=$ris['ParrocchiaMadre'];?></td>
    </tr>
</table>
<span><a HREF="<?=$data['base_path'];?>/diacono/personeGenNoParrocchia/<?=$ris['IdParrocchia'];?>" target="_self" class="btn btn-md btn-default">Torna alle persone</a></span><br/>