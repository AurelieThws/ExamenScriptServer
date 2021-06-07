<?php
session_start();
include('../model/insert.php');

$login=$_POST['login'];
$passw=$_POST['passw'];
unset($_POST); // Suprimer les données reçues

insertAdmin($login, $passw);
header('location: ../view/admin.php');


//if($passw!=$passwconf){
//	$error .="Les deux mots de passes ne sont pas identiques <br>";
//}
//
////Est ce que le mot de passe contient 8 caractères?
//if(strlen($passw)<8){
//	$error .= "Le mot de passe est trop court <br>";
//}
//
//if (!strtolower($passw)) {
//	$error .= "Le mot de passe doit contenir au min une majuscule <br>";
//}
//
//if (!strtoupper($passw)) {
//	$error .= "Le mot de passe doit contenir au min une minuscule <br>";
//}
//
//if (ctype_alpha($passw)) {
//	$error .= "Le mot de passe doit contenir au min un caractère spécial <br>";
//}

//if(loginExist($login)){
//	$error .= "Vous est déjà inscrit, <a href=\"../view/login.php\">Connectez vous</a>";
//}
//
//if($error != ""){
//	echo $error;
//}else{
//	$mdp = $passw;
//	$mdp = password_hash($mdp,PASSWORD_BCRYPT);//crypté le mot de passe
//	unset($passw);
//	unset($passwconf);//détruire le mot de passe
	//insertEmploye($nom,$prenom, $mail, $codepostal, $locomotion, $departement, $participation);

	//header('location: ../view/login.php');  // redirige
//}

?>
