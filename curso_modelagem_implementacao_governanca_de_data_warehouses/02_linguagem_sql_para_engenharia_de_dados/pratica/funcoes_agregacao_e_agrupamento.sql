-- Mínimo. Máximo, Média, Soma e Contagem

SELECT 
  MIN(salario),
  MAX(salario),
  ROUND(AVG(salario), 2),
  SUM(salario),
  COUNT(salario)
FROM 
  capitulo03.funcionarios f;
  
/*
Agrupamentos

Sempre que for realizado algum agrupamento, como
fazer a média por departamento, em SQL é obrigatório
agrupar todas as colunas que não estão em funções
de agregação (min, max, avg, sum, count).
*/
  
-- Média salarial geral por departamento (É possível agrupar pelo nome da coluna ou o número dela, ex: GROUP BY 1)
  
SELECT 
  departamento,
  ROUND(AVG(salario), 2) AS media_salario_departamento
FROM 
  capitulo03.funcionarios f 
GROUP BY 
  departamento;
  
-- Com ordenação (É possível ordenar pelo nome da coluna ou o número dela, ex: ORDER BY 1)
  
SELECT 
  departamento,
  ROUND(AVG(salario), 2) AS media_salario_departamento
FROM 
  capitulo03.funcionarios f 
GROUP BY 
  departamento
ORDER BY
  departamento DESC; -- DESC / ASC (decrescente ou crescente)

-- Média salarial por departamento somente se a média for maior que 4000, ordenado por departamento
  
/* 
O SQL não permite o uso de funções de agregação diretamente no WHERE devido à ordem de execução das cláusulas.
Portanto, quando precisamos filtrar com base em uma função de agregação, usamos o HAVING. Resumindo,
o HAVING é um filtro aplicado para e após o agrupamento, já o WHERE é usado para filtrar LINHAS INDIVIDUAIS.
*/

SELECT 
  departamento,
  AVG(salario) AS media_salario_departamento
FROM 
  capitulo03.funcionarios f 
GROUP BY 
  departamento
HAVING AVG(salario) > 4000
ORDER BY 
  departamento;

/*
Média salarial por departamento somente se a média for maior que 4000 e somente se o nome do departamento
conter a palavra 'Engenharia' ordenado por departamento 
*/
 
SELECT 
  departamento,
  AVG(salario) AS media_salario_departamento
FROM 
  capitulo03.funcionarios f
WHERE 
  departamento LIKE '%Engenharia%'
GROUP BY 
  departamento 
HAVING AVG(salario) > 4000
ORDER BY
  departamento;

