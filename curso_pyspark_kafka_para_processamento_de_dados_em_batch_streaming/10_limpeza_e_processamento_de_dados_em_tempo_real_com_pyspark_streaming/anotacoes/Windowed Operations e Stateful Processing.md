### Windowed Operations e Stateful Processing.md

Windowed Operations e Stateful Processing são dois conceitos importantes no processamento de streams no PySpark Streaming, permitindo agregar e acompanhar dados ao longo do tempo:

**Windowed Operations:**

Windowed operations permitem processar e agregar dados que chegam ao longo de uma janela de tempo específica.

Isso é útil quando você quer analisar o comportamento de dados em um intervalo de tempo contínuo, como calcular a média, soma ou contagem de eventos dentro de uma janela de segundos ou minutos.

Os principais aspectos dessas operações são:

**1. Janela de Tempo (Window):** Define o intervalo de tempo em que os dados serão agrupados e processados. Por exemplo, uma janela de 5 minutos significa que os dados recebidos em um intervalo de 5 minutos serão processados juntos.

**2. Deslizamento da Janela (Sliding Interval):** Refere-se ao intervalo em que a janela será recalculada. Por exemplo, se uma janela tem um deslizamento de 2 minutos, novos dados serão agregados e processados a cada 2 minutos.

**3. Aplicação:** Operações comuns em janelas incluem contagens, somas, médias, ou qualquer operação de agregação. Isso permite, por exemplo, monitorar tendências ou padrões que se repetem em intervalos regulares de tempo.

**Stateful Processing:**

Stateful Processing permite manter o estado entre micro-batches, ou seja, você pode rastrear e acumular informações ao longo do tempo, o que é essencial para determinados tipos de análise de streams, como contagem cumulativa ou detecção de padrões que se estendem além de uma única janela de tempo.

**1. Atualização de Estado (updateState ByKey):** Permite manter um estado associado a cada chave de um stream. Por exemplo, se você está contando eventos por usuário, pode atualizar a contagem de eventos de cada usuário à medida que novos dados chegam. Esse estado é mantido entre micro-batches.

**2. MapWithState:** Uma API mais avançada que permite rastrear estados complexos e associar transformações adicionais a cada chave. Isso oferece flexibilidade para definir o que significa "estado" para sua aplicação, como a contagem de eventos, valores acumulados ou até mesmo estados personalizados definidos pelo desenvolvedor.

**3. Checkpointing:** Em Stateful Processing é importante usar checkpoints para garantir que, em caso de falhas, o estado possa ser recuperado e o processamento continue sem perda de dados. Isso envolve salvar periodicamente o estado atual em um armazenamento resiliente.

Esses conceitos permitem que o PySpark Streaming execute operações complexas em tempo real, acumulando, agregando e analisando dados de forma eficiente ao longo do tempo.