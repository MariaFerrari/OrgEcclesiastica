<?php
require '../app/models/sacerdote.php';

function controller_sacerdote_all()
{
    global $data;
    $data['rows'] = model_sacerdote_all();
    view_render_html();
}
function controller_sacerdote_ricerca()
{
    global $data;
    view_render_html();
}
function controller_sacerdote_diaconi()
{
    $nome = isset($_POST['nome'])?$_POST['nome']:'Angelo Fiorenzo';
    $cognome = isset($_POST['cognome'])?$_POST['cognome']:'Bertolotti';

    global $data;
    $data['rows'] = model_sacerdote_diaconi($nome, $cognome);
    view_render_html();
}
