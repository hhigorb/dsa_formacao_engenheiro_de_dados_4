### Armazenamento Distribuído

O armazenamento distribuído refere-se a um sistema de armazenamento de dados que utiliza múltiplas localizações físicas, muitas vezes espalhadas por várias máquinas, locais geográficos ou até as mesmas infraestruturas de armazenamento.

O objetivo principal é garantir a disponibilidade, a escalabilidade e a redundância dos dados.

#### Principais pontos sobre o armazenamento distribuído


**Redundância e Tolerância a Falhas:** Armazenar dados em múltiplos pontos reduz o risco de perda de dados devido a falhas de hardware, desastres naturais ou outros problemas em uma localização única. Isso ajuda na recuperação de desastres e na continuidade dos negócios.

**Escalabilidade:** Sistemas de armazenamento distribuídos podem ser facilmente escalados adicionando mais nós ao sistema. Isso permite que as organizações aumentem a capacidade de armazenamento de acordo com a necessidade, sem interrupção significativa.

**3. Balanceamento de Carga:** A distribuição dos dados permite que os sistemas equilibrem a carga entre vários servidores, melhorando o desempenho e a eficiência na resposta às solicitações dos usuários.

**Acesso Concorrente:** Permite que múltiplos usuários ou aplicações acessem os dados ao mesmo tempo de diferentes localizações, melhorando assim a colaboração e a eficiência operacional.

**Consistência dos Dados:** Em ambientes distribuídos, manter a consistência dos dados entre múltiplas cópias pode ser solicitada. Muitos sistemas implementam modelos de consistência específicos, como consistência eventual ou consistência forte, para gerenciar como e quando as atualizações nos dados são propagadas através de nós.

Exemplos de tecnologias que utilizam armazenamento distribuído incluem sistemas de arquivos distribuídos como o Hadoop Distributed File System (HDFS), bases de dados como Cassandra e MongoDB e sistemas de armazenamento de objetos como Amazon S3.