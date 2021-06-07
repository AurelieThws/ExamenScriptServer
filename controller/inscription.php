<?php
session_start();
include('../model/read.php');
include('../model/insert.php');


$error="";
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$mail=$_POST['mail'];
$codepostal=$_POST['codepostal'];
$locomotion=$_POST['locomotion'];
$departement=$_POST['departement'];
$activite=$_POST['activite'];
$participation=$_POST['participation'];
unset($_POST); // Suprimer les données reçues


//if($activite=="21"){//atelier de cuisine
//	$cuisine=array();// création du tableau
//	array_push($cuisine, $nom);// ajouter
//	$cptcuisine=count($cuisine);//compter
//	var_dump($cptcuisine);
//}
//if($activite=="22"){//simulation de course
//	$simulation=array();
//	array_push($nom);
//	$cptsimulation=count($simulation);
//}
//if($activite=="23"){//course de karting
//	$karting=array();
//	array_push($nom);
//	$cptkarting=count($karting);
//}
//if($activite=="24"){//escape game
//	$escape=array();
//	array_push($nom);
//	$cptescape=count($escape);
//}
//if($activite=="25"){//pas d'activité
//	$pasacti=array();
//	array_push($nom);
//	$cptpasacti=count($pasacti);
//}


if(empExist($nom, $prenom)){
	echo "Vous êtes déjà inscrit.";
}else{
	$empid=insertEmploye($nom,$prenom, $mail, $codepostal, $locomotion, $departement, $participation);
	//$emp=RecupEmpID($nom);
	//$empid = $emp['EmpID'];
	insertParticipation($activite, $empid);
	//return insertParticipation($activite, $pk);
	header('location: ../view/confirmationinsciption.php');  // redirige
}



?>


