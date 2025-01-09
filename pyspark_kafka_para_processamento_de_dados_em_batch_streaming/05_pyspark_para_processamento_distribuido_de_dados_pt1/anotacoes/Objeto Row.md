### Objeto Row

Um **objeto Row** é uma estrutura que representa uma única linha em um DataFrame. Ele é similar a uma linha em uma planilha, onde cada célula contém um valor de dado.

Cada **Row** possui um conjunto de atributos que representam as colunas do DataFrame. Você pode acessar os valores de um atributo usando a notação de ponto (por exemplo, **row.nome**) ou a notação de dicionário (por exemplo, **row['nome']**).

Os atributos em um **Row** são ordenados da mesma forma que as colunas no DataFrame.

Uma vez criado, um **Row** não pode ser modificado.

**O objeto Row é útil para várias tarefas, tais como:**

- **Iteração:** Você pode iterar sobre as linhas de um DataFrame usando um loop for.

- **Filtragem:** Você pode filtrar linhas de um DataFrame com base em seus valores.

- **Agregação:** Você pode usar funções de agregação para calcular valores estatísticos sobre as linhas de um DataFrame.

- **Manipulação de dados:** Você pode usar o objeto Row para realizar diversas operações de manipulação de dados, como adicionar novas colunas, remover linhas e modificar valores.

**Exemplos de como usar um objeto Row com PySpark:**

```python
# Criando um Row
row = Row(nome="Alice", idade=20)

# Acessando o valor de um atributo
nome = row.nome

# Acessando o valor de um atributo usando a notação de dicionário

idade = row["idade"]

# Iterando sobre as linhas de um DataFrame
for row in df.rdd.collect():
    print(row.nome)

# Filtrando linhas de um DataFrame
df = df.filter(row.idade > 18)

# Adicionando uma nova coluna a um DataFrame
df = df.withColumn("altura", lit(1.80))
```