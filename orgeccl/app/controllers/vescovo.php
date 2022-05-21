<?php
require '../app/models/vescovo.php';

function controller_vescovo_home()
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
    $dataOra = isset($_GET['dataOra'])?$_GET['dataOra']:'2022-06-04';
    $IdVescovo = isset($_GET['IdVescovo'])?$_GET['IdVescovo']:'2';

    global $data;
    $data['rows'] = model_vescovo_funzioni($dataOra, $IdVescovo);
    view_render_html();
}
