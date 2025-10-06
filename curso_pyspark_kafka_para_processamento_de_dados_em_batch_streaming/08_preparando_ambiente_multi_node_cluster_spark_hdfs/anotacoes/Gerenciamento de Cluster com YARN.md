### Gerenciamento de Cluster com YARN

O YARN (Yet Another Resource Negotiator) é uma peça fundamental do ecossistema Hadoop, atuando como um sistema de gerenciamento de recursos que permite que várias aplicações de processamento de dados compartilhem um cluster comum de forma eficiente.

O Apache Spark, quando executado no YARN, aproveita essa capacidade para gerenciar recursos de maneira dinâmica e escalável.

#### Componentes do YARN

**Gerenciador de Recursos (RM):**

O RM é o serviço que aloca recursos e gerencia os aspectos de alto nível do cluster, como o agendamento de empregos e o monitoramento de recursos.

Ele possui dois componentes principais: o Scheduler, que aloca recursos entre todas as aplicações; e o Applications Manager, que gerencia o ciclo de vida das aplicações submetidas ao cluster.

**Gerenciador de Nós (NM):**

Cada máquina no cluster tem um NM, que é responsável por monitorar o consumo de recursos (CPU, memória, disco, rede) e reportar ao ResourceManager.

O NM também é responsável por gerenciar os contêineres de aplicações que executam as tarefas processadas.

#### Integração do Spark com YARN

**Modo Cliente vs. Modo Cluster:**

No Modo Cliente, o driver do Spark é executado na máquina local que submeteu a aplicação, enquanto os executores são gerenciados pelo YARN no cluster. Isso é útil para aplicações interativas como o uso do Spark Shell.

No Modo Cluster, tanto o driver quanto os executores são executados dentro de contêineres gerenciados pelo YARN no cluster. Esse modo é preferido para trabalhos de produção ou aplicações que não desativem a interatividade.

**Submissão de Empregos:**

Os jobs do Spark são submetidos ao YARN através do comando spark-submit com a configuração --master yarn. Durante a submissão, você pode especificar recursos como quantidade de memória e núcleos de CPU para o driver e para os executores.

**Alocação Dinâmica:**

O Spark no YARN suporta alocação dinâmica de executores, o que permite que o Spark adicione ou remova executores dinamicamente com base na carga de trabalho. Isso ajuda a melhorar a utilização de recursos do cluster.

Para habilitar a alocação dinâmica, você deve configurar a propriedade spark.dynamicAllocation.enabled como true e garantir que o serviço de shuffle externo do Spark esteja habilitado.

#### Vantagens do uso do YARN

**Eficiência:** O YARN permite que múltiplas aplicações de diferentes frameworks compartilhem um único cluster, o que melhora a utilização de recursos.

**Escalabilidade:** O YARN facilita a gestão de grandes clusters, permitindo que as organizações escalem suas operações de processamento de dados de acordo com a demanda.

**Flexibilidade:** O YARN suporta uma variedade de aplicações, não se limitando apenas ao Spark, ou fornece facilidade para usar o mesmo cluster para diferentes tecnologias de processamento de dados.

O gerenciamento de um cluster Spark com YARN requer uma compreensão das necessidades de recursos de suas aplicações e a capacidade de configurar e ajustar as propriedades do Spark e do YARN para melhorar tanto o desempenho quanto a utilização de recursos