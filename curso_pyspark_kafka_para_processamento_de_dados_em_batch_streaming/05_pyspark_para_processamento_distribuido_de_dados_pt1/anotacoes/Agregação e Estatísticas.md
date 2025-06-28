### Agregação e Estatísticas

#### Agregação

Agregação no PySpark se refere ao processo de combinar valores de várias linhas em um único valor. Isso é útil para resumir grandes conjuntos de dados e obter insights sobre as informações.

O PySpark fornece diversas funções de agregação para calcular valores estatísticos como soma, média, mediana, desvio padrão, máximo, mínimo, quartis, etc.

**Funções de Agregação:**

**Funções básicas:**

- **sum()** - Soma os valores de uma coluna.

- **mean()** - Calcula a média dos valores de uma coluna.

- **min()** - Encontra o valor mínimo de uma coluna.

- **max()** - Encontra o valor máximo de uma coluna.

**Funções avançadas:**

- **stddev()** - Calcula o desvio padrão dos valores de uma coluna.

- **skewness()** - Calcula a assimetria dos valores de uma coluna.

- **kurtosis()** - Calcula a curtose dos valores de uma coluna.

- **quantile()** - Calcula os quantis de uma coluna.

- **approxQuantile()** - Calcula os quantis aproximados de uma coluna.

**Exemplos de Funções de Agregação no PySpark:**

```python
# Soma de todas as idades
df.agg({"idade": "sum"})

# Média da altura por gênero
df.groupby("genero").agg({"altura": "mean"})

# Quantis da coluna "salario"
df.agg({"salario": "quantile", "quantiles": [0.25, 0.5, 0.75]})
```