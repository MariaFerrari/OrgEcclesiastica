<?php
require_once('../app/config.php');
function db_connect()
{
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if ($mysqli->connect_error)
    die("Errore di connessione");
  return $mysqli;
}
function model_parrocchia_details($id){
  $mysqli = db_connect();
  $id = intval($id);
  $sql = "SELECT p.*, c.Nome as NomeC FROM Parrocchia p INNER JOIN Comune c on p.IdComune=c.IdComune WHERE IdParrocchia=$id";
  $result = $mysqli->query($sql);
  $data = $result->fetch_all(MYSQLI_ASSOC)[0];
  $result->free();
  $mysqli->close();
  return $data;
}