<?php
// incluindo o arquivo de conexão com o banco de dados
include("config.php");

//obtendo o id da url
$id = $_GET['id'];

// função que transforma o id em um ObjectId para que possa ser utilizado na remoção
$removerid = new \MongoDB\BSON\ObjectId($id);

// A operação BulkWrite é a forma de inserir dados no MongoDB
$bulkWrite=new MongoDB\Driver\BulkWrite;

// informando o id que deve ser removido
$bulkWrite->delete(['_id' => $removerid], array('limit'=>1));

// A função delete gera o formato da query de remoção e depois deve ser executada no banco e coleção informados
$conn->executeBulkWrite('classedb.alunos', $bulkWrite);

//redirecionando para a página com a lista dos alunos. No exemplo a index.php
header("Location:index.php");
?>
