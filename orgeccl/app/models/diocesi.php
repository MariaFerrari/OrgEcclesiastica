<?php
require_once('../app/config.php');
function db_connect()
{
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if ($mysqli->connect_error)
    die("Errore di connessione");
  return $mysqli;
}
function model_diocesi_all()
{
  $mysqli = db_connect();
  $sql = "SELECT IdDiocesi, Nome FROM Diocesi ORDER BY Nome";
  $result = $mysqli->query($sql);
  $data = $result->fetch_all(MYSQLI_ASSOC);
  $result->free();
  $mysqli->close();
  return $data;
}
function model_diocesi_details($id){
  $mysqli = db_connect();
  $id=intval($id);
  $sql = "SELECT * FROM Diocesi WHERE IdDiocesi=$id";
  $result = $mysqli->query($sql);
  $data = $result->fetch_all(MYSQLI_ASSOC)[0];
  $result->free();
  $mysqli->close();
  return $data;
}
function model_diocesi_parrocchie($id){
  $mysqli = db_connect();
  $id=intval($id);
  $sql = "SELECT IdParrocchia, Nome FROM Parrocchia WHERE IdDiocesi=$id ORDER BY Nome";
  $result = $mysqli->query($sql);
  $data = $result->fetch_all(MYSQLI_ASSOC);
  $result->free();
  $mysqli->close();
  return $data;
}
?>