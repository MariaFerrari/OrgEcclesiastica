<?php
  global $data;
  $funzioni = $data['rows'];
?>

<span><a HREF="/orgeccl/vescovo/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<p style="margin:0.36em 0em 1.43em 0em;"><span style="font-family:'Abel','Arial';font-size:1.714em;">FUNZIONI</span></p>
<?php
if($funzioni){
?>
<table border="solid #black">
  <tr>
    <th>Giorno-Ora</th>
    <th>Nome della parrocchia</th>
    <th>Tipo di messa</th>
  </tr>
  <?php
  foreach ($funzioni as $funzione) {
    ?>
    <tr>
    <td><?=$funzione['GiornoOra'];?></td>
    <td><?=$funzione['Nome'];?></td>
    <td><?=$funzione['Tipo'];?></td>
    </tr>
  <?php
  }
  ?>
</table>
<?php
}
else{
  echo("Nessuna funzione trovata");
}
?>
<br/>
<br/>