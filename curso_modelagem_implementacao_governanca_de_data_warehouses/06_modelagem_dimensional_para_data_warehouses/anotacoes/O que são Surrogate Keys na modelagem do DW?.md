## O que são Surrogate Keys na modelagem do DW?


Surrogate keys são chaves artificiais, geradas pelo sistema, que servem como a principal chave de identificação para cada registro em uma tabela de um Data Warehouse.

Ao contrário das chaves naturais, que são derivadas de dados reais e muitas vezes têm significado ou valor no mundo real (como um número de CPF ou um endereço de e-mail), as surrogate keys não têm significado fora do contexto do DW.

Geralmente, são números inteiros sequenciais.

### Por Que Usar Surrogate Keys?

- Como as surrogate keys não têm relação direta com os dados de negócios, elas permitem que o DW seja desacoplado das alterações nos sistemas de origem. Isso torna o DW mais estável e menos suscetível a mudanças externas.<br><br>

- Elas garantem a unicidade dos registros, o que é essencial para a integridade dos dados. Isso é particularmente útil em situações onde as chaves naturais podem mudar ou não ser únicas.<br><br>
  
- O uso de surrogate keys, geralmente números inteiros, pode melhorar o desempenho das operações de banco de dados, especialmente em joins, buscas e indexações, devido ao menor tamanho de dados e à simplicidade de comparação.<br><br>
  
- Elas facilitam a integração de dados de múltiplas fontes que podem ter chaves naturais conflitantes ou formatos incompatíveis.<br><br>
  
- As surrogate keys permitem uma gestão mais fácil do histórico de alterações dos dados. Elas são essenciais em dimensões do tipo Slowly Changing Dimension (SCD), onde é necessário manter versões históricas de registros.

Surrogate Keys são um componente crítico na modelagem de Data Warehouses, proporcionando uma estrutura robusta, flexível e de alto desempenho para o armazenamento e análise de grandes volumes de dados.