<!DOCTYPE html>
<?php 
session_start();
include('../model/read.php');
$emps=RecupAllEmp();
$tabActis = RecupActi();
?>

<html lang="fr">

	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../styles.css">
	</head>

	<body>   
		<main id="table">
			<h1>Bienvenu les admins chéris</h1>
			<table border=1>
				<thead>
					<tr>
						<?php foreach ($emps[0] as $key => $value) {
	if($key != 'EmpID'){ ?>
						<th><?php echo $key ;}?></th>
						<?php } ?>
						<th> Modifier </th>
						<th> Supprimer </th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($emps as $emp) {?>
					<tr>
						<?php foreach ($emp as $key2 => $val):
												   if($key2 != 'EmpID'){ ?>
						<td><?php echo $val;}?></td>
						<?php endforeach; ?>
						<td> <button type="submit"> <a id="changedelete" href="updateemp.php?pk=<?php echo $emp['EmpID'];?>">Modifier</a></button></td>
						<td> <button type="submit"> <a id="changedelete"  href="../controller/delete_emp.php?pk=<?php echo $emp['EmpID'];?>">Supprimer</a></button></td>
					</tr>
					<?php }?>
				</tbody>
			</table>
			<br><br>

			<?php
			foreach($tabActis as $acti){
				$tabInscrit = recupInscritActi($acti["ActID"]);
			if($acti["ActTitre"]=="Pas activité"){?>
					<center><p>Pas d'activité</p></center>
			<?php }else{ ?>
			<center><p><?php echo $acti["ActTitre"]." - ".$acti["Inscrit"]."/".$acti["Max"]; ?></p></center>
			<?php }?>
			<table border=1>
				<thead>
					<tr>
						<th>Prénom</th>
						<th>Nom</th>
					</tr>
				</thead>
				<tbody>
					
					<?php foreach ($tabInscrit as $inscrit) {?>
					<tr>
					<td>
						<?php echo $inscrit["Prenom"]; ?>
					</td>
					<td>
						<?php echo $inscrit["Nom"]; ?>
					</td>
						</tr>
					<?php }?>
					
				</tbody>
			</table>
			<br><br>
			<?php } ?>
			

			<h1>Ajouter un admin</h1>
			<form action="../controller/addadmin.php" method="post">
				<label for="login">Login: </label><input type="text" name="login" placeholder="champ obligatoire" required/><br>
				<label for="passw">Mot de passe: </label><input type="password"  name="passw" placeholder="8caract,1Maj,1min,1spéc" required/><br>
				<label for="confpassw">Confirmation du mot de passe: </label><input type="password"  name="confpassw" placeholder="8caract,1Maj,1min,1spéc" required/><br><br>
				<input type="submit" value="Ajouter"  id="bouton"/><br>
			</form>	

		</main>
	</body>
</html>