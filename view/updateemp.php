<?php 
include('../model/read.php');
$infosEmp= RecupInfosEmpPk($_GET["pk"]);
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
             <label for="nom">Nom: </label><input type="text" name="nom"  value=<?php echo $infosEmp['Nom'];?> required/>

             <label for="prenom">Prenom: </label><input type="text" name="prenom" value=<?php echo $infosEmp['Prenom'];?> required/>

             <label for="email">Email: </label><input type="email"  name="email"  value=<?php echo $infosEmp['Email'];?> required/>

             <label for="codepostal">Code Postale </label><input type="text"  name="codepostal"  value=<?php echo $infosEmp['CodePostal'];?> required/>
			 
			 <label for="ville">Ville </label><input type="text"  name="ville"  value=<?php echo $infosEmp['Ville'];?> required/>

             <label for="locomotion">Moyen de locomotion </label><input type="text"  name="locomotion"  value=<?php echo $infosEmp['Locomotion'];?> required/>

             <label for="departement">Département </label><input type="text"  name="departement"  value=<?php echo $infosEmp['Departement'];?> required/>

             <label for="participation">Participation au souper </label><input type="text"  name="participation"  value=<?php echo $infosEmp['Participation'];?> required/><br>

      <input  name="pk" type="hidden" value=<?php echo $_GET['pk'];?> />
             <input type="submit" value="Enregistrer" id="bouton">
         </form>
		</main>
     </body>
	</html>

	
