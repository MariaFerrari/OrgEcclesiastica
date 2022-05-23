<?php
  global $data;
  $sacerdoti = $data['rows'];
  $pagina = $data['pagina'];
?>

<span><a HREF="/orgeccl/sacerdote/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">Tutti i sacerdoti</span></p>
<table border="solid #black">
  <tr>
    <th>Nome</th>
    <th>Cognome</th>
    <th>Data di nascita</th>
  </tr>
  <?php
  foreach ($sacerdoti as $sacerdote) {
    ?>
    <tr>
    <td><?=$sacerdote['Nome'];?></td>
    <td><?=$sacerdote['Cognome'];?></td>
    <td><?=$sacerdote['DataN'];?></td>
    </tr>
  <?php
  }
  ?>
</table>
<?php
if($pagina < 2){ //se sono nella prima pagina disattivo il bottone "indietro"
  ?>
  <a href="/orgeccl/sacerdote/all/1" class="btn btn-md btn-default" style="pointer-events: none">&#8678;</a>
  <?php
}
else{
  ?>
  <a href="/orgeccl/sacerdote/all/<?=$pagina - 1?>" class="btn btn-md btn-default">&#8678;</a>
  <?php
}
if(count($sacerdoti) < 25){ //se ho meno di 25 sono nella ultima pagina, disattivo il bottone "avanti"
  ?>
  <a href="/orgeccl/sacerdote/all/<?=$pagina + 1?>" class="btn btn-md btn-default" style="pointer-events: none">&#8680;</a>
  <?php
}
else{
  ?>
  <a href="/orgeccl/sacerdote/all/<?=$pagina + 1?>" class="btn btn-md btn-default">&#8680;</a>
  <?php
}
?>