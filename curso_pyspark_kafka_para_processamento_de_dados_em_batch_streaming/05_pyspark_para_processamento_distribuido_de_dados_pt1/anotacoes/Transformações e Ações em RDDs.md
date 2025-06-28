### Transformações e Ações em RDDs

No Apache Spark, as operações realizadas em RDDs (Resilient Distributed Datasets) são categorizadas em duas classes principais: Transformações e Ações. Essas operações são fundamentais para entender como o Spark processa dados.

##### Transformações

Transformações são operações que criam um novo RDD a partir de um RDD existente. Elas são aplicadas de forma "lazy", ou seja, não são executadas imediatamente. A execução ocorre apenas quando uma ação é realizada.

**Características:**

- **Lazy Evaluation:** A transformação define uma nova operação no DAG (Directed Acyclic Graph) do Spark, mas não é computada até que seja necessária.

- **Imutabilidade:** Cada transformação cria um novo RDD, pois os RDDs são imutáveis. Isso significa que uma vez criados, eles não podem ser alterados.

Exemplos Comuns:

**.map():** Retorna um novo RDD aplicando uma função a cada elemento do RDD original.

**.filter():** Cria um novo RDD contendo apenas os elementos que satisfazem uma condição.

**.flatMap():** Similar ao map, mas cada elemento de entrada pode ser mapeado para o ou mais elementos de saída.

**.union():** Retorna um novo RDD contendo elementos de ambos os RDDs.

**.distinct():** Elimina elementos duplicados no RDD.

##### Ações

Ações são operações que devolvem um valor final após processar os dados de um RDD. Ao contrário das transformações, as ações forçam a execução das operações de RDDs.

**Características:**

- **Triggering Computations:** As ações são responsáveis por iniciar a computação no Spark, ativando a execução do DAG.

- **Produzindo Resultados:** Ao final de uma ação, o Spark retorna um resultado concreto, que pode ser um valor, uma coleção de valores ou a escrita em um sistema de armazenamento.

**Exemplos Comuns:**

**.collect():** Retorna todos os elementos do RDD como um array. Cuidado com o uso em RDDs muito grandes, pois pode causar problemas de memória.

**.count():** Retorna o número de elementos no RDD.

**.take(n):** Retorna um array com os primeiros n elementos do RDD.

**.reduce (func):** Agrega os elementos do RDD usando uma função que recebe dois argumentos e retorna um novo valor.

**.saveAsTextFile(path):** Escreve o RDD em um arquivo de texto no sistema de arquivos, HDFS ou outro sistema de armazenamento compatível.

**Fluxo de Trabalho**

No fluxo de trabalho do Spark, normalmente as transformações são usadas para preparar e moldar os dados, enquanto as ações são utilizadas para obter resultados ou saídas concretas. A combinação dessas operações permite que o Spark processe grandes volumes de dados de forma eficiente, aproveitando a execução distribuída e o paralelismo.