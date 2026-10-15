# InfoX — Sistema de Ordem de Serviço (Java)

Sistema desktop para **assistência técnica**: controle de usuários, clientes e **ordens de serviço / orçamentos**, desenvolvido em **Java 21 + Swing** com **MySQL via JDBC**.

## Funcionalidades

- Login com perfis de acesso (admin / usuário)
- Cadastro de usuários (CRUD)
- Cadastro de clientes com pesquisa por nome (tabela dinâmica)
- Emissão de **Ordem de Serviço** ou **Orçamento**: equipamento, defeito, serviço, técnico, valor e situação
- Consulta, alteração e exclusão de OS pelo número

## Stack

- Java 21 · Swing (NetBeans GUI Builder)
- JDBC com `PreparedStatement` · MySQL (Connector/J 9.6.0)
- rs2xml (preenchimento de JTable a partir de ResultSet)
- Build: Apache Ant (projeto NetBeans) — dependências em `lib/`

## Como executar

1. Crie o banco com `database/schema.sql` (schema derivado do código — revise tipos/tamanhos).
2. Ajuste a conexão em `src/br/com/infox/dal/ModuloConexao.java` (padrão: `localhost:3306/dbinfox`, usuário `root`).
3. Cadastre um usuário inicial em `tbusuarios` (perfil `admin`).
4. Abra no **NetBeans** e execute (classe principal: `br.com.infox.telas.TelaLogin`).

## Próximos passos

- Separar o acesso a dados em DAOs e regras em camada de serviço
- Hash de senhas e configuração do banco fora do código
- Relatórios e testes automatizados