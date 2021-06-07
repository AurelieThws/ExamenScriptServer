<?php
session_start();
include('../model/insert.php');
include('../model/read.php');

$error="";
$login=$_POST['login'];
$passw=$_POST['passw'];
$confpassw=$_POST['confpassw'];
unset($_POST); // Suprimer les données reçues


if($passw!=$confpassw){
	$error .="Les deux mots de passes ne sont pas identiques <br>";
}

//Est ce que le mot de passe contient 8 caractères?
if(strlen($passw)<8){
	$error .= "Le mot de passe est trop court <br>";
}

if (!strtolower($passw)) {
	$error .= "Le mot de passe doit contenir au min une majuscule <br>";
}

if (!strtoupper($passw)) {
	$error .= "Le mot de passe doit contenir au min une minuscule <br>";
}

if (ctype_alpha($passw)) {
	$error .= "Le mot de passe doit contenir au min un caractère spécial <br>";
}

if(loginExist($login)){
	$error .= "Ce login est déjà pris, <a href='../view/admin.php'>réessayez avec un autre login</a>";
}

if($error != ""){
	echo $error;
}else{
	$mdp = $passw;
	$mdp = password_hash($mdp,PASSWORD_BCRYPT);//crypté le mot de passe
	unset($passw);
	unset($passwconf);//détruire le mot de passe
	insertAdmin($login,$mdp);
	header('location: ../view/admin.php');  // redirige
}

?>
