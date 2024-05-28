/*
Chave primária (Primary Key - PK) é o identificador único de cada linha da tabela.

Chave estrangeira (Foreign Key - FK) é um campo que cria um vínculo entre duas tabelas.
Ela refere-se à chave primária em outra tabela, garantindo a integridade referencial.
*/

-- Criar um schema em um banco de dados

CREATE SCHEMA capitulo03 AUTHORIZATION root;

-- Criar um banco de dados

CREATE DATABASE nome_do_banco;

/* Instruções DDL (Data Definition Language)
CREATE, ALTER, DROP */

-- Criação de tabelas

CREATE TABLE capitulo03.funcionarios (
	id_funcionario SERIAL primary key,
	nome VARCHAR(255),
	departamento VARCHAR(255),
	salario DECIMAL(10, 2)
);
	
-- Alteração da estrutura da tabela
	
ALTER TABLE capitulo03.funcionarios 
ALTER COLUMN departamento TYPE CHARACTER(50);

ALTER TABLE capitulo03.funcionarios 
ADD COLUMN dt_contratacao DATE;

-- Exclusão de tabela

DROP TABLE capitulo03.funcionarios;
