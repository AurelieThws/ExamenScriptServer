<?php
function updateemp($nom, $prenom, $email, $cpid, $domid, $locid, $participation, $pk){
  include('connection.php');//inclure la connection à la DB
   $query = "UPDATE Employe SET EmpNom = :nom, EmpPrenom = :prenom, EmpMail = :email, EmpCodID = :codepostal, EmpLocID = :locomotion, EmpDomID = :domaine, EmpSouper = :participation WHERE EmpID = :pk ";//requête
   $query_params = array(':nom'=>$nom,':prenom'=>$prenom,':email'=>$email,':codepostal'=>$cpid,':locomotion'=>$locid,':domaine'=>$domid,':participation'=>$participation, ':pk'=>$pk);
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
	
}

 ?>
