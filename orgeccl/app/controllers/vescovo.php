<?php
require '../app/models/vescovo.php';
$data['page_title']=$data['page_name']="Vescovo";

function login()
{
    session_start();
    if (key_exists('ruolo', $_SESSION)) {
        if ($_SESSION['ruolo'] == 'diacono' || $_SESSION['ruolo'] == 'sacerdoto') header('Location: /orgeccl/error/401');
    } else header('Location: /orgeccl/error/401');
}
function controller_vescovo_index()
{
    login();
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
        array('link' => $data['base_path'] . "/sacerdote/index", 'text' => "Altre funzioni - sacerdote")
    );
    view_render_html();
}
function controller_vescovo_all()
{
    login();
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
        array('link' => $data['base_path'] . "/sacerdote/index", 'text' => "Altre funzioni - sacerdote")
    );
    $data['rows'] = model_vescovo_all();
    view_render_html();
}
function controller_vescovo_ricerca()
{
    login();
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
        array('link' => $data['base_path'] . "/sacerdote/index", 'text' => "Altre funzioni - sacerdote")
    );
    $data['rows'] = model_vescovo_all();
    view_render_html();
}
function controller_vescovo_funzioni()
{
    login();
    
    global $data;
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diacono/index", 'text' => "Altre funzioni - diacono"),
        array('link' => $data['base_path'] . "/sacerdote/index", 'text' => "Altre funzioni - sacerdote")
    );
    $dataOra = isset($_POST['dataOra'])?$_POST['dataOra']:NULL;

    if($dataOra){
        $data['rows'] = model_vescovo_funzioni($dataOra, $_SESSION['user']);
        view_render_html();
    }
    else header("Location: /orgeccl/vescovo/ricerca");
}
