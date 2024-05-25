/*

Auditoria de dados é o processo de verificar a precisão, integridade e
consistência dos dados em um sistema. Isso envolve revisar registros, 
identificar erros ou discrepâncias, garantir conformidade com políticas
e regulamentos, e assegurar que os dados sejam confiáveis para tomadas
de decisão e análises.

Vamos criar uma Trigger que faz uma auditoria na tabela de funcionários
para sabermos quando haverá modificação de salários dos funcionários.
*/

-- Triggers para Auditoria de Dados

CREATE TABLE capitulo04.historico_salarios (
	id_funcionario INT,
	salario_antigo DECIMAL(10, 2),
	data_mudanca TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- Criando a Function 

CREATE OR REPLACE FUNCTION capitulo04.salva_salario_antigo()
RETURNS TRIGGER AS $$ 
BEGIN 
	-- Insere o salário antigo na tabela historico_salarios
	IF OLD.salario IS DISTINCT FROM NEW.salario THEN 
		INSERT INTO capitulo04.historico_salarios (id_funcionario, salario_antigo)
		VALUES (OLD.id_funcionario, OLD.salario);
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Criando a Trigger para monitorar a tabela de funcionários

CREATE TRIGGER trg_salva_salario_antigo
BEFORE UPDATE ON capitulo04.funcionarios 
FOR EACH ROW EXECUTE FUNCTION capitulo04.salva_salario_antigo();

-- Testando se a Trigger está funcionando 

UPDATE capitulo04.funcionarios 
SET salario = 50000
WHERE id_funcionario = 1;

-- Query na tabela de auditoria

SELECT 
  *
FROM 
  capitulo04.historico_salarios hs;
