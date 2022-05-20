<?php
include_once("../app/config.php");

function db_connect(){
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if($mysqli->connect_error){
    die('Connection failed. Error: '. $mysqli->connect_error);
  }
  return $mysqli;
}