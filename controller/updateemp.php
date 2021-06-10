<?php
include('../model/read.php');
include('../model/update.php');

$pk = (int)$_POST['pk'];
$nom=$_POST['nom'];
$prenom=$_POST['prenom'];
$email=$_POST['email'];
$codepostal=(int)$_POST['codepostal'];
//$ville=$_POST['ville'];
$locomotion=(int)$_POST['locomotion'];
$departement=(int)$_POST['departement'];
$participation=$_POST['participation'];
$activite=(int)$_POST['activite'];
unset($_POST); // Suprimer les données reçues

updateemp($nom, $prenom, $email, $codepostal, $departement, $locomotion, $participation, $pk);
header('location: ../view/admin.php');  // redirige


?>
