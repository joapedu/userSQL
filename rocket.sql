-- Busca segmentada pelas props
SELECT nome, responsavel FROM aluno;

-- Busca segmentada pelas props
SELECT nome, materia, cpf FROM professor;

-- Busca restrita por matrícula
SELECT * FROM aluno WHERE matricula = 1;

-- Like faz a busca na tabela a partir do parâmetro
SELECT * FROM aluno WHERE nome like 'j%';

-- Operador maior e menor que (igual too)
SELECT * FROM aluno WHERE > 2;
SELECT * FROM aluno WHERE < 2;
SELECT * FROM aluno WHERE >= 2;

-- Não igual (<>) de WHERE
SELECT * FROM aluno WHERE matricula <> 1;

-- Diferente de (!=)
SELECT * FROM aluno WHERE matricula != 3;

-- vale para sub, mult, div e resto de div
SELECT * FROM aluno WHERE matricula = 1 + 1;

-- outro condicional (AND)
SELECT * FROM aluno WHERE nome like 'J%' AND matricula < 2;

-- outro condicional (OR)
SELECT * FROM aluno WHERE nome like 'J%' OR matricula < 2;

-- Operador lógico (BETWEEN) encontra entre valores
SELECT * FROM professor
WHERE id_professor BETWEEN 1 and 7 ;

-- Traz os funcionarios especificados (NOT IN faz o contrário)
SELECT * FROM professor 
WHERE id_professor IN (1,2,3)

-- Busca aqueles que não são nulos
SELECT * FROM professor
WHERE id_professor IS NOT NULL

-- insert insere informação na tabela
INSERT INTO aluno (nome, cpf, responsavel) VALUES ('João Eduardo Braga', 21221221221, 'Jonathas')

-- update serve pra alterar dados de dentro da tabela
UPDATE aluno SET nome='Mariano Soares', responsavel='Marcio Soares' WHERE matricula = 2

-- delete serve pra remover dados de dentro da tabela
DELETE FROM aluno WHERE matricula = 3
