## O que são Surrogate Keys na modelagem do DW?

A Surrogate Key é uma chave artificial criada para identificar registros de uma dimensão.

Normalmente é um número inteiro sequencial.

A SK precisa ser:

- estável
- única
- imutável

Ou seja: João sempre precisa continuar com o mesmo sk_cliente daquela versão da dimensão.

Exemplo:

**dim_cliente**

| sk_cliente | id_cliente | nome |
| ---------- | ---------- | ---- |
| 1	         | 845        | João
| 2	         | 912        | Maria

**sk_cliente** -> Surrogate Key

**id_cliente** -> chave natural do sistema origem

A PK da dimensão normalmente é a Surrogate Key.

---

### Por que usar SK?

**1. Histórico (SCD Type 2)**

Permite guardar múltiplas versões do mesmo registro.

Exemplo:

| sk_cliente | id_cliente | cidade |
| ---------- | ---------- | ------ |
| 1	         | 845        |	SP
| 2	         | 845	      | Campinas

Assim, fatos antigas continuam apontando para a versão antiga do cliente.

---

**2. Independência do sistema origem**

A chave do sistema origem pode:

- mudar
- vir nula
- ser reutilizada
- ter formatos diferentes

A SK resolve isso.

---

**3. Performance**

Inteiros são menores e mais rápidos para joins e processamento analítico.

---

### Tabela Fato

A fato normalmente armazena:

- métricas
- FK das dimensões

Exemplo:

**fato_venda**

| sk_cliente | sk_produto | sk_data | valor_venda |
| ---------- | ---------- | ------- | ----------- |


As colunas da fato geralmente são:

- medidas (valor, quantidade, desconto)
- referências para dimensões

Na modelagem dimensional, a fato geralmente NÃO possui uma PK simples como uma tabela transacional.

O mais comum é:

- PK lógica composta
- ou nenhuma PK física

A unicidade da fato depende do GRÃO.

---

### Grão da Fato

O grão define:

“O que uma linha dessa tabela representa?”

Essa é a parte mais importante de uma tabela fato.

Exemplos de grão:

- uma venda
- um item vendido
- um clique
 uma matrícula
- um faturamento diário

### Exemplo 1 — Fato detalhada

**Grão**

Cada linha representa um ITEM vendido.

**fato_venda_item**

| id_venda | id_item | sk_cliente | sk_produto | valor |
| -------- | ------- | ---------- | ---------- | ----- |

<br>

PK lógica: (id_venda, id_item)

### Exemplo 2 — Fato agregada

**Grão**

Cada linha representa o total vendido de um produto por dia.

**fato_venda_diaria**

| sk_data | sk_produto | valor_total |
| ------- | ---------- | ----------- |

<br>

PK lógica: (sk_data, sk_produto)

### Regra simples para lembrar

**Dimensão**

- Guarda contexto/descritivos
- Possui Surrogate Key
- PK normalmente é a SK

**Fato**

- Guarda métricas
- Guarda FK das dimensões
- PK depende do grão

### Grão

Sempre defina:

“Cada linha dessa tabela representa __________”