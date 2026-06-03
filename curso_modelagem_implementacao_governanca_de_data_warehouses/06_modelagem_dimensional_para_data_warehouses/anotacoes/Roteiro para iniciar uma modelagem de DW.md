## Como iniciar uma modelagem de DW

Antes de criar tabelas fato e dimensão, é necessário entender alguns conceitos fundamentais.

### 1. Entender o Resultado Esperado

Antes mesmo de pensar em fatos, dimensões ou tabelas, converse com a área de negócio e tente entender qual informação eles desejam consumir.

Sempre que possível, peça exemplos de:

- Relatórios atuais
- Planilhas Excel
- Dashboards
- Gráficos
- Indicadores (KPIs)
- Tabelas que eles montam manualmente

Muitas vezes o usuário não sabe explicar exatamente quais dados precisa, mas consegue mostrar o resultado que gostaria de visualizar.

Analisar esses exemplos ajuda a identificar:

- Quais perguntas precisam ser respondidas
- Quais métricas serão necessárias
- Quais dimensões serão utilizadas
- Qual deverá ser o grão da fato
- Como os dados serão consumidos

Uma boa prática é começar pelo relatório desejado e trabalhar "de trás para frente" até chegar ao modelo dimensional necessário para produzi-lo.

### 2. Processo de Negócio

Qual processo da empresa será analisado?

Exemplos:

- Vendas
- Compras
- Estoque
- Financeiro
- Atendimento
- Logística

O Data Warehouse deve ser construído em torno de um processo de negócio.

### 3. Objetivos Analíticos

Defina quais perguntas o negócio deseja responder.

Exemplos:

- Como as vendas evoluem ao longo do tempo?
- Quais produtos vendem mais?
- Quem são os melhores clientes?
- Qual campanha gera mais receita?
- Quais regiões apresentam melhor desempenho?

Os objetivos analíticos determinam quais informações precisarão estar disponíveis no modelo.

### 4. Dados Disponíveis

Identifique quais fontes de dados existem para responder às perguntas do negócio.

Exemplos:

- Pedidos
- Clientes
- Produtos
- Campanhas
- Estoque
- Entregas

Nem toda pergunta desejada poderá ser respondida se os dados necessários não estiverem disponíveis.

### 5. Definição do Grão da Fato

O grão define o menor nível de detalhe armazenado na tabela fato.

Esta é a decisão mais importante da modelagem dimensional.

Exemplos:

**Grão: 1 linha por pedido**

| Pedido | Valor |
| ------ | ----- |
| 1001	 |  500

**Grão: 1 linha por item do pedido**

| Pedido | Produto | Quantidade |
| ------ | ------- | ---------- |
| 1001	 | Camisa  |     2      |
| 1001	 | Calça   |     1      |

O grão determina:

- O nível de detalhe da análise
- A granularidade das métricas
- A unicidade da tabela fato
- As perguntas que poderão ser respondidas

### 6. Definição das Métricas

Defina quais valores quantitativos serão armazenados na tabela fato.

Exemplos:

- Quantidade vendida
- Valor bruto
- Valor líquido
- Desconto
- Frete
- Lucro

As métricas dependem diretamente do grão definido para a fato.

### Após Definir Esses Conceitos

Com uma ideia do resultado esperado, processo de negócio, objetivos analíticos, dados disponíveis, grão e métricas definidos, a modelagem dimensional é construída identificando:

**Tabela Fato**

Armazena os eventos de negócio e suas métricas.

**Tabelas Dimensão**

Armazenam os atributos descritivos utilizados para analisar a fato.

**Surrogate Keys**

Cada dimensão normalmente possui uma chave substituta (SK) utilizada para relacionamento com as tabelas fato.

**Slowly Changing Dimensions**

Define como mudanças nos atributos das dimensões serão tratadas ao longo do tempo.

### Resumo

Antes de modelar um Data Warehouse, responda:

- Qual processo de negócio será analisado?
- Quais perguntas o negócio deseja responder?
- Quais dados estão disponíveis?
- Qual será o grão da tabela fato?
- Quais métricas serão armazenadas na fato?
- Quais serão as tabelas fato e dimensões?
- Quais atributos existirão em cada dimensão?
- Como fatos e dimensões irão se relacionar?
- Quais PKs, NKs e SKs serão utilizadas?
- Como será tratado o histórico nas dimensões?