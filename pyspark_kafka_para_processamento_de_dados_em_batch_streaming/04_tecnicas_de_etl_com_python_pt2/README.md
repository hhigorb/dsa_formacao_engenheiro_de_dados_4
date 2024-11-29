### Comandos que devem ser executados no terminal ou prompt de comando:

Abra o terminal ou prompt de comando e navegue até a pasta onde estão os arquivos do projeto. Execute os comandos abaixo:

### Crie a rede Docker 

Crie a rede Docker para os containers Spark e PostgreSQL se comunicarem entre si:

```bash
docker network create my_network
```

### Gera o arquivo JSON

```bash
python3 01-gera_json.py
```

### Crie a tabela no PostgreSQL

02-cria_tabela.sql

### Executa o Job sem Driver JDBC (gera erro)
spark-submit é a forma de enviar um job para o Spark. O job é sempre enviado para o nó master, e ele distribui as tarefas para os workers (paralelizado).

O parâmetro **--deploy-mode** define onde o driver do Spark será executado:

**client:** O driver roda na máquina local, ideal para testes e desenvolvimento. Pode ser limitado em clusters grandes.

**cluster:** O driver roda no cluster, recomendado para produção, com maior eficiência em jobs longos e complexos.

A escolha depende do ambiente (local vs. produção) e do gerenciador de cluster usado (YARN, Kubernetes, etc.).

```bash
docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/projeto1.py
```

### Executa o Job com Driver JDBC

```bash
docker exec dsa-pyspark-master spark-submit --jars data/postgresql-42.7.4.jar --deploy-mode client ./apps/projeto1.py
```
