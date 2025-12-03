Zookeeper x Apache Kafka Raft (KRaft)

ZooKeeper e Apache Kafka Raft (KRaft) são tecnologias relacionadas à coordenação e gerenciamento de clusters no Apache Kafka, mas apresentam diferenças significativas em arquitetura, funcionalidade e eficiência. A introdução do KRaft busca superar algumas limitações do uso do ZooKeeper, oferecendo uma abordagem mais integrada e simplificada.

#### ZooKeeper no Apache Kafka

O Zookeeper é uma ferramenta externa de coordenação distribuída historicamente usada pelo Apache Kafka para gerenciar:

- Metadados do cluster: Informações sobre tópicos, partições e réplicas.

- Liderança de partições: Coordena qual broker será o líder para cada partição.

- Detecção de falhas: Monitora os brokers e redistribui as responsabilidades em caso de falhas.

- Configuração dinâmica: Mantém registros das configurações e mudanças de estado.

#### Limitações do uso do ZooKeeper:

- Dependência externa: Kafka depende de um cluster ZooKeeper separado, o que aumenta a complexidade de implantação, configuração e manutenção.

- Latência: A comunicação entre Kafka e ZooKeeper pode introduzir latências em algumas operações administrativas.

- Arquitetura não unificada: Manter um sistema externo para coordenação pode ser menos eficiente e mais suscetível a falhas ou problemas de sincronização.

#### Apache Kafka Raft (KRaft)

O KRaft, introduzido a partir do Apache Kafka 2.8, substitui o ZooKeeper, implementando um protocolo baseado no algoritmo Raft. O Raft é um protocolo de consenso distribuído projetado para simplicidade e eficiência, garantindo a consistência entre réplicas.

#### Como o Kraft funciona:

- Coordenador embutido: O Kafka agora gerencia seus próprios metadados e coordenação internamente, eliminando a necessidade de um sistema externo como o ZooKeeper.

- Liderança e replicação: O KRaft utiliza o Raft para eleger líderes e sincronizar metadados entre brokers, garantindo alta disponibilidade e consistência.

- Arquitetura simplificada: Brokers Kafka específicos atuam como "controllers", gerenciando as mesmas funções que antes eram responsabilidade do ZooKeeper.