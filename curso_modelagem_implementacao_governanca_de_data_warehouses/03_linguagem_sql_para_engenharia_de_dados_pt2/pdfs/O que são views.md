## O que são Views?

Uma view é uma tabela virtual baseada no resultado de uma consulta SQL. Ela contém linhas e colunas,
assim como uma tabela real, mas os dados vêm de uma ou mais tabelas referenciadas em sua consulta SQL.

As views não armazenam dados físicamente. Elas executam a query cada vez que são usadas.

### Utilizações e benefícios:

**Simplificação de consultas complexas:** Uma view pode encapsular uma consulta complexa, tornando-a
acessível através de uma simples consulta SELECT.

**Segurança de dados:** As views podem ser usadas para restringir o acesso a determinados dados, 
permitindo aos usuários verem apenas dados específicos.

**Reutilização de código e consistência:** Centralizam e padronizam consultas usadas com frequência,
garantindo consistência e facilitando a manutenção.

**Abstração de dados:** As views podem ser usadas para esconder a complexidade dos dados, apresentando
uma interface simples para o usuário.

Como as views são executadas em tempo real, o desempenho pode ser um problema com consultas particularmente
complexas ou grandes volumes de dados.

Alterações na estrutura das tabelas podem afetas as views que as utilizam.

### Espaço em disco

Uma view não armazena dados fisicamente, mas sim a definição da consulta que é executada quando a view é chamada, por isso ocupam um espaço mínimo em disco, pois só armazenam a definição da consulta. Não armazenam os dados resultantes da consulta.