USE SisDep;

-- B�nus de R$ 100,00 para todos os funcion�rios que possuam dependentes
	UPDATE Funcionario
	SET Salario = Salario + 100
	FROM Funcionario AS F INNER JOIN Dependente AS D
	ON F.idMatricula = D.idMatricula;
BEGIN TRAN

ROLLBACK
COMMIT

-- Reajuste de 10% no sal�rio para funcion�rios que n�o possuam dependentes

SELECT
	F.NomeFuncionario,D.NomeDependente
FROM Funcionario AS F LEFT JOIN Dependente AS D
ON F.idMatricula = D.idMatricula
WHERE D.NomeDependente IS NULL;

BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	FROM Funcionario AS F LEFT JOIN Dependente AS D
	ON F.idMatricula = D.idMatricula
	WHERE D.NomeDependente IS NULL

ROLLBACK -- DESFAZER
COMMIT -- CONFIRMAR

-- Desligamento de funcion�rios do depto SAC com sal�rio acima de R$ 1.500,00

BEGIN TRAN
	DELETE Funcionario
	FROM Funcionario AS F INNER JOIN Depto AS D
	ON F.idDepartamento = D.idDepartamento
	WHERE D.NomeDepartamento = 'SAC' AND F.Salario > 1500;

COMMIT

-- Desligamento de funcion�rios com sal�rio superior a R$ 4.000,00
-- que N�O possuam dependentes

BEGIN TRAN
	DELETE Funcionario
	FROM Funcionario AS F LEFT JOIN Dependente AS D
	ON F.idMatricula = D.idMatricula
	WHERE D.NomeDependente IS NULL AND F.Salario > 4000;

COMMIT