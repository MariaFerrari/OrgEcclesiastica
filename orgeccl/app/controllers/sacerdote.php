<?php
require '../app/models/sacerdote.php';

function controller_sacerdote_home()
{
    view_render_html();
}
function controller_sacerdote_all()
{
    global $data;
    $data['rows'] = model_sacerdote_all();
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
    $IdSacerdote = isset($_GET['IdSacerdote'])?$_GET['IdSacerdote']:'21';

    global $data;
    $data['rows'] = model_sacerdote_diaconi($IdSacerdote);
    view_render_html();
}
