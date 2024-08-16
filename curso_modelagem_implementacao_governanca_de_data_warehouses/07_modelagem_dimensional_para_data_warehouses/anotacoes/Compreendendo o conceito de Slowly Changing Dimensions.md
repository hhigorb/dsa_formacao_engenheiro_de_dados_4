## Compreendendo o conceito de Slowly Changing Dimensions

**SCDs (Slowly Changing Dimensions)** são dimensões que sofrem alterações de maneira lenta e gradual. Essas alterações podem ser devido à mudanças de nomes de produtos, endereços de clientes, reestruturação geográfica, entre outros.

A maneira como essas mudanças são gerenciadas em um DW afeta diretamente a integridade histórica dos dados, a capacidade de análise e a inteligência de negócios.

### Principais Tipos de SCD


- **Tipo 1 (SCD1) - Atualização Direta:** Neste tipo, quando um atributo muda, o DW é simplesmente atualizado com o novo valor, sem manter um histórico das alterações anteriores. Esse método é útil quando o histórico não é importante ou quando as mudanças são corretivas.<br><br>

- **Tipo 2 (SCD2) - Histórico Completo:** Aqui, cada alteração cria um novo registro na dimensão, com um identificador único (geralmente uma Surrogate Key) e possivelmente marcas de tempo para indicar a validade do registro. Isso permite o rastreamento completo do histórico de alterações. SCD2 é amplamente usado quando é crucial manter o histórico para análise temporal.
  
- **Tipo 3 (SCD3) - Atributo de Histórico Limitado:** No Tipo 3, a dimensão mantém o valor atual e um ou mais atributos anteriores. Por exemplo, "Endereço Atual" e "Endereço_Anterior". Este método é menos comum e é usado quando apenas um nível de histórico é necessário.

A manipulação adequada das Slowly Changing Dimensions é importante para manter a acurácia e relevância dos dados em um Data Warehouse, afetando diretamente a capacidade de uma organização de realizar análises históricas e de tendências.

Escolher o tipo correto de SCD depende dos requisitos específicos de negócios, da importância da integridade histórica dos dados e das considerações de desempenho.