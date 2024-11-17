-- Instruções DML (Data Manipulation Language)
-- SELECT, INSERT, UPDATE, DELETE 

-- Inserção de dados

INSERT INTO capitulo03.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (100, 'Higor', 'Engenharia de Dados', '2023-01-01', 2000);

INSERT INTO capitulo03.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (101, 'Carlos', 'Engenharia de Dados', '2024-01-01', 3000);

INSERT INTO capitulo03.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (102, 'Mateus', 'Ciência de Dados', '2021-01-01', 4000);

INSERT INTO capitulo03.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (103, 'Ana', 'Análise de Dados', '2023-06-21', 5000);

INSERT INTO capitulo03.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (104, 'Beatriz', 'Engenharia de Dados', '2024-02-23', 6000);

-- Selecionar os dados

SELECT 
  *
FROM 
  capitulo03.funcionarios f;
 
-- Atualizar registros da tabela 

/*
   Antes de realizar um UPDATE ou DELETE em uma tabela,
   sempre execute um SELECT para garantir que o retorno 
   corresponde exatamente aos registros que você deseja 
   alterar ou excluir.

   NUNCA execute um UPDATE ou DELETE sem a cláusula WHERE, 
   exceto se o objetivo for modificar ou deletar todos
   os registros da tabela.
*/

 
UPDATE capitulo03.funcionarios 
SET salario = 5000
WHERE id_funcionario = 100;

-- Exclusão de dados

DELETE FROM capitulo03.funcionarios 
WHERE id_funcionario = 100;

