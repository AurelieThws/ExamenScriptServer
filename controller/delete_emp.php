<?php
include('../model/delete.php');
deleteEmp($_GET['pk']);
deleteEmpParticipation($_GET['pk']);
header('Location: ../view/admin.php');
 ?>
