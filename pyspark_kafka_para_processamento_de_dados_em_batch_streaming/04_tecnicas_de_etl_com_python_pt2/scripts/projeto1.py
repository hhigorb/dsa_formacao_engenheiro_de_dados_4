"""
Projeto 1:
Pipeline PySpark para Extrair, Transformar e Carregar
Arquivos JSON em Banco de Dados PostgreSQL
"""

# Imports
from pyspark.sql import SparkSession, types
from pyspark.sql.functions import col, regexp_replace

# Inicializa a SparkSession, que é a forma de se comunicar com o cluster
spark = SparkSession.builder \
    .appName("Projeto1") \
    .getOrCreate()

# Definindo o schema dos dados
schema = types.StructType([
    types.StructField("nome", types.StringType(), True),
    types.StructField("idade", types.IntegerType(), True),
    types.StructField("email", types.StringType(), True),
    types.StructField("salario", types.IntegerType(), True),
    types.StructField("cidade", types.StringType(), True)
])

df = spark.read.json("data/usuarios.json", schema=schema)

# Remove a coluna "email" (filtro no nível de coluna)
df = df.drop("email")

# Filtra os dados (filtro no nível de linha)
df = df.filter(
    (col("idade") > 18) &
    (col("cidade") == "Natal") &
    (col("salario") < 7000)
)

# Verifica o schema e os dados
df.printSchema()
df.show()

# Verifica se o DataFrame está vazio ou não
if df.rdd.isEmpty():
    print("Nenhum dado encontrado no arquivo JSON. "
          "Verifique o arquivo e tente novamente.")
else:
    # Limpa os dados removendo "@" (se existir) da coluna "nome"
    df = df.withColumn("nome", regexp_replace(col("nome"), "@", ""))

    # Salva os dados no banco de dados PostgreSQL
    df.write \
        .format("jdbc") \
        .option("url", "jdbc:postgresql://localhost:5432/dev_db") \
        .option("dbtable", "usuarios") \
        .option("user", "root") \
        .option("password", "root") \
        .option("driver", "org.postgresql.Driver") \
        .mode("overwrite") \
        .save()

    print("Dados salvos com sucesso no banco de dados PostgreSQL.")
