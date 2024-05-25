-- View para retornar funcionários com salário maior que a média por departamento
CREATE OR REPLACE VIEW capitulo04.vw_detalhes_funcionarios AS
WITH salario_departamento AS (
	SELECT 
	  departamento,
	  AVG(salario) AS media_salario
	FROM 
	  capitulo04.funcionarios
	GROUP BY 
	  1
)

SELECT 
  f.id_funcionario,
  f.nome,
  f.departamento,
  f.data_contratacao,
  f.salario
FROM 
  capitulo04.funcionarios f
INNER JOIN 
  salario_departamento sd
ON 
  f.departamento = sd.departamento 
WHERE 
  f.salario >= sd.media_salario;
 
SELECT 
  * 
FROM 
  capitulo04.vw_detalhes_funcionarios vdf;

-- View para retornar funcionários alocados em projetos 
  
CREATE VIEW capitulo04.vw_funcionarios_projetos AS
WITH funcionarios_projetos AS (
	SELECT 
	  f.id_funcionario,
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
  funcionarios_projetos;
 
SELECT 
  *
FROM 
  capitulo04.vw_funcionarios_projetos;
