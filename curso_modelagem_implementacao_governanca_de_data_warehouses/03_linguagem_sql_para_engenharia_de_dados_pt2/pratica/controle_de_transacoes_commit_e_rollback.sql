/* Controle de Transações com BEGIN, Commit e Rollback

Esses comandos estão dentro do grupo de comandos TCL.
Então vamos a prática para ver como eles funcionam.

Esse é um grupo de comando que é responsável pelo controle
de transação, que pode ser para salvar alterações no banco
de dados (COMMIT) ou para desfazer alterações no banco de dados (ROLLBACK).

BEGIN: Este comando inicia uma nova transação. Qualquer operação
de banco de dados executada após o comando BEGIN será considerada
parte dessa transação até que seja confirmada ou revertida. Isso
permite agrupar várias operações para que todas sejam aplicadas
de uma vez ou nenhuma delas, garantindo a atomicidade da transação.

COMMIT: Se todas as operações dentro da transação forem executadas
com sucesso, o comando COMMIT é utilizado para confirmar as alterações 
no banco de dados. Após o commit, as alterações se tornam permanentes 
e visíveis para outras transações.

ROLLBACK: Se ocorrer um erro em qualquer operação dentro da transação, 
ou se for necessário desfazer as operações por qualquer motivo, 
o comando ROLLBACK é utilizado. Isso reverte todas as alterações 
feitas na transação até o ponto em que o comando BEGIN foi emitido, 
garantindo que o banco de dados retorne ao estado anterior à transação.

Importante: O comando ROLLBACK não deve ser executado após um COMMIT,
pois uma vez que as alterações foram confirmadas, elas não podem
ser revertidas. O uso do ROLLBACK é apropriado antes de um COMMIT em caso de erro.
*/

-- Início da Transação
BEGIN;

-- Inserindo um novo funcionário

INSERT INTO capitulo04.funcionarios (id_funcionario, nome, departamento, data_contratacao, salario)
VALUES (12, 'Júnior Araújo', 'Desenvolvimento', '2024-01-01', 15000);

-- Tentativa de inserir um projeto associado ao funcionário

INSERT INTO capitulo04.projetos (id_projeto, nome_projeto, id_funcionario)
VALUES (7777, 'Projeto Coleta de Dados de API', '12');

-- Commit: Confirmando as alterações no banco de dados
COMMIT;

-- Rollback: Desfazendo as alterações em caso de erro ou necessidade
ROLLBACK;