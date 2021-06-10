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

if(empExist($nom, $prenom)){
	echo "Vous êtes déjà inscrit.";
}else{
	$empid=insertEmploye($nom,$prenom, $mail, $codepostal, $locomotion, $departement, $participation);
	insertParticipation($activite, $empid);
	header('location: ../view/confirmationinsciption.php');  // redirige
}



?>


