<?php
echo "Testando a conexão entre o PHP e o MongoDB: <br>";

// função que conecta o PHP com o MongoDB
// parametros: mongodb://<nome-usuário>:<senha-usuário>@<IP-hospedagem-MongoDB>:<porta-acesso>/<nome-banco-de-dados-mongodb>

$conn = new MongoDB\Driver\Manager('mongodb://admin:senha@localhost:27017/classedb');

// a função var_dumb 
// a função getServers() retorna informações sobre 
//o servidor. Mostrando que conseguiu se conectar 
//ao banco de dados.

var_dump($conn->getServers());

?>
