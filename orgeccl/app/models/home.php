<?php
require_once('../app/config.php');
function db_connect()
{
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if ($mysqli->connect_error)
    die("Errore di connessione");
  return $mysqli;
}
function model_home_check($info){
  $mysqli=db_connect();
  $login=array("logged"=>true, "ruolo"=>null, "user"=>0);
  $username=$info['user'];
  $pw=$info['pw'];
  $sql = "SELECT * FROM utente WHERE Username LIKE '$username'";
  $result = $mysqli->query($sql);
  $data = $result->fetch_all(MYSQLI_ASSOC);
  if(count($data)==0) $login['logged']="Errore: username non valido";
  else {
    $data=$data[0];
    if ($data['Password']!=$pw) $login['logged']="Errore: password errata";
    else {
      $login['ruolo']=$data['Ruolo'];
      if($data['IdVescovo']!=null) $login['user'] = $data['IdVescovo'];
      elseif($data['IdSacerdote']!=null) $login['user'] = $data['IdSacerdote'];
      elseif($data['IdDiacono']!=null) $login['user'] = $data['IdDiacono'];
    }
  }
  $result->free();
  $mysqli->close();
  return $login;
}