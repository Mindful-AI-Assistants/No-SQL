<?php

// inclusão da página com a conexão com o banco de dados
include_once("config.php");

// MongoDB\Driver\Query()        <-  Função em PHP que constroe a query
//  [],                          <-  Filtros de busca, neste exemplo nenhum   
//  ['sort' => [ 'nome' => 1],   <-  Definimos a ordenação com o comando ‘sort’ utilizando o atríbuto ‘nome’ e a ordem crescente (1). 
//  'limit' => 5         		 <-  Limitação da quantidade dos resultados apresentado, no exemplo 5 
//  ]);                          <-  Fim da função  
$query = new MongoDB\Driver\Query([], ['sort' => [ 'nome' => 1],'limit' => 5]);

// A função executeQuery executa a consulta no banco de dados e coleção informados: classedb e alunos
$cursor = $conn->executeQuery('classedb.alunos', $query);

?>

<html>
<head>
    <title>PHP-MongoDB</title>
</head>

<body>

<h3><b>Sistema Alunos - PHP com MongoDB</b></h3>


<a href="add.html">Adicionar novo aluno</a><br/><br/>

    <table width='80%' border=0>

    <tr bgcolor='#CCCCCC'>
        <td>Nome</td>
        <td>Idade</td>
        <td>Sexo</td>
        <td>Turma</td>
        <td>Atualizar</td>
    </tr>
    <?php

	// Apresentação dos resultados da consulta
   foreach ($cursor as $document) {
        echo "<tr>";

		// Deve informar o nome da chave (atríbuto) com que o valor foi registrado no banco de dados
        // neste exemplo as chaves 'nome', 'turma' e 'sexo'	
        echo "<td>".$document->nome."</td>";
        echo "<td>".$document->idade."</td>";
        echo "<td>".$document->sexo."</td>";
        echo "<td>".$document->turma."</td>";
		
		// referência para a página de edição dos dados passando o identificador único '_id'
        echo "<td><a href=\"edit.php?id=$document->_id\">Editar</a>";
		
		// referência para a página de remoção dos dados passando o identificador único '_id' e uma confirmação sobre remover os dados
		echo " | <a href=\"delete.php?id=$document->_id\" onClick=\"return confirm('Voce quer apagar este registro?')\">Apagar</a></td>";
    }
    ?>
    </table>
</body>
</html>





