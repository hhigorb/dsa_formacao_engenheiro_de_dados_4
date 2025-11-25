### Conceitos fundamentos do PySpark Streaming

PySpark Streaming é uma extensão do PySpark que permite processar fluxos contínuos de dados em tempo real, dividindo-os em micro-batches para processamento distribuído.

Ele integra a capacidade do Apache Spark de lidar com grandes volumes de dados de maneira paralela e escalável, aplicando-a a dados que chegam de fontes como Kafka, sockets ou sistemas de filas de mensagens.

#### Principais Conceitos do PySpark Streaming

**1. DStream (Discretized Stream):** Representa um fluxo contínuo de dados, onde os dados em tempo real são divididos em pequenos intervalos de tempo chamados micro-batches. Cada micro-batch é tratado como um RDD (Resilient Distributed Dataset), e o processamento é feito de forma distribuída.

**2. Micro-batch processing:** PySpark Streaming processa dados em pequenas porções chamadas micro-batches. Isso significa que, embora esteja lidando com fluxos contínuos de dados, ele OS agrupa em intervalos discretos para processamento, o que facilita a execução de operações paralelas e distribuídas.

**3. Receivers:** São responsáveis por capturar dados de fontes externas, como Kafka, sockets ou sistemas de filas de mensagens, e repassá-los para o sistema de streaming. Os Receivers podem ser confiáveis ou não, dependendo da necessidade de confirmar a entrega de dados.

**4. Window operations:** Permitem agregar e analisar os dados dentro de uma janela de tempo. Isso possibilita realizar cálculos e gerar insights sobre os dados que chegam em diferentes intervalos temporais, como somas, médias, ou contagens de
eventos.

**5. Stateful Operations:** PySpark Streaming permite manter o estado dos dados entre os micro-batches. Isso é útil para cenários onde você precisa acompanhar informações em tempo real, como contagens cumulativas ou detecção de padrões.

**6. Checkpointing:** O PySpark Streaming utiliza checkpoints para armazenar dados intermediários e garantir a resiliência em casos de falhas. Isso é importante em cenários críticos onde é necessário recuperar o estado e continuar o processamento sem perda de dados.

Esses conceitos formam a base para criar pipelines de processamento de dados em tempo real com PySpark Streaming, oferecendo flexibilidade para lidar com grandes volumes de dados com baixa latência.