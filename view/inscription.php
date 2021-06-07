<?php
session_start();
include('../model/read.php');

$tabLocos = RecupLoco();// récupérer en DB
$tabDeps = RecupDepartement();// récupérer en DB
$tabActis = RecupActi();// récupérer en DB
$tabVilles = RecupVille();// récupérer en DB
$tabActiDispo = array();
foreach ($tabActis as $acti) { 
	if(($acti["Max"]-$acti["Inscrit"])>=0){
		array_push($tabActiDispo,$acti);
	}
}
			
?>


<!DOCTYPE html>
<html lang="fr">

	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../styles.css">
	</head>

	<body>  
		<main>
			<h1>Inscription <br>à la journée du personnel</h1>
			<!--les infos entrés dans le formulaire d'inscription sont envoyées dans le fichier inscription-->
			<form action="../controller/inscription.php" method="post">        
				<label for="nom">Votre nom: </label><input type="text" name="nom" placeholder="champ obligatoire" required/><br>

				<label for="prenom">Votre prénom: </label><input type="text" name="prenom" placeholder="champ obligatoire" required/><br>

				<label for="mail">Votre mail: </label><input type="mail" name="mail" placeholder="champ obligatoire" required/><br>

				<label for="codepostal">Votre code postal: </label>
				<select name="codepostal" required>
					<?php foreach ($tabVilles as $tabVille) { ?>
					<option value="<?php echo $tabVille["CpID"]; ?>"><?php echo $tabVille["CpCode"]." ".$tabVille["CpVille"]; ?></option>
					<?php } ?>
				</select><br>

				<label for="locomotion">Votre moyen de locomotion: </label>
				<select name="locomotion" required>
					<?php foreach ($tabLocos as $tabLoco) { ?>
					<option value="<?php echo $tabLoco["LocID"]; ?>"><?php echo $tabLoco["LocTitre"]; ?></option>
					<?php } ?>
				</select><br>

				<label for="departement">Votre département dans la société: </label>
				<select name="departement" required>
					<?php foreach ($tabDeps as $tabDep) { ?>
					<option value="<?php echo $tabDep["DomID"]; ?>"><?php echo $tabDep["DomTitre"]; ?></option>
					<?php } ?>
				</select><br>

				<label for="activite">Votre activité choisie: </label>
				
				<select name="activite" required>
					<?php foreach ($tabActiDispo as $tabActi) { ?>
						<option value="<?php echo $tabActi["ActID"]; ?>"><?php echo $tabActi["ActTitre"]; ?></option>
					<?php } ?>
				</select><br>

				<label for="participation">Participez-vous au repas du soir?</label>
				<select name="participation" required>
					<option value="oui" class="red" selected >oui </option>
					<option value="non" class="red">non</option>
				</select><br><br><br>

				<input type="submit" value="Envoyer" id="bouton"/>
			</form>	
			<div id="acti">
			<?php
				foreach($tabActis as $acti){
				$tabInscrit = recupInscritActi($acti["ActID"]); ?>
				<h3><?php echo $acti["ActTitre"]; ?></h3>
				<p><?php echo $acti["ActDescription"]; ?></p>
				<p>Nombre de personne maximum: <?php echo $acti["Max"]; ?></p>
				<br>
			
			<?php }?>
		</div>
		</main>
		
	</body>
</html>
