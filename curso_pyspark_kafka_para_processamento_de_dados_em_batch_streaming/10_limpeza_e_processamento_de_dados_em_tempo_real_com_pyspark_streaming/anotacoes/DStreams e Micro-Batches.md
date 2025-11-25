### DStreams e Micro-Batches

DStreams (Discretized Streams) e Micro-Batches são conceitos centrais no PySpark Streaming:

**DStream:**

Representa um fluxo contínuo de dados que é processado em pequenos intervalos de tempo. Em vez de processar os dados em tempo real contínuo, o DStream divide o fluxo em segmentos temporais chamados micro-batches, que são transformados e processados como RDDs (Resilient Distributed Datasets) internamente. Cada DStream essencialmente uma sequência de RDDs no tempo.

**Micro-Batches:**

São pequenos lotes de dados coletados de um intervalo de tempo contínuo em um DStream. Eles tornam o processamento de dados em tempo real possível ao transformar o fluxo contínuo em pequenos pedaços processáveis. Cada micro-batch contém os dados acumulados durante o intervalo de tempo definido e é processado de forma distribuída pelo PySpark.

Esses conceitos permitem que o PySpark Streaming execute operações de processamento distribuído em dados contínuos com eficiência, permitindo tanto análises em tempo real quanto a manutenção de baixa latência.