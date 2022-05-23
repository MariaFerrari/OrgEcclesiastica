<?php
require '../app/models/sacerdote.php';

function controller_sacerdote_index()
{
    view_render_html();
}
function controller_sacerdote_all($pagina)
{
    global $data;
    $data['rows'] = model_sacerdote_all($pagina);
    $data['pagina'] = $pagina;
    view_render_html();
}
function controller_sacerdote_ricerca()
{
    global $data;
    $data['rows'] = model_sacerdote_all();
    view_render_html();
}
function controller_sacerdote_diaconi()
{
    $IdSacerdote = isset($_GET['IdSacerdote'])?$_GET['IdSacerdote']:NULL;

    global $data;
    $data['rows'] = model_sacerdote_diaconi($IdSacerdote);
    view_render_html();
}
