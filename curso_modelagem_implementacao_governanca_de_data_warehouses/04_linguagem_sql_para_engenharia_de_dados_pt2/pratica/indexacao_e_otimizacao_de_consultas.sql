-- Criando índices
 
 CREATE INDEX idx_funcionarios_id ON capitulo04.funcionarios (id_funcionario);

 CREATE INDEX idx_salario ON capitulo04.funcionarios (salario);

-- Removendo um índice

DROP INDEX capitulo04.idx_salario

-- Query para testar os índices
 
WITH funcionarios_projetos AS (
	SELECT 
	  f.nome AS nome_funcionario,
	  f.departamento,
	  f.salario,
	  COALESCE(p.id_projeto, 0) AS id_projeto,
	  COALESCE(p.nome_projeto, 'NA') AS nome_projeto
	 FROM 
	   capitulo04.funcionarios f
	 LEFT JOIN 
	   capitulo04.projetos p
	 ON 
	   f.id_funcionario = p.id_funcionario
)

SELECT 
  * 
FROM 
  funcionarios_projetos
WHERE 
  salario > 20000;

-- Utilize também o EXPLAIN para ver o plano de execução da query

EXPLAIN WITH funcionarios_projetos AS (
	SELECT 
	  f.nome AS nome_funcionario,
	  f.departamento,
	  f.salario,
	  COALESCE(p.id_projeto, 0) AS id_projeto,
	  COALESCE(p.nome_projeto, 'NA') AS nome_projeto
	 FROM 
	   capitulo04.funcionarios f
	 LEFT JOIN 
	   capitulo04.projetos p
	 ON 
	   f.id_funcionario = p.id_funcionario
)

SELECT 
  * 
FROM 
  funcionarios_projetos
WHERE 
  salario > 20000;