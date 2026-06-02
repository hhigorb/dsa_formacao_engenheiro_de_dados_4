## O que são Surrogate Keys na modelagem do DW?

A Surrogate Key é uma chave artificial criada para identificar registros de uma dimensão.

Normalmente é um número inteiro sequencial.

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