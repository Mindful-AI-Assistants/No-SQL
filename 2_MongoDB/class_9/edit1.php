<?php

include_once('config.php');

if(isset($_POST['update'])) {
	
	$id = $_POST['id'];
	$user = array('nome' =>$_POST['nome'],
	'turma' =>$_POST['turma'],
	'idade' =>$_POST['idade']);
	
$errorMessage = '';
foreach($user as $key => $value){
	if(empty($value)){
		$errorMessage .= $key . ' esta em branco<br />';
	}
	
if($errorMessage){
	echo '<span style ="color:red">'. $errorMessage . '</span>';
	echo "<br /><a href='javascript:self.history.back();'>Voltar</a>";
}	else {

    $bulk = new MongoDB\Driver\BulkWrite;	
	$atualizarid = new MongoDB\BSON\ObjectId($id);
	
	$bulk->update(['_id' => $atualizarid],['$set' => $user]);
	
	$conn->executeBulkWrite('classedb.alunos', $bulk);
	
	header("Location:index.php");
	
}
	
}
	
	
}

?>