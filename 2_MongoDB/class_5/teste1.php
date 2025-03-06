<?php

echo "Testando a conexão entre o PHP e o MongoDB: <br>"

$conn = new MongoDB\Driver\Manager('mongodb://admin:senha@localhost:27017/classedb');

var_dump($conn->getServers());

?>