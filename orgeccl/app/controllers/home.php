<?php
require_once '../app/models/home.php';

function controller_home_index()
{
    global $data;
    $data['page_name'] = $data['page_title'];
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diocesi/all", 'text' => "TUTTE LE DIOCESI"),
    );
    session_start();
    view_render_html();
}

function controller_home_about()
{
    global $data;
    $data['page_name'] = $data['page_title'];
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diocesi/all", 'text' => "TUTTE LE DIOCESI"),
    );
    session_start();
    view_render_html();
}

function controller_home_login($params=null)
{
    global $data;
    $data['page_name'] = $data['page_title'];
    $data['href'] = array(
        array('link' => $data['base_path'] . "/diocesi/all", 'text' => "TUTTE LE DIOCESI"),
    );
    if ($params!=null) {
        echo '<script> alert("Errore nel login. Controllare che username e password siano ok"); </script>';
    }
    view_render_html();
}
function controller_home_check()
{
    $login = model_home_check($_POST); //login=>{["logged"]=>true/messaggio, ["ruolo"]=>ruolo, [idUser]=>idDiacono/Sac/Vesc}
    if ($login['logged'] === true) {
        session_start();
        $_SESSION['ruolo'] = $login['ruolo'];
        $_SESSION['user'] = $login['user'];
        header("Location: /orgeccl/".$login['ruolo']."/index");
    } 
    else {
        header('Location: /orgeccl/home/login/err');
    }
}
function controller_home_logout(){
    session_abort();
    header('Location: /orgeccl/home/login');
}