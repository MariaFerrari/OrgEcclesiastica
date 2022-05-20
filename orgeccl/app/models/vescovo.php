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

function model_vescovo_funzioni($dataOra, $nome, $cognome){
  $conn=db_connect();

  $nome =  $conn->real_escape_string($nome);
  $cognome =  $conn->real_escape_string($cognome);

  $sql="SELECT f.GiornoOra, p.Nome, f.Tipo FROM funzione f INNER JOIN parrocchia p ON f.IdParrocchia=p.IdParrocchia WHERE CAST(f.GiornoOra AS DATE) = '$dataOra' AND f.IdVescovo = (SELECT IdVescovo FROM vescovo WHERE Nome LIKE '$nome' AND Cognome LIKE '$cognome') GROUP BY f.GiornoOra, p.Nome, f.Tipo";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}