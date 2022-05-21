<?php
include_once("../app/config.php");

function db_connect(){
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if($mysqli->connect_error){
    die('Connection failed. Error: '. $mysqli->connect_error);
  }
  return $mysqli;
}

function model_vescovo_all(){
    $conn=db_connect();
  
    $sql="SELECT * FROM vescovo";
  
    $result=$conn->query($sql);
    $data=$result->fetch_all(MYSQLI_ASSOC);
  
    $result->free();
    $conn->close();
  
    return $data;
  }

function model_vescovo_funzioni($dataOra, $IdVescovo){
  $conn=db_connect();

  $sql="SELECT f.GiornoOra, p.Nome, f.Tipo FROM funzione f INNER JOIN parrocchia p ON f.IdParrocchia=p.IdParrocchia WHERE CAST(f.GiornoOra AS DATE) = '$dataOra' AND f.IdVescovo = $IdVescovo GROUP BY f.GiornoOra, p.Nome, f.Tipo";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}