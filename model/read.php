<?php

function empExist($nom, $prenom){
	include('connection.php');
	$query = "SELECT EmpNom, EmpPrenom FROM Employe WHERE EmpNom = :nom AND EmpPrenom = :prenom";
	$query_params = array(':nom'=>$nom,':prenom'=>$prenom);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function adminExist($login, $passw){
	include('connection.php');
	$query = "SELECT AdmLogin, AdmPassword FROM Admin WHERE AdmLogin = :login AND AdmPassword = :passw";
	var_dump($query);
	$query_params = array(':login'=>$login,':passw'=>$passw);
	//"";DROP TABLE Admin;--
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function villeExist($codepostal,$ville){
	include('connection.php');
	$query = "SELECT CpCode, CpVille FROM CodePostal WHERE CpCode = :codepostal AND CpVille = :ville";
	$query_params = array(':codepostal'=>$codepostal,':ville'=>$ville);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function loginExist($login){
	include('connection.php');
	$query = "SELECT AdmLogin FROM Admin WHERE AdmLogin = :login";
	$query_params = array(':login'=>$login);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function RecupAllAdmin($login){
	include('connection.php');// Include ma connection donc j'établie mon lien avec la DB
	$query = "
	SELECT * FROM Admin WHERE AdmLogin= :login";// J'écris ma requete SQL ATTENTION, avant c'était student
	$query_params = array(':login'=>$login);// Je remplis mes paramètres (rien pour le moment)
	try{
		$stmt = $db->prepare($query);// Il prépare ma query => Il ne faut rien faire !!!
		$result = $stmt->execute($query_params);// Il execute ma query => Il ne faut rien faire !!!
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);// Il place le résultat de la query dans une variable
	return $result[0];
}

function RecupAllEmp(){
	include('connection.php');// Include ma connection donc j'établie mon lien avec la DB
	$query = "
	SELECT EmpID, EmpNom AS Nom, EmpPrenom AS Prénom, EmpMail AS Mail, CpCode AS CodePostal, CpVille AS Ville, LocTitre AS Locomotion, DomTitre AS Domaine, EmpSouper As Souper
	FROM Employe 
	INNER JOIN CodePostal ON EmpCodID=CpCode
	INNER JOIN Locomotion ON EmpLocID=LocID 
	INNER JOIN Domaine ON EmpDomID=DomID";// J'écris ma requete SQL ATTENTION, avant c'était student
	$query_params = array();// Je remplis mes paramètres (rien pour le moment)
	try{
		$stmt = $db->prepare($query);// Il prépare ma query => Il ne faut rien faire !!!
		$result = $stmt->execute($query_params);// Il execute ma query => Il ne faut rien faire !!!
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);// Il place le résultat de la query dans une variable
	return $result;
}


function RecupInfosEmpPk($pk){
	include('connection.php');
	$query = "SELECT EmpNom AS Nom, EmpPrenom AS Prenom, EmpMail AS Email, CpVille AS Ville, CpCode AS CodePostal, LocTitre AS Locomotion, DomTitre AS Departement, ActTitre AS Activite, EmpSouper AS Participation FROM Employe 
	INNER JOIN CodePostal ON EmpCodID=CpCode 
	INNER JOIN Locomotion ON EmpLocID=LocID 
	INNER JOIN Participation ON ParEmpID=EmpID
	INNER JOIN Activite ON ActID=ParActID
	INNER JOIN Domaine ON EmpDomID=DomID WHERE EmpID = :pk";
	$query_params = array(':pk'=>$pk);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result[0];
}

function RecupLoco(){
	include('connection.php');
	$query = "SELECT * FROM Locomotion";
	$query_params = array();
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function RecupDepartement(){
	include('connection.php');
	$query = "SELECT * FROM Domaine";
	$query_params = array();
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function RecupActi(){
	include('connection.php');
	$query = "SELECT ActID, ActTitre, ActNombreMax AS Max, COUNT(ParActID) AS Inscrit, ActDescription FROM Activite INNER JOIN Participation ON ParActID=ActID GROUP BY ParActID";
	$query_params = array();
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function RecupVille(){
	include('connection.php');
	$query = "SELECT * FROM CodePostal";
	$query_params = array();
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}


function recupInscritActi($id){
	include('connection.php');
	$query = '
  SELECT EmpNom AS Nom, EmpPrenom AS Prenom
  FROM Employe
  INNER JOIN Participation ON ParEmpID=EmpID
  WHERE ParActID= :id';
	$query_params = array(':id'=>$id);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function recupCpID($codepostal){
	include('connection.php');
	$query = '
  SELECT CpCode
FROM CodePostal 
WHERE CpCode= :codepostal';
	$query_params = array(':codepostal'=>$codepostal);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function recupDomID($departement){
	include('connection.php');
	$query = '
	SELECT DomID
FROM Domaine
WHERE DomTitre= :domaine';
	$query_params = array(':domaine'=>$departement);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

function recupLocID($locomotion){
	include('connection.php');
	$query = '
	SELECT LocID
	FROM Locomotion
	WHERE LocTitre= :locomotion;';
	$query_params = array(':locomotion'=>$locomotion);
	try{
		$stmt = $db->prepare($query);
		$result = $stmt->execute($query_params);
	}
	catch(PDOException $ex){
		die("Failed query : " . $ex->getMessage());
	}
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	return $result;
}

?>
