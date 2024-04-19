CREATE SCHEMA capitulo04 AUTHORIZATION root;

CREATE TABLE capitulo04.funcionarios (
	id_funcionario INT PRIMARY KEY,
	nome VARCHAR(50),
	departamento VARCHAR(50),
	data_contratacao DATE,
	salario DECIMAL(10, 2)
);

CREATE TABLE capitulo04.projetos (
	id_projeto INT PRIMARY KEY,
	nome_projeto VARCHAR(100),
	departamento VARCHAR(50),
	id_funcionario INT REFERENCES capitulo04.funcionarios(id_funcionario)
);

INSERT INTO capitulo04.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES
    (1, 'João Silva', 'Ciência de Dados', '2023-01-15', 7000.00),
    (2, 'Maria Santos', 'Engenharia de Dados', '2022-06-20', 8000.00),
    (3, 'Carlos Oliveira', 'Análise de Dados', '2021-11-10', 6500.00),
    (4, 'Ana Souza', 'Desenvolvimento Backend', '2024-02-05', 9000.00),
    (5, 'Pedro Almeida', 'Desenvolvimento Frontend', '2022-09-30', 7500.00),
    (6, 'Mariana Lima', 'Desenvolvimento Mobile', '2023-04-18', 8500.00),
    (7, 'Lucas Ferreira', 'Engenharia de Dados', '2023-07-25', 8200.00),
    (8, 'Fernanda Costa', 'Ciência de Dados', '2024-03-12', 7200.00),
    (9, 'Gustavo Santos', 'Analise de Dados', '2022-02-08', 6800.00),
    (10, 'Camila Oliveira', 'Desenvolvimento Mobile', '2021-12-01', 8000.00);
   
INSERT INTO capitulo04.projetos (id_projeto, nome_projeto, departamento, id_funcionario)
VALUES
    (1, 'Sistema de Análise de Dados', 'Ciência de Dados', 1),
    (2, 'Plataforma de Engenharia', 'Engenharia', 2),
    (3, 'Dashboard de Análise Financeira', 'Análise', NULL),
    (4, 'Backend para Sistema de Vendas', 'Backend', 4),
    (5, 'Website Institucional', 'Frontend', 5),
    (6, 'App de Gerenciamento de Tarefas', 'Mobile', NULL),
    (7, 'Sistema de Controle de Estoque', 'Engenharia', 7),
    (8, 'Modelo Preditivo de Vendas', 'Ciência de Dados', 8),
    (9, 'Análise de Mercado', 'Analise', NULL),
    (10, 'App de Compras Online', 'Mobile', 10);
   
