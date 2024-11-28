# PySpark e Apache Kafka Para Processamento de Dados em Batch e Streaming
# Preparação do Ambiente de Trabalho com Python e PySpark
# Configuração do Cluster PySpark

# Fazer o build da imagem Docker
docker build -t dsa-pyspark-image .

# Criar e Inicializar o Cluster
docker compose -f docker-compose.yml up -d --scale spark-worker=2

# Spark Master
http://localhost:9091

# History Server
http://localhost:18081