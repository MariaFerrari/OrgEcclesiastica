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

function model_sacerdote_diaconi($IdSacerdote){
  $conn=db_connect();

  $sql="SELECT Nome, Cognome FROM diacono WHERE IdDiacono IN (SELECT a.IdDiacono FROM assistenza a INNER JOIN celebrazione c ON a.IdFunzione=c.IdFunzione WHERE c.IdSacerdote = $IdSacerdote GROUP BY a.IdDiacono HAVING COUNT(a.IdDiacono) > 1) ORDER BY Cognome, Nome";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}