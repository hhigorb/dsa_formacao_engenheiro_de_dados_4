-- Mínimo. Máximo, Média, Soma e Contagem

SELECT 
  MIN(salario),
  MAX(salario),
  ROUND(AVG(salario), 2),
  SUM(salario),
  COUNT(salario)
FROM 
  capitulo03.funcionarios f 
  
/*
Agrupamentos

Sempre que for realizado algum agrupamento, como
fazer a média por departamento, em SQL é obrigatório
agrupar todas as colunas que não possuem funções
de agregação (min, max, avg, sum, count).
*/
  
-- Média salarial geral
  
SELECT 
  departamento,
  ROUND(AVG(salario), 2) AS media_salario_departamento
FROM 
  capitulo03.funcionarios f 
GROUP BY 
  departamento