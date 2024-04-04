-- Criar um schema em um banco de dados

create schema capitulo03 authorization root

/* Instruções DDL (Data Definition Language)
CREATE, ALTER, DROP */

-- Criação de tabelas

create table capitulo03.funcionarios (
	id_funcionario SERIAL primary key, -- Chave primária é o identificador único de cada linha da tabela.
	nome VARCHAR(255),
	departamento VARCHAR(255),
	salario DECIMAL(10, 2)

);
