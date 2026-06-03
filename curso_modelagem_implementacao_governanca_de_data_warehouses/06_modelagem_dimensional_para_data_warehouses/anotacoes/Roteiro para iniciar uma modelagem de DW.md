## Como iniciar uma modelagem de DW

Antes de criar tabelas fato e dimensão, é necessário entender quatro pontos fundamentais:

### 1. Processo de Negócio

Primeiro, identifique qual processo da empresa será analisado.

Exemplos:

- Vendas
- Compras
- Estoque
- Financeiro
- Atendimento
- Logística

O Data Warehouse deve ser construído em torno de um processo de negócio.

### 2. Objetivos Analíticos

Defina quais perguntas o negócio deseja responder.

Exemplos:

- Como as vendas evoluem ao longo do tempo?
- Quais produtos vendem mais?
- Quem são os melhores clientes?
- Qual campanha gera mais receita?
- Quais regiões apresentam melhor desempenho?

Os objetivos analíticos determinam quais informações precisarão estar disponíveis no modelo.

### 3. Dados Disponíveis

Identifique quais fontes de dados existem para responder às perguntas do negócio.

Exemplos:

- Pedidos
- Clientes
- Produtos
- Campanhas
- Estoque
- Entregas

Nem toda pergunta desejada poderá ser respondida se os dados necessários não estiverem disponíveis.

### 4. Definição do Grão da Fato

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

### Após Definir os 4 Pontos

Com o processo de negócio, objetivos analíticos, dados disponíveis e grão definidos, a modelagem dimensional é construída identificando:

**Tabela Fato**

Armazena os eventos de negócio e suas métricas.

**Tabelas Dimensão**

Armazenam os atributos descritivos utilizados para analisar a fato.

**Surrogate Keys**

Cada dimensão normalmente possui uma chave substituta (SK).

**Slowly Changing Dimensions**

Decidir como mudanças nas dimensões serão tratadas.

### Resumo

Antes de modelar um Data Warehouse, responda:

- Qual processo de negócio será analisado?
- Quais perguntas o negócio deseja responder?
- Quais dados estão disponíveis?
- Qual será o grão da tabela fato?
- Qual serão as tabelas fato e dimensões e seus atributos (colunas), relacionamentos (como as tabelas irão se conectar) e chaves (identificador único da tabela)
- Como será tratado o histórico nas dimensões