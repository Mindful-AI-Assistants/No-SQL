<?php
echo "Lista dos alunos: ";

$conn = new MongoDB\Driver\Manager('mongodb://admin:senha@localhost:27017/classedb');

$query = new MongoDB\Driver\Query([],['sort' => [ 'nome' => 1],'limit' => 5]);

$resultado = $conn->executeQuery('classedb.alunos', $query);

foreach ($resultado as $linha) {
    echo "<br>$linha->nome - $linha->turma - $linha->sexo";
}
?>
