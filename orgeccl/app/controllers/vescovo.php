<?php
require '../app/models/vescovo.php';

function controller_vescovo_index()
{
    view_render_html();
}
function controller_vescovo_all()
{
    global $data;
    $data['rows'] = model_vescovo_all();
    view_render_html();
}
function controller_vescovo_ricerca()
{
    global $data;
    $data['rows'] = model_vescovo_all();
    view_render_html();
}
function controller_vescovo_funzioni()
{
    $dataOra = isset($_GET['dataOra'])?$_GET['dataOra']:NULL;
    $IdVescovo = isset($_GET['IdVescovo'])?$_GET['IdVescovo']:0;

    if($dataOra){
        global $data;
        $data['rows'] = model_vescovo_funzioni($dataOra, $IdVescovo);
        view_render_html();
    }
    else header("Location: /orgeccl/vescovo/ricerca");
}
