## Manipulação de Dados com Pandas

A manipulação de dados com a biblioteca Pandas em Python é uma habilidade fundamental na engenharia de dados. Pandas oferece estruturas de dados poderosas e flexíveis, como o DataFrame, que facilitam a manipulação e análise de dados.

Aqui estão algumas operações essenciais que você pode realizar com Pandas:

#### Leitura e Escrita de Dados

Pandas suporta vários formatos de arquivo, como CSV, Excel, JSON, SQL, entre outros.

Leitura de Dados:
```python
pd.read_csv('arquivo.csv')

pd.read_excel('arquivo.xlsx')
```

Escrita de Dados:
```python
df.to_csv('arquivo.csv')

df.to_excel('arquivo.xlsx')
```

#### Inspeção e Limpeza de Dados

Visualizar Dados:
```python
# Para as primeiras linhas.
df.head() 

# Para as últimas.
df.tail()
```

Verificar Tipos de Dados:
```python
df.dtypes
```

Estatísticas Resumidas:
```python
df.describe()
```

Tratamento de Valores Ausentes:
```python
# Para remover.
df.dropna()

# Para substituir.
df.fillna(value)
```

Remover duplicatadas:
```python
df.drop_duplicates()
```

#### Seleção e Filtragem

Seleção de Colunas:
```python
df['coluna'] ou df[['col1', 'col2']]
```

Seleção de Linhas por Índice:
```python
# Primeira linha.
df.iloc[0]

# Por índice nomeado.
df.loc['index']
```

Filtragem Condicional
```python
df[df['coluna'] > valor]
```

#### Transformações e Agregações

Aplicar Funções:
```python
df['coluna'].apply(lambda x: x*2)
```

Agrupações e Resumos:
```python
df.groupby('coluna').sum()

df.groupby('coluna').mean()
```

Unir e Combinar Dados:
```python
pd.merge(df1, df2, on='coluna')

dfl.join(df2)

pd.concat([df1, df2])
```

#### Manipulação de Datas e Horas

Conversão de Strings para Datetime:
```python
pd.to_datetime(df['coluna'])
```

Extração de Componentes de Data:
```python
df['coluna'].dt.year
df['coluna'].dt.month
df['coluna'].dt.day
```

#### Visualização de Dados

Pandas integra-se bem com bibliotecas de visualização como Matplotlib e Seaborn, permitindo gráficos direto dos DataFrames:

Plotagem Básica:
```python
df.plot()

df['coluna'].hist()
```

#### Exemplo Prático

![Exemplo Prático](../images/image5.png 'Exemplo Prático')

Essas são apenas algumas das operações básicas que você pode realizar com Pandas.

A biblioteca é extremamente rica em funcionalidades e sua flexibilidade a torna uma ferramenta indispensável para a engenharia de dados.