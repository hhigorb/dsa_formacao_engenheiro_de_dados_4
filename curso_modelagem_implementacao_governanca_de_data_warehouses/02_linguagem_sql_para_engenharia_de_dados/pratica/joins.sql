-- Joins

CREATE TABLE capitulo03.projetos (
	id_projeto INT PRIMARY KEY, 
	nome_projeto VARCHAR(100),
	id_funcionario INT REFERENCES capitulo03.funcionarios(id_funcionario)
);

INSERT INTO capitulo03.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (1, 'Projeto de Desenvolvimento de Software', 100);

INSERT INTO capitulo03.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (2, 'Projeto de Marketing Digital', 100);

INSERT INTO capitulo03.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (3, 'Projeto de Pesquisa em Inteligência Artificial', 101);

INSERT INTO capitulo03.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (4, 'Projeto de Atualização de Infraestrutura de TI', 102);

INSERT INTO capitulo03.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (5, 'Projeto de Desenvolvimento de Aplicativo Móvel', null);

/* 
Um INNER JOIN combina linhas de duas tabelas com base em uma condição
especificada na cláusula ON. Ele retorna apenas as linhas onde há uma
correspondência entre as tabelas nas colunas especificadas. No exemplo dado,
estamos combinando informações das tabelas funcionarios e projetos com
base no id_funcionario.
*/

-- Inner Join

-- Nome e salário dos funcionários alocados em projetos

SELECT 
  f.nome,
  f.salario,
  p.nome_projeto
FROM 
  capitulo03.funcionarios f 
INNER JOIN -- É possível usar tanto INNER JOIN quanto apenas JOIN para se referir ao INNER JOIN
  capitulo03.projetos p
ON 
  f.id_funcionario = p.id_funcionario;
 
/* 
Um LEFT JOIN retorna todas as linhas da tabela da esquerda (tabela do FROM)
e também retorna o que tem correspondência entre as tabelas. Basicamente traz
todas as linhas da tabela da esquerda e faz um Inner Join entre ambas as tabelas.
Se não houver correspondência entre as colunas da cláusula ON, traz nulo.
*/
 
-- Left Join
 
 -- Nome e salário de todos os funcionários independente de estarem alocados em projetos.
 
 SELECT 
   f.nome,
   f.salario,
   COALESCE(p.nome_projeto, 'Não alocado em projeto') AS nome_projeto
 FROM 
   capitulo03.funcionarios f 
LEFT JOIN 
  capitulo03.projetos p 
ON
  f.id_funcionario = p.id_funcionario
