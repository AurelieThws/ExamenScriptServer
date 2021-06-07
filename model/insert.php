<?php

function insertEmploye($nom,$prenom, $mail, $codepostal, $locomotion, $departement, $participation){
  include('connection.php');//inclure la connection à la DB
   $query = "INSERT INTO Employe(EmpNom,EmpPrenom,EmpMail,EmpCodID,EmpLocID,EmpDomID,EmpSouper) VALUES (:nom,:prenom,:mail,:codepostal,:locomotion,:domaine,:participation)";//requête
   $query_params = array(':nom'=>$nom,':prenom'=>$prenom,':mail'=>$mail,':codepostal'=>$codepostal,':locomotion'=>$locomotion,':domaine'=>$departement,':participation'=>$participation);
                        // Ajout les paramètres ds la requête
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
return $db->lastInsertId();//	
}

function insertAdmin($login, $mdp){
  include('connection.php');//inclure la connection à la DB
   $query = "INSERT INTO Admin(AdmLogin,AdmPassword) VALUES (:login, :passw)";//requête
   $query_params = array(':login'=>$login,':passw'=>$mdp);
                        // Ajout les paramètres ds la requête
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
	
}

function insertParticipation($activite, $empid){
  include('connection.php');//inclure la connection à la DB
   $query = "INSERT INTO Participation(ParActID, ParEmpID) VALUES (:activite, :pk)";//requête
   $query_params = array(':activite'=>$activite,':pk'=>$empid);
                        // Ajout les paramètres ds la requête
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
	
}


 ?>