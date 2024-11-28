### Comandos que devem ser executados no terminal ou prompt de comando:

Abra o terminal ou prompt de comando e navegue até a pasta onde estão os arquivos do projeto. Execute os comandos abaixo:

##### Gera o arquivo JSON
python3 01-gera_json.py

#### Crie a tabela no PostgreSQL
02-cria_tabela.sql

#### Executa o Job sem Driver JDBC (gera erro)
docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/projeto1.py

#### Executa o Job com Driver JDBC
docker exec dsa-pyspark-master spark-submit --jars drivers/postgresql-42.7.4.jar --deploy-mode client ./scripts/projeto1.py
