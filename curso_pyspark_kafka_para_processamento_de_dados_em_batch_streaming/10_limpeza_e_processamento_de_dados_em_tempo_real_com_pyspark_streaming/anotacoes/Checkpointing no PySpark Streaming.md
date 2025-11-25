### Checkpointing no PySpark Streaming

O checkpointing no PySpark Streaming é uma técnica utilizada para garantir a resiliência e a recuperação do sistema em caso de falhas.

Ele envolve o armazenamento periódico de informações importantes, como um estado do processamento e os dados de streaming em um local seguro, como um sistema de arquivos distribuído (por exemplo, HDFS).

Quando ocorre uma falha no sistema, o Spark pode recuperar o estado salvo no último checkpoint e retomar o processamento a partir desse ponto, evitando a perda de dados e minimizando a interrupção.

#### Existem dois tipos principais de checkpointing no PySpark Streaming:

**1. Checkpointing de Dados (Metadata Checkpointing):** Esse tipo de checkpoint armazena informações sobre o progresso do processamento, como offsets do Kafka ou outras fontes de streaming. Isso garante que o sistema saiba até onde os dados foram processados e possa continuar a partir do ponto correto em caso de falha. No entanto, ele não mantém o estado de transformações específicas ou de operações complexas.

**2. Checkpointing de Estado (State Checkpointing):** Usado em operações de Stateful Processing, este tipo de checkpoint armazena o estado completo das transformações, como contagens acumuladas ou qualquer dado que precise ser mantido entre micro-batches. Isso é especialmente útil em cenários onde o estado é mantido em operações como updateState ByKey ou map WithState.

O uso do checkpointing é recomendado para garantir a consistência e a durabilidade dos dados em pipelines de streaming, especialmente em aplicações que precisam ser resilientes e tolerantes a falhas.