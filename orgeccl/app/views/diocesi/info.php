<?php
global $data;
$diocesi=$data['rows'];
?>
<p>
  <h3>Diocesi <?= $diocesi['details']['Tipo']?></h3>
  <h5>Superficie: <?=$diocesi['details']['KmQ']?> Kmq</h5>
</p>
<h2>Parrocchie</h2>
<?php
foreach ($diocesi['parrocchie'] as $parr) {
  $src = "../assets/images/" . ($parr['IdParrocchia']+2) . ".jpg";
?>
  <div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
    <div class="ttr_Gallery_html_column00">
      <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
      <div class="html_content">
        <p>
          <span class="ttr_image" style="float:none;display:block;text-align:center;font-family:'Roboto','Arial';overflow:hidden;margin:0px 5px 0px 5px;">
            <span>
              <a href="<?= $data['base_path'] . '/parrocchia/info/' . ($parr['IdParrocchia']) ?>">
                <img class="ttr_uniform" src="<?= $src ?>" style="max-width:640px;max-height:384px;" />
              </a>
            </span>
            <br />
            <?= $parr['Nome'] ?>
            <br />
          </span>
        </p>
      </div>
      <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
      <div style="clear:both;"></div>
    </div>
  </div>
  <div class="learfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
  </div>
<?php
}

