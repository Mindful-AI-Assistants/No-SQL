<?php

// incluindo o arquivo de conexão com o banco de dados
include_once("config.php");

// inicio do if
if(isset($_POST['update']))
{
    $id = $_POST['id'];
    $user = array (
                'nome' => $_POST['nome'],
                'idade' => $_POST['idade'],
                'turma' => $_POST['turma']
            );

    // verificando se tem campos em branco
    $errorMessage = '';
    foreach ($user as $key => $value) {
        if (empty($value)) {
            $errorMessage .= $key . ' esta em branco<br />';
        }
    }

    if ($errorMessage) {
        // imprimir mensagem de erro e link para a página anterior
        echo '<span style="color:red">'.$errorMessage.'</span>';
        echo "<br/><a href='javascript:self.history.back();'>Voltar</a>";
    } else {
        // atualizando o aluno na coleção

        // função que transforma o id em um ObjectId para que possa ser utilizado na busca
        $atualizaid = new \MongoDB\BSON\ObjectId($id);

         // A operação BulkWrite é a forma de inserir dados no MongoDB
        $bulkWrite=new MongoDB\Driver\BulkWrite;

        // informando o id que deve ser atualizado e um array '$user' com as variáveis que foram alteradas
        $bulkWrite->update(['_id' => $atualizaid], ['$set' => $user]);

        // A função update gera o formato da query de alteração e depois deve ser executada no banco e coleção informados
        $conn->executeBulkWrite('classedb.alunos', $bulkWrite);

        //redirecionando para a página com a lista dos alunos. No exemplo a index.php
        header("Location: index.php");
    }

} // fim do if $_POST

//obtendo o id da url
$id = $_GET['id'];

// função que transforma o id em um ObjectId para que possa ser utilizado na busca
$buscaid = new \MongoDB\BSON\ObjectId($id);

// selecionando o documento associado com o identificador id
$query = new MongoDB\Driver\Query(['_id' => $buscaid],['limit' => 1]);

// A função executeQuery executa a consulta no banco de dados e coleção informados: classedb e alunos
$resultado = $conn->executeQuery('classedb.alunos', $query);

// carregando o resultado da busca na variável $aluno
foreach ($resultado as $aluno) {
       $nome = $aluno->nome;
       $idade = $aluno->idade;
       $turma = $aluno->turma;
}

?>
<html>
<head>
    <title>Atualizando o dado</title>
</head>

<body>
    <a href="index.php">Home</a>
    <br/><br/>

    <form name="form1" method="post" action="edit.php">
        <table border="0">
            <tr>
                <td>Nome</td>
                <td><input type="text" name="nome" value="
				<?php 
				    echo $nome;
				?>
				
				"></td>
            </tr>
            <tr>
                <td>Idade</td>
                <td><input type="text" name="idade" value="<?php echo $idade;?>"></td>
            </tr>
            <tr>
                <td>Turma</td>
                <td><input type="text" name="turma" value="<?php echo $turma;?>"></td>
            </tr>
            <tr>
                <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
                <td><input type="submit" name="update" value="Atualizar"></td>
            </tr>
        </table>
    </form>
</body>
</html>