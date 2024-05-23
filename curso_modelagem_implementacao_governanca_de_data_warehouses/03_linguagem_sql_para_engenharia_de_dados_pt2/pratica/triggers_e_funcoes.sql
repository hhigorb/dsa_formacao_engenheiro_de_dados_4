/*
Função que vai verificar se um projeto está sendo cadastrado sem funcionário associado
(Se o id_funcionario está nulo)
*/

CREATE OR REPLACE FUNCTION capitulo04.verifica_funcionario_projeto()
RETURNS TRIGGER AS $$
BEGIN 
	-- Verifica se o ID do funcionário associado ao projeto é nulo
	IF NEW.id_funcionario IS NULL THEN 
		RAISE EXCEPTION 'Não é permitido inserir um projeto sem um funcionário associado.';
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/*
Trigger para monitorar a tabela de projetos. Qualquer tentativa de insert, ela irá 
executar a função para cada linha.
*/

CREATE OR REPLACE TRIGGER trg_verifica_funcionario_projeto
BEFORE INSERT ON capitulo04.projetos 
FOR EACH ROW EXECUTE FUNCTION capitulo04.verifica_funcionario_projeto();

/*
Validando se a Trigger funciona (tentativa de inserir um projeto sem 
funcionário associado (id_funcionario)
*/

INSERT INTO capitulo04.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (6000, 'Pipeline e Integração de Dados', null);


