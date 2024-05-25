-- View Materializada para retornar funcionários alocados em projetos 
  
CREATE MATERIALIZED VIEW capitulo04.mv_funcionarios_projetos AS
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
  capitulo04.mv_funcionarios_projetos;
  
/* 
Checando a diferença entre a View e a View Materializada com EXPLAIN

O comando EXPLAIN no SQL é usado para obter o plano de execução de uma consulta.
Ele fornece informações detalhadas sobre como o banco de dados planeja
executar a consulta, incluindo detalhes como as operações que serão
realizadas (varredura de tabela, join, indexação), a ordem dessas
operações, e o custo estimado associado a cada operação.
Basicamente são os passos que o banco segue para retornar a consulta.
*/
  
-- View Materializada
EXPLAIN
SELECT 
  *
FROM 
capitulo04.mv_funcionarios_projetos;

-- View
EXPLAIN
SELECT 
  *
FROM 
capitulo04.vw_funcionarios_projetos;

/* 
Diferentemente da View, que é uma tabela virtual onde a consulta 
é armazenada e sempre retorna os dados atualizados quando consultada, 
a View Materializada é uma tabela física no banco de dados e pode ficar 
desatualizada. Para manter os dados atualizados em uma View Materializada, 
é necessário executar um REFRESH.
*/

REFRESH MATERIALIZED VIEW capitulo04.mv_funcionarios_projetos;
    
