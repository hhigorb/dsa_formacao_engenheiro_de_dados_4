-- Stored Procedure que retorna o salário de cada funcionário com argumento de 5%

CREATE OR REPLACE PROCEDURE capitulo04.aumenta_salario()
LANGUAGE plpgsql
AS $$
DECLARE 
	cur CURSOR FOR SELECT 
				     id_funcionario,
				     nome,
				     salario,
				     salario * 1.05 AS salario_novo
				   FROM 
				     capitulo04.funcionarios;
BEGIN 
	FOR record IN cur LOOP 
		RAISE NOTICE 'Funcionário: %, Salário Atual: %, Novo Salário: %',
					  record.nome, record.salario, record.salario_novo;
	END LOOP;
END;
$$;

-- Executando a Procedure

CALL capitulo04.aumenta_salario();
