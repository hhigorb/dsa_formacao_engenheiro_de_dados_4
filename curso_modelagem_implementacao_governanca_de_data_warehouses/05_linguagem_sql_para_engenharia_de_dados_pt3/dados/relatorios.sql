-- Lab 1 - Automação da Infraestrutura de Consultas SQL com Terraform e BigQuery no Google Cloud Platform
-- Relatórios do DW

-- Consulta Simples - Listar o total de vendas por cliente

SELECT c.Nome_Cliente, ROUND(SUM(f.valor_venda),2) AS Total_Vendas
FROM `modelagem-dw-lab1-431801.dsa_dw_dataset.tbClienteDSA` c
JOIN `modelagem-dw-lab1-431801.dsa_dw_dataset.tbFatoDSA` f ON c.tbClienteDSA_id = f.tbClienteDSA_id
GROUP BY c.Nome_Cliente;


-- Consulta Intermediária - Listar o total de vendas por categoria para cliente do Tipo_1

SELECT p.Categoria_Produto, ROUND(SUM(f.valor_venda),2) AS Total_Vendas
FROM `modelagem-dw-lab1-431801.dsa_dw_dataset.tbProdutoDSA` p
JOIN `modelagem-dw-lab1-431801.dsa_dw_dataset.tbFatoDSA` f ON p.tbProdutoDSA_id = f.tbProdutoDSA_id
JOIN `modelagem-dw-lab1-431801.dsa_dw_dataset.tbClienteDSA` c ON f.tbClienteDSA_id = c.tbClienteDSA_id
WHERE c.Tipo_Cliente = 'Tipo_1'
GROUP BY p.Categoria_Produto;


-- Consulta Avançada - Produtos com média de vendas superior a 600 no ano de 2023

SELECT p.Nome_Produto, ROUND(AVG(f.valor_venda),2) AS Media_Vendas
FROM `modelagem-dw-lab1-431801.dsa_dw_dataset.tbClienteDSA` c
JOIN `modelagem-dw-lab1-431801.dsa_dw_dataset.tbFatoDSA` f ON c.tbClienteDSA_id = f.tbClienteDSA_id
JOIN `modelagem-dw-lab1-431801.dsa_dw_dataset.tbProdutoDSA` p ON f.tbProdutoDSA_id = p.tbProdutoDSA_id
WHERE f.data BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY p.Nome_Produto
HAVING ROUND(AVG(f.valor_venda),2) > 600
ORDER BY Media_Vendas DESC;
