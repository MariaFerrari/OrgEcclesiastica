<?php
require '../app/models/sacerdote.php';
$data['page_title']=$data['page_name']="Sacerdote";

function login(){
    session_start();
    if(key_exists('ruolo', $_SESSION)){
        if($_SESSION['ruolo']=='diacono') header('Location: /orgeccl/error/401');
    }
    else header('Location: /orgeccl/error/401');
}
function controller_sacerdote_index()
{
    login();
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
    );
    view_render_html();
}
function controller_sacerdote_all($pagina)
{
    login();
    global $data;
    $data['rows'] = model_sacerdote_all($pagina);
    $data['pagina'] = $pagina;
    view_render_html();
}
function controller_sacerdote_ricerca()
{
    login();
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
    );
    $data['rows'] = model_sacerdote_all();
    view_render_html();
}
function controller_sacerdote_diaconi()
{
    login();
    $IdSacerdote = isset($_GET['IdSacerdote'])?$_GET['IdSacerdote']:0;
    global $data;
    $data['rows'] = model_sacerdote_diaconi($IdSacerdote);
    view_render_html();
}
