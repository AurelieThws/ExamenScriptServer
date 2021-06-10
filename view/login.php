<!DOCTYPE html>
<html lang="fr">

	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../styles.css">
	</head>

	<body> 
		<main>
			<h1>Login</h1>
			<form action="../controller/loginadmin.php" method="post">
				<label for="login">Login: </label><input type="text" name="login" placeholder="champ obligatoire" required/>
				<label for="passw">Mot de passe: </label><input type="password"  name="passw" placeholder="8caract,1Maj,1min,1spéc" required/><br><br>
				<input type="submit" value="Se connecter"  id="bouton"/><br>
			</form>	
		</main>
	</body>
</html>