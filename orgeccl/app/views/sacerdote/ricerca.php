<?php
    global $data;
    $sacerdoti = $data['rows'];
?>

<span><a HREF="/orgeccl/sacerdote/index" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<div id="ttr_content_and_sidebar_container">
    <div id="ttr_content">
        <div id="ttr_content_margin"class="container-fluid">
            <div class="ttr_Contact_html_row0 row">
                <div class="ttr_Contact_html_column00">
                    <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                    <div class="html_content">
                        <p style="margin:0.36em 0em 2.86em 0em;text-align:Center;">
                                <span style="font-family:'Abel','Arial';font-size:2.143em;">INSERISCI IL NOMINATIVO</span>
                            </p>
                            <p style="text-align:Center;">
                                <form id="ContactForm0" class="form-horizontal" role="form" method="get" action="/orgeccl/sacerdote/diaconi" style="padding:0px 0px 0px 0px;margin: 0 auto;">
                                    <div class="form-group">
                                        <select name="IdSacerdote" required>
                                            <option value="0"> --selezionare il proprio profilo </option>
                                            <?php
                                            foreach($sacerdoti as $row)
                                            { 
                                            ?>
                                                <option value="<?=$row['IdSacerdote']?>"> <?=$row['Nome']?>  <?=$row['Cognome']?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-8">
                                            <input type="submit" value="Inserisci" class="btn btn-md btn-default" onclick="submit()" />
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="success"></div>
                                    <div class="req_field"></div>
                                    <div class="clearfix"></div>
                                </form>
                            </p>
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
    <div style="clear:both;"></div>
</div>