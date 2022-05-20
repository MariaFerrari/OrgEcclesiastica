<?php
require '../app/models/vescovo.php';

function controller_vescovo_all()
{
    global $data;
    $data['rows'] = model_vescovo_all();
    view_render_html();
}
function controller_vescovo_ricerca()
{
    global $data;
    view_render_html();
}
function controller_vescovo_funzioni()
{
    $dataOra = isset($_POST['dataOra'])?$_POST['dataOra']:'2022-06-04';
    $nome = isset($_POST['nome'])?$_POST['nome']:'Adriano';
    $cognome = isset($_POST['cognome'])?$_POST['cognome']:'Cevolotto';

    global $data;
    $data['rows'] = model_vescovo_funzioni($dataOra, $nome, $cognome);
    view_render_html();
}
