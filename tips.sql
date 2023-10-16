-- Criação do Banco de Dados: CREATE DATABASE
CREATE DATABASE hashtag;

-- Seleção do Banco de Dados: USE DATABASE
USE hashtag;

-- Criação de tabelas no Banco de Dados selecionado: CREATE TABLE
CREATE TABLE Vendas(
	ID_Venda INT,
	Curso VARCHAR(100),
	Aluno VARCHAR(100),
	Estado VARCHAR(100),
	Valor DECIMAL(10, 2)
);

-- Incluir dados na tabela: INSERT INTO
INSERT INTO Vendas(ID_Venda, Curso, Aluno, Estado, Valor)
VALUES
    (1, 'Excel', 'João', 'SP', 100),
    (2, 'VBA', 'Lucas', 'RJ', 50),
    (3, 'Excel', 'Alice', 'SP', 100),
    (4, 'Excel', 'Pedro', 'PE', 100),
    (5, 'VBA', 'Amanda', 'BA', 50),
    (6, 'Power BI', 'Rita', 'RS', 80),
    (7, 'Excel', 'Julia', 'RJ', 100),
    (8, 'Power BI', 'Caio', 'SP', 80),
    (9, 'Power BI', 'Lara', 'MG', 80),
    (10, 'Excel', 'Rogério', 'AC', 100)

-- Selecionar dados de uma tabela: SELECT
SELECT * FROM Vendas;
SELECT Aluno, Curso, Valor FROM Vendas;

-- Ordenar dados de uma tabela: ORDER BY
SELECT * FROM Vendas
ORDER BY Aluno;

-- Filtrar dados em uma tabela: WHERE
SELECT * FROM Vendas
WHERE Estado = 'RJ';

-- Alteração de valores dentro da tabela: UPDATE
UPDATE Vendas
SET Valor = 150
WHERE Curso = 'VBA';

-- Exclusão de linhas da tabela: DELETE
DELETE FROM Vendas
WHERE ID_Venda = 10;

-- Exclusão de todos os dados de uma tabela: TRUNCATE
TRUNCATE TABLE Vendas;