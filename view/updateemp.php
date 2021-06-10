<?php 
include('../model/read.php');
$infosEmp= RecupInfosEmpPk($_GET["pk"]);
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
			<h1>Modification</h1>
			<!--les infos entrés dans le formulaire d'inscription sont envoyées dans le fichier inscription-->
			<form action="../controller/updateemp.php" method="post">
				<label for="nom">Nom: </label><input type="text" name="nom"  value="<?php echo $infosEmp['Nom'];?>" required/>

				<label for="prenom">Prenom: </label><input type="text" name="prenom" value=<?php echo $infosEmp['Prenom'];?> required/>

				<label for="email">Email: </label><input type="email"  name="email"  value=<?php echo $infosEmp['Email'];?> required/>

				<label for="codepostal">Votre code postal: </label>
				<select name="codepostal" required>
					<?php foreach ($tabVilles as $tabVille) { ?>
					<option 
							value="<?php echo $tabVille["CpCode"]; ?>" 
							<?php echo $tabVille["CpVille"]==$infosEmp["Ville"]? "selected" : "" ?>
							>
						<?php echo $tabVille["CpCode"]." ".$tabVille["CpVille"]; ?> 
					</option>
					<?php } ?>
				</select><br>

				<label for="locomotion">Votre moyen de locomotion: </label>
				<select name="locomotion" required>
					<?php foreach ($tabLocos as $tabLoco) { ?>
					<option 
							value="<?php echo $tabLoco["LocID"]; ?>" 
							<?php echo $tabLoco["LocTitre"]==$infosEmp["Locomotion"]? "selected" : "" ?>
							>
						<?php echo $tabLoco["LocTitre"]; ?> 
					</option>
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
					<option 
							value="<?php echo $tabActi["ActID"]; ?>" 
							<?php echo $tabActi["ActTitre"]==$infosEmp["Activite"]? "selected" : "" ?>
							>
						<?php echo $tabActi["ActTitre"]; ?> 
					</option>
					<?php } ?>
				</select><br>

				<label for="participation">Participez-vous au repas du soir?</label>
				<select name="participation" required>
					<option value="oui" class="red" selected >oui </option>
					<option value="non" class="red">non</option>
				</select><br><br><br>

				<input  name="pk" type="hidden" value=<?php echo $_GET['pk'];?> >
				<input type="submit" value="Enregistrer" id="bouton">
			</form>
		</main>
	</body>
</html>