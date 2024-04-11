/*
CTE (Common Table Expression) é uma construção que permite a definição
temporária de uma tabela dentro de uma consulta SQL. Ela é útil para
simplificar consultas complexas, dividir a lógica de consulta em partes
mais gerenciáveis e reutilizáveis, além de melhorar a legibilidade do
código SQL. Basicamente, uma CTE é uma espécie de tabela temporária que
existe apenas para a duração de uma única consulta.
*/

-- Funcionários com salário maior que 5000

WITH funcionarios_salario_maior_5000 AS (
  SELECT 
    nome,
    salario
  FROM 
    capitulo03.funcionarios f 
  WHERE 
    f.salario > 5000
)

SELECT
  *
FROM 
  funcionarios_salario_maior_5000;
  
/*
Uma subquery, ou consulta subordinada, é uma consulta SQL dentro de
outra consulta. Ela é usada para realizar operações mais complexas
e obter resultados mais específicos. Basicamente, uma subquery é como
fazer uma pergunta dentro de outra pergunta maior. Por exemplo, você
pode ter uma consulta principal que seleciona todos os clientes de
uma tabela e, dentro dessa consulta, uma subquery que seleciona
apenas os clientes que gastaram mais de uma certa quantia. A
subquery ajuda a filtrar ou fornecer informações adicionais para
a consulta principal. Subqueries podem ser no SELECT, FROM, WHERE,
HAVING, ou até mesmo no INSERT, UPDATE ou DELETE.
*/
  
/* Considerando os funcionários contratados no mês de fevereiro, retorne o nome
e departamento de quem tem maior salário
*/
  
SELECT 
  nome, 
  departamento,
  MAX(salario) AS salario
FROM 
  (
  	SELECT 
  	  *
  	FROM 
  	  capitulo03.funcionarios f
  	WHERE 
  	  EXTRACT(MONTH FROM f.data_contratacao) = 2
  ) funcionarios_fevereiro
GROUP BY 
  1, 
  2;
  
-- OU 
  
SELECT 
  nome,
  departamento,
  salario
FROM 
  capitulo03.funcionarios f
WHERE
  salario = (
	  	SELECT 
	  	  MAX(salario) AS salario
	  	FROM 
	  	  capitulo03.funcionarios f2
	  	WHERE 
	  	  EXTRACT(MONTH FROM f2.data_contratacao) = 2
	  )
