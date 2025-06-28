-- Projeto 1 - Pipeline PySpark Para Extrair, Transformar e Carregar Arquivos JSON em Banco de Dados

-- Cria a tabela dsa_usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    nome TEXT,
    idade INTEGER,
    salario INTEGER,
    cidade TEXT
)
