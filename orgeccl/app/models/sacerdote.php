<?php
include_once("../app/config.php");

function db_connect(){
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if($mysqli->connect_error){
    die('Connection failed. Error: '. $mysqli->connect_error);
  }
  return $mysqli;
}

function model_sacerdote_all(){
    $conn=db_connect();
  
    $sql="SELECT * FROM sacerdote";
  
    $result=$conn->query($sql);
    $data=$result->fetch_all(MYSQLI_ASSOC);
  
    $result->free();
    $conn->close();
  
    return $data;
  }

function model_sacerdote_diaconi($nome, $cognome){
  $conn=db_connect();

  $nome =  $conn->real_escape_string($nome);
  $cognome =  $conn->real_escape_string($cognome);

  $sql="SELECT Nome, Cognome FROM diacono WHERE IdDiacono IN (SELECT a.IdDiacono FROM assistenza a INNER JOIN celebrazione c ON a.IdFunzione=c.IdFunzione WHERE c.IdSacerdote = (SELECT IdSacerdote FROM sacerdote WHERE nome LIKE '$nome' AND cognome LIKE '$cognome') GROUP BY a.IdDiacono HAVING COUNT(a.IdDiacono) > 1) ORDER BY Cognome, Nome";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}