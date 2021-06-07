<?php

function deleteEmp($pk){
  include('connection.php');//inclure la connection à la DB
   $query = "DELETE FROM Employe WHERE EmpID= :pk";//requête qui supprime l'utiID de la table utilisateurs
   $query_params = array(':pk'=>$pk);// Ajoute les paramètres sous forme de tableau ds la requête
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
}

function deleteEmpParticipation($pk){
  include('connection.php');//inclure la connection à la DB
   $query = "DELETE FROM Participation WHERE ParEmpID= :pk";//requête qui supprime l'utiID de la table utilisateurs
   $query_params = array(':pk'=>$pk);// Ajoute les paramètres sous forme de tableau ds la requête
   try{
       $stmt = $db->prepare($query);//Analyse la requête
       $result = $stmt->execute($query_params);
   }
   catch(PDOException $ex){
       die("Failed query : " . $ex->getMessage());
   }
}

 ?>
