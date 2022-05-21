<?php
include_once("../app/config.php");

function db_connect(){
  $mysqli = new mysqli(SERVER, USER, PASS, DB);
  if($mysqli->connect_error){
    die('Connection failed. Error: '. $mysqli->connect_error);
  }
  return $mysqli;
}

function model_diacono_scegli(){
  $conn=db_connect();

  $sql="SELECT * FROM vescovo ORDER BY Cognome, Nome";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_funzmax(){
  $conn=db_connect();

  $sql="SELECT d.*,pa.IdParrocchia, pa.Nome as NomeParrocchia,f.IdFunzione, f.GiornoOra, f.Tipo as TipoFunzione, COUNT(p.IdPersona) as CountPersone from funzione f INNER JOIN presenza p ON f.IdFunzione=p.IdFunzione INNER JOIN parrocchia pa ON f.IdParrocchia=pa.IdParrocchia INNER JOIN diocesi d ON pa.IdDiocesi=d.IdDiocesi GROUP BY p.IdFunzione HAVING COUNT(p.IdPersona)=(SELECT COUNT(IdPersona) FROM presenza GROUP BY IdFunzione ORDER BY COUNT(IdPersona) DESC LIMIT 1)";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC)[0];

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_funzione($idFunzione){
  $conn=db_connect();

  $sql="SELECT f.*, r.Tipo as NomeRito FROM funzione f INNER JOIN rito r ON f.IdRito=r.IdRito WHERE f.IdFunzione=$idFunzione ";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC)[0];

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_scegliParrocchia(){
  $conn=db_connect();

  $sql="SELECT p.*, c.Nome as NomeComune, c.Provincia, d.Nome as NomeDiocesi FROM parrocchia p INNER JOIN comune c ON p.IdComune=c.IdComune INNER JOIN Diocesi d ON p.IdDiocesi=d.IdDiocesi ORDER BY p.Nome";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_parrocchia($idParrocchia){
  $conn=db_connect();

  $sql="SELECT p.*, c.Nome as NomeComune, c.Provincia, d.Nome as NomeDiocesi FROM parrocchia p INNER JOIN comune c ON p.IdComune=c.IdComune INNER JOIN Diocesi d ON p.IdDiocesi=d.IdDiocesi WHERE p.idParrocchia=$idParrocchia";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC)[0];

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_personeGenNoParrocchia($idParrocchia){
  $conn=db_connect();

  $sql="SELECT * FROM persona WHERE IdParrocchia=$idParrocchia AND (Padre NOT IN (SELECT IdPersona FROM persona WHERE IdParrocchia=$idParrocchia) OR Madre NOT IN (SELECT IdPersona FROM persona WHERE IdParrocchia=$idParrocchia)) ORDER BY Cognome, Nome";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC);

  $result->free();
  $conn->close();

  return $data;
}

function model_diacono_persona($idPersona){
  $conn=db_connect();

  $sql="SELECT p.*,pa.Nome as ParrocchiaPersona,paMad.Nome AS ParrocchiaMadre, paPad.Nome as ParrocchiaPadre, mad.Nome as NomeMadre, mad.Cognome as CognomeMadre, mad.IdParrocchia as IdParrocchiaMadre, pad.Nome as NomePadre, pad.Cognome as CognomePadre, pad.IdParrocchia as IdParrocchiaPadre FROM persona p INNER JOIN persona mad ON p.Madre=mad.IdPersona INNER JOIN persona pad ON p.Padre=pad.IdPersona INNER JOIN parrocchia pa ON p.IdParrocchia=pa.IdParrocchia  INNER JOIN parrocchia paMad ON mad.IdParrocchia=paMad.IdParrocchia  INNER JOIN parrocchia paPad ON pad.IdParrocchia=paPad.IdParrocchia WHERE p.IdPersona=$idPersona";

  $result=$conn->query($sql);
  $data=$result->fetch_all(MYSQLI_ASSOC)[0];

  $result->free();
  $conn->close();

  return $data;
}