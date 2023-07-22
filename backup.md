### Backup e Recovery
Nesta parte, você irá realizar o backup e recovery do banco de dados e-commerce. Vamos utilizar o utilitário mysqldump para isso.

Passos:

- Faça o backup completo do banco de dados ecommerce (estrutura e dados):

'mysqldump -u seu_usuario -p ecommerce > ecommerce_backup.sql'

- Faça o backup separado dos dados e estrutura do banco de dados ecommerce:

'mysqldump -u seu_usuario -p --no-create-info ecommerce > ecommerce_data_backup.sql'

- Para realizar o recovery, primeiro crie um novo banco de dados:

    * em sql:

        'CREATE DATABASE ecommerce_recovery CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'

- Restaure o banco de dados completo (estrutura e dados) para o novo banco:

'mysql -u seu_usuario -p ecommerce_recovery < ecommerce_backup.sql'

- Restaure apenas os dados para o novo banco:

'mysql -u seu_usuario -p ecommerce_recovery < ecommerce_data_backup.sql'

