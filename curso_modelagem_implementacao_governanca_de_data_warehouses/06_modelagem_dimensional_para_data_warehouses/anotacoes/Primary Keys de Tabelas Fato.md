## Primary Keys de Tabelas Fato

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

Exemplo:

dim_cliente.sk_cliente

**Fato**

- Guarda métricas
- Guarda FK das dimensões
- PK depende do grão

### Grão

Sempre defina:

“Cada linha dessa tabela representa __________”