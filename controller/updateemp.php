<?php
include('../model/read.php');
include('../model/update.php');

$pk = $_POST['pk'];
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$email=$_POST['email'];
$codepostal=$_POST['codepostal'];
$ville=$_POST['ville'];
$locomotion=$_POST['locomotion'];
$departement=$_POST['departement'];
$participation=$_POST['participation'];

unset($_POST); // Suprimer les données reçues

$tabville=villeExist($codepostal,$ville);
if(empty($tabville)){
	echo "La ville et le code postale ne sont pas correctement lié.";
}else{
	$cpid=recupCpID($codepostal)[0]["CpID"];
	$domid=recupDomID($departement)[0]["DomID"];
	$locid=recupLocID($locomotion)[0]["LocID"];
	updateemp($nom, $prenom, $email, $cpid, $domid, $locid, $participation, $pk);
	header('location: ../view/admin.php');  // redirige
}

?>
