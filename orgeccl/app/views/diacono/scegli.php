<?php
  global $data;
  $vescovi = $data['rows'];
?>
<h3>Selezionare un vescovo per visualizzare il numero delle funzioni celebrate da lui nelle diverse parrocchie</h3><br/><br/>
<form action="<?=$data['base_path'];?>/diacono/funzvesc" method="get">
<label for="IdVescovo">Seleziona un Vescovo</label><br/>
<select name="IdVescovo" required>
    <option value="0"> --selezionare vescovo </option>
    <?php
    foreach($vescovi as $row)
    { 
    ?>
        <option value="<?=$row['IdVescovo']?>"> <?=$row['Nome']?>  <?=$row['Cognome']?></option>
    <?php
    }
    ?>
</select><br/><br/><br/><br/>
<input type="submit" value="Visualizza">
</form>