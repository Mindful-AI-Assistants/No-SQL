<html>
<body>
<?php

include_once('config.php');

if(isset($_POST['Submit'])) {
	$user = array (
	        'nome' => $_POST['nome'];
			'idade' => $_POST['idade'];
			'turma' => $_POST['turma'];
			'sexo' => $_POST['sexo'];
	);
	
$errorMessage = '';
foreach ($user as $key => $value){
	if (empty($value)) {
		$errorMessage .= $key . ' esta em branco<br/>'; 
	}
}	
if($errorMessage){
	echo '<span style = "color:red">'. $errorMessage ."</span>";
	echo "<br />< href='javascript:self.history.back();'>Voltar</a>"
}	
	else {
		
		$bulk = new MongoDB\Driver\BulkWrite;
		$bulk->insert(['nome' => $user['nome'],'idade' => $user['idade'], 'sexo' => $user['sexo'], 'turma' => $user['turma']]);
		
		$conn->executeBulkWrite('classedb.alunos', $bulk);
		
		echo "<font color='green'>Aluno inserido com sucesso!</font>";
		echo "<br><a href='index.php'>Listar resultado</a>"
		
	}
}

?>
</body>
</html>