<?php

include_once('config.php');

$id = $_GET['id'];

$removeid = new \MongoDB\BSON\ObjectId($id);

$bulk = new MongoDB\Driver\BulkWrite;

$bulk->delete(['_id' => $removeid],array('limit' => 1));

$conn->executeBulkWrite('classedb.alunos',$bulk);

header('Location:index.php');

?>