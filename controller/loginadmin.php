<?php
session_start();
include('../model/read.php');

$login=$_POST['login'];
$passw=$_POST['passw'];
unset($_POST); // Suprimer les données reçues

if(loginExist($login)){
	$tabrecup = RecupAllAdmin($login);
	$verif = password_verify($passw,$tabrecup['AdmPassword']);
	if($verif==true){// $verif==true
		header('Location: ../view/admin.php');/*rediriger vers la connection mais pas le forum directement*/
	}else{
		echo "Ce n'est pas le bon mot de passe";
	}	
}else{
echo"Vous n'êtes pas un admin";
}


?>
