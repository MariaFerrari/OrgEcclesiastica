<?php
global $data;
$parrocchia = $data['rows'];
$dimensioni = array("alt" => $parrocchia['Altezza'], "lun" => $parrocchia['Lunghezza'], "lar" => $parrocchia['Larghezza']);
?>
<p>
<h3><?= $parrocchia['Nome'] ?></h3>
<h4>Comune di <?= $parrocchia['NomeC'] ?></h4>
<?php
if ($parrocchia['DataCostruzione'] != 0){
?>
<h3>
  Edificata nel <?= $parrocchia['DataCostruzione'] ?>
</h3>
<?php
}
if ($dimensioni['alt'] != 0 && $dimensioni['lun'] != 0 && $dimensioni['lar'] != 0){
?>
<h3>
  Dimensioni: <?= $dimensioni['lun'] ?> m × <?= $dimensioni['lar'] ?> m × <?= $dimensioni['alt'] ?> m
</h3>
<?php }
?>
</p>
<hr />
