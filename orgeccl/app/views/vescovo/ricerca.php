<?php
    global $data;
    $vescovi = $data['rows'];
?>

<span><a HREF="/orgeccl/vescovo/home" target="_self" class="btn btn-md btn-default">Torna alla home</a></span><br/>

<div id="ttr_content_and_sidebar_container">
    <div id="ttr_content">
        <div id="ttr_content_margin"class="container-fluid">
            <div class="ttr_Contact_html_row0 row">
                <div class="ttr_Contact_html_column00">
                    <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                    <div class="html_content">
                        <p style="margin:0.36em 0em 2.86em 0em;text-align:Center;">
                            <span style="font-family:'Abel','Arial';font-size:2.143em;">INSERISCI IL TUO NOMINATIVO E LA DATA</span>
                        </p>
                        <p style="text-align:Center;">
                            <form id="ContactForm0" class="form-horizontal" role="form" method="get" action="<?=$data['base_path'] . '/vescovo/'?>" style="padding:0px 0px 0px 0px;margin: 0 auto;">
                                <div class="form-group">
                                    <select name="IdVescovo" required>
                                        <option value="0"> --selezionare il proprio profilo </option>
                                        <?php
                                        foreach($vescovi as $row)
                                        { 
                                        ?>
                                            <option value="<?=$row['IdVescovo']?>"> <?=$row['Nome']?>  <?=$row['Cognome']?></option>
                                        <?php
                                        }
                                        ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label required">Data</label>
                                    <div class="col-sm-8">
                                        <input type="date" class="form-control" data-vali="novalidation" name="dataOra" id="dataOra">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-8">
                                        <span><a HREF="/orgeccl/vescovo/funzioni" class="btn btn-md btn-default">Invia</a></span>
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
    <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
    <div style="clear:both;"></div>
</div>