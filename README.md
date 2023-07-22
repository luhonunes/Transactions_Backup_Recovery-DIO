# Transactions_Backup_Recovery-DIO
Projeto elaborado como requisito no Curso Formação SQL Database Specialist DIO. 
### E-commerce Database Project

Este projeto tem como objetivo criar e gerenciar um banco de dados para um sistema de E-commerce. O banco de dados é projetado para armazenar informações sobre clientes, produtos, pedidos, fornecedores e vendedores.

Foi utilizado o banco de dados seguinte como exemplo:
<https://github.com/luhonunes/ecommerce-DIO.git>

## Tecnologias Utilizadas

- MySQL

## Descrição das Partes do Projeto

### Parte 1 - Transações

Nesta parte, foram implementadas transações para realizar modificações no banco de dados usando SQL. Exemplos de transações para inserir novos clientes, adicionar produtos ao estoque e registrar pedidos foram demonstrados.

### Parte 2 - Transação com Procedure

Aqui, criamos uma transação dentro de uma procedure para atualizar a quantidade de produtos no estoque após um pedido. A procedure foi projetada para verificar possíveis erros e realizar ROLLBACK em caso de falhas.

### Parte 3 - Backup e Recovery

Nesta etapa, realizamos o backup e recovery do banco de dados e-commerce usando o utilitário `mysqldump`. Foram criados dois backups: um com a estrutura e dados completos e outro apenas com os dados. O procedimento de recovery foi demonstrado em um novo banco de dados.

## Instruções de Uso

1. Certifique-se de ter o MySQL instalado e configurado em sua máquina.
2. Execute os scripts SQL para criar o banco de dados "ecommerce" e suas tabelas.
3. Execute os exemplos de transações nos scripts CODE 1 e CODE 2 para entender o conceito de transações.
4. Para fazer o backup completo do banco de dados, use o comando:

 'mysqldump -u seu_usuario -p ecommerce > ecommerce_backup.sql'

5. Para fazer o backup separado apenas dos dados, use o comando:

 'mysqldump -u seu_usuario -p --no-create-info ecommerce > ecommerce_data_backup.sql'

6. Para realizar o recovery completo do banco de dados, crie um novo banco de dados chamado "ecommerce_recovery" e execute o comando:

 'mysql -u seu_usuario -p ecommerce_recovery < ecommerce_backup.sql'

7. Para realizar o recovery apenas dos dados, use o comando:

 'mysql -u seu_usuario -p ecommerce_recovery < ecommerce_data_backup.sql'


## Observações

- Certifique-se de que os scripts SQL foram executados corretamente antes de prosseguir com as transações e procedimentos.
- Tenha cuidado ao executar comandos de backup e recovery, pois eles afetam diretamente o estado do banco de dados.


