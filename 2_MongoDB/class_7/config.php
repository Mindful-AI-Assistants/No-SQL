<?php

// função que conecta o PHP com o MongoDB
// parametros: mongodb://<nome-usuário>:<senha-usuário>@<IP-hospedagem-MongoDB>:<porta-acesso>/<nome-banco-de-dados-mongodb>
$conn = new MongoDB\Driver\Manager('mongodb://admin:senha@localhost:27017/classedb');

?>

