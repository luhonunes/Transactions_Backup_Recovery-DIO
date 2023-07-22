-- CODE 1: Exemplo de Transação sem Procedure
-- Suponha que queremos adicionar um novo cliente e registrar um pedido para esse cliente ao mesmo tempo.

-- Desabilitar o autocommit para utilizar transações
SET autocommit=0;

-- Início da Transação
START TRANSACTION;

-- Inserção do novo cliente
INSERT INTO client (Fname, Minit, Lname, CPF, Address)
VALUES ('João', 'A', 'Silva', '12345678901', 'Rua das Flores, 123');

-- Recuperar o ID do cliente recém-inserido
SET @newClientId = LAST_INSERT_ID();

-- Inserção do pedido associado ao cliente
INSERT INTO orders (client_id, orderStatus, orderDescription)
VALUES (@newClientId, 'Confirmado', 'Novo pedido do cliente João');

-- Fim da Transação com sucesso
COMMIT;


-- CODE 2: Transação com Procedure e ROLLBACK em caso de erro
-- Suponha que queremos atualizar a quantidade de um produto no estoque após um pedido.

-- Criar a Procedure
DELIMITER //
CREATE PROCEDURE updateProductQuantity(IN productId INT, IN quantityChange INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Em caso de erro, realizar ROLLBACK
        ROLLBACK;
        SELECT 'Erro na transação. Rollback realizado.';
    END;

    -- Desabilitar o autocommit para utilizar transações
    START TRANSACTION;

    -- Atualizar a quantidade do produto no estoque
    UPDATE productStorage
    SET quantity = quantity + quantityChange
    WHERE idProdStorage = productId;

    -- Fim da Transação com sucesso
    COMMIT;
    SELECT 'Transação concluída com sucesso.';
END;
//
DELIMITER ;


