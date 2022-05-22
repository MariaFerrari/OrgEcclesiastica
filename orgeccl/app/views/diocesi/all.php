<?php
global $data;
$values=$data['rows'];
$c=1;
foreach ($values as $diocesi) {
  $src = "../assets/images/6.jpg";
  if($c%3==1){
?>  
  <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;">
  </div>
    <div class="ttr_Gallery_html_row0 row">
      <div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
        <div class="ttr_Gallery_html_column00">
          <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
            <div class="html_content">
              <p>
          <span class="ttr_image" style="float:none;display:block;text-align:center;font-family:'Roboto','Arial';overflow:hidden;margin:0px 5px 0px 5px;">
            <span>
              <a href="<?= $data['base_path'] . '/diocesi/info/' . ($diocesi['IdDiocesi']) ?>">
                <img class="ttr_uniform" src="<?= $src ?>" style="max-width:640px;max-height:384px;" />
              </a>
            </span>
            <br />
            <?= $diocesi['Nome'] ?>
            <br />
          </span>
        </p>
                </div>
              <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
              <div style="clear:both;"></div>
            </div>
          </div>
        <div class="clearfix visible-xs-block">
  </div>
<?php
$c++;
  }
  elseif($c%3==2){
    ?>
    <div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                     <div class="ttr_Gallery_html_column01">
                        <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        <div class="html_content">
                           <p>
          <span class="ttr_image" style="float:none;display:block;text-align:center;font-family:'Roboto','Arial';overflow:hidden;margin:0px 5px 0px 5px;">
            <span>
              <a href="<?= $data['base_path'] . '/diocesi/info/' . ($diocesi['IdDiocesi']) ?>">
                <img class="ttr_uniform" src="<?= $src ?>" style="max-width:640px;max-height:384px;" />
              </a>
            </span>
            <br />
            <?= $diocesi['Nome'] ?>
            <br />
          </span>
        </p>
                        </div>
                        <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        <div style="clear:both;"></div>
                     </div>
                  </div>
                  <div class="clearfix visible-sm-block visible-md-block visible-xs-block">
                  </div>
  <?php
    $c++;
  }
    else{
?>
<div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
                     <div class="ttr_Gallery_html_column02">
                        <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        <div class="html_content">
                           <p>
          <span class="ttr_image" style="float:none;display:block;text-align:center;font-family:'Roboto','Arial';overflow:hidden;margin:0px 5px 0px 5px;">
            <span>
              <a href="<?= $data['base_path'] . '/diocesi/info/' . ($diocesi['IdDiocesi']) ?>">
                <img class="ttr_uniform" src="<?= $src ?>" style="max-width:640px;max-height:384px;" />
              </a>
            </span>
            <br />
            <?= $diocesi['Nome'] ?>
            <br />
          </span>
        </p>
                        </div>
                        <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                        <div style="clear:both;"></div>
                     </div>
                  </div>
                  <div class="clearfix visible-lg-block visible-xs-block">
                  </div>
<?php
    $c++;
  }
  }