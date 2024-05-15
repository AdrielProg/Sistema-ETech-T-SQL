
USE ETech;

INSERT INTO Cargo (Nome, Salario) VALUES ('Desenvolvedor', 5000.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('Gerente', 7000.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('Analista', 4000.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('T�cnico de Suporte', 3000.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('Designer Gr�fico', 6000.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('Marketing', 5500.00);
INSERT INTO Cargo (Nome, Salario) VALUES ('Contador', 7500.00);


INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (1, 'Jo�o Silva', 'joao.silva@email.com', '12345678901', '2023-01-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (2, 'Maria Santos', 'maria.santos@email.com', '23456789012', '2023-02-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (3, 'Carlos Pereira', 'carlos.pereira@email.com', '34567890123', '2023-03-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (4, 'Ana Costa', 'ana.costa@email.com', '45678901234', '2023-04-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (5, 'Pedro Ferreira', 'pedro.ferreira@email.com', '56789012345', '2023-05-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (6, 'Maria Oliveira', 'maria.oliveira@email.com', '67890123456', '2023-06-01');
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) VALUES (7, 'Carlos Martins', 'carlos.martins@email.com', '78901234567', '2023-07-01');


INSERT INTO Cliente (Nome, Email) VALUES ('Jo�o Silva', 'joao.silva@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Maria Santos', 'maria.santos@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Carlos Pereira', 'carlos.pereira@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Ana Costa', 'ana.costa@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Pedro Ferreira', 'pedro.ferreira@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Maria Oliveira', 'maria.oliveira@email.com');
INSERT INTO Cliente (Nome, Email) VALUES ('Carlos Martins', 'carlos.martins@email.com');

-- Contato para Jo�o Silva
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (1, '+55 11 98765-4321');

-- Contato para Maria Santos
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (2, '+55 21 98765-4321');

-- Contato para Carlos Pereira
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (3, '+55 31 98765-4321');

-- Contato para Ana Costa
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (4, '+55 41 98765-4321');

-- Contato para Pedro Ferreira
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (5, '+55 51 98765-4321');

-- Contato para Maria Oliveira
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (6, '+55 61 98765-4321');

-- Contato para Carlos Martins
INSERT INTO TelefoneCliente (IdCliente, Telefone) VALUES (7, '+55 71 98765-4321');


INSERT INTO UF (Sigla) VALUES ('AC');
INSERT INTO UF (Sigla) VALUES ('AL');
INSERT INTO UF (Sigla) VALUES ('AP');
INSERT INTO UF (Sigla) VALUES ('AM');
INSERT INTO UF (Sigla) VALUES ('BA');
INSERT INTO UF (Sigla) VALUES ('CE');
INSERT INTO UF (Sigla) VALUES ('DF');
INSERT INTO UF (Sigla) VALUES ('ES');
INSERT INTO UF (Sigla) VALUES ('GO');
INSERT INTO UF (Sigla) VALUES ('MA');
INSERT INTO UF (Sigla) VALUES ('MT');
INSERT INTO UF (Sigla) VALUES ('MS');
INSERT INTO UF (Sigla) VALUES ('MG');
INSERT INTO UF (Sigla) VALUES ('PA');
INSERT INTO UF (Sigla) VALUES ('PB');
INSERT INTO UF (Sigla) VALUES ('PR');
INSERT INTO UF (Sigla) VALUES ('PE');
INSERT INTO UF (Sigla) VALUES ('PI');
INSERT INTO UF (Sigla) VALUES ('RJ');
INSERT INTO UF (Sigla) VALUES ('RN');
INSERT INTO UF (Sigla) VALUES ('RS');
INSERT INTO UF (Sigla) VALUES ('RO');
INSERT INTO UF (Sigla) VALUES ('RR');
INSERT INTO UF (Sigla) VALUES ('SC');
INSERT INTO UF (Sigla) VALUES ('SP');
INSERT INTO UF (Sigla) VALUES ('SE');
INSERT INTO UF (Sigla) VALUES ('TO');


INSERT INTO StatusRastreio VALUES ('Aguardando envio');
INSERT INTO StatusRastreio VALUES ('Em tr�nsito');
INSERT INTO StatusRastreio VALUES ('Entregue');
INSERT INTO StatusRastreio VALUES ('Cancelado');
INSERT INTO StatusRastreio VALUES ('Retornado');
INSERT INTO StatusRastreio VALUES ('Aguardando pagamento');
INSERT INTO StatusRastreio VALUES ('Aguardando produtos');

INSERT INTO Produto VALUES ('Samsung Galaxy S21', 3999.00, 'Smartphone Android com 8GB de RAM e 128GB de armazenamento', 100, 4, GETDATE());
INSERT INTO Produto VALUES ('Apple iPhone 13 Pro', 6999.00, 'Smartphone iOS com 128GB de armazenamento e c�mera de 12MP', 200, 4, GETDATE());
INSERT INTO Produto VALUES ('LG G8X ThinQ', 2999.00, 'Smartphone Android com 6GB de RAM e 128GB de armazenamento', 300, 4, GETDATE());
INSERT INTO Produto VALUES ('Sony WH-1000XM4', 349.00, 'Fones de ouvido sem fio com cancelamento de ru�do', 400, 4, GETDATE());
INSERT INTO Produto VALUES ('Logitech MX Master 3', 299.00, 'Mouse sem fio com roda de alta precis�o', 500, 4, GETDATE());
INSERT INTO Produto VALUES ('Dell XPS 15', 2999.00, 'Laptop com processador Intel Core i7 e 16GB de RAM', 600, 4, GETDATE());
INSERT INTO Produto VALUES ('Apple MacBook Pro 16"', 2499.00, 'Laptop com processador Apple M1 Pro e 16GB de RAM', 700, 4, GETDATE());


INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Amazon', 'contato@amazon.com', 11444777000191);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Apple Store', 'contato@apple.com', 12345678901234);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Samsung Store', 'contato@samsung.com', 23456789012345);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Microsoft Store', 'contato@microsoft.com', 34567890123456);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Logitech', 'contato@logitech.com', 45678901234567);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Dell', 'contato@dell.com', 56789012345678);
INSERT INTO Fornecedor (RazaoSocial, Email, CNPJ) VALUES ('Apple Store', 'contato@apple.com', 67890123456789);

-- Contatos para Amazon
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (1, '+55 11 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (1, '+55 11 8765-4321');

-- Contatos para Apple Store
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (2, '+55 21 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (2, '+55 21 8765-4321');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (7, '+55 71 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (7, '+55 71 8765-4321');

-- Contatos para Samsung Store
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (3, '+55 31 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (3, '+55 31 8765-4321');

-- Contatos para Microsoft Store
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (4, '+55 41 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (4, '+55 41 8765-4321');

-- Contatos para Logitech
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (5, '+55 51 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (5, '+55 51 8765-4321');

-- Contatos para Dell
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (6, '+55 61 1234-5678');
INSERT INTO TelefoneFornecedor (IdFornecedor, Telefone) VALUES (6, '+55 61 8765-4321');

-- Endere�os para Jo�o Silva
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (1, 'Rua das Flores, 123', 'S�o Paulo', 1, '01000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (1, 'Avenida Brasil, 456', 'Rio de Janeiro', 2, '20000-000');

-- Endere�os para Maria Santos
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (2, 'Rua dos Mineiros, 789', 'Belo Horizonte', 3, '30000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (2, 'Avenida Paulista, 101', 'S�o Paulo', 1, '01000-000');

-- Endere�os para Carlos Pereira
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (3, 'Rua das Palmeiras, 111', 'Rio de Janeiro', 2, '20000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (3, 'Rua dos Tamoios, 121', 'Belo Horizonte', 3, '30000-000');

-- Endere�os para Ana Costa
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (4, 'Avenida Rio Branco, 131', 'S�o Paulo', 1, '01000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (4, 'Rua das Flores, 123', 'S�o Paulo', 1, '01000-000');

-- Endere�os para Pedro Ferreira
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (5, 'Rua dos Mineiros, 789', 'Belo Horizonte', 3, '30000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (5, 'Avenida Brasil, 456', 'Rio de Janeiro', 2, '20000-000');

-- Endere�os para Maria Oliveira
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (6, 'Rua das Palmeiras, 111', 'Rio de Janeiro', 2, '20000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (6, 'Rua dos Tamoios, 121', 'Belo Horizonte', 3, '30000-000');

-- Endere�os para Carlos Martins
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (7, 'Avenida Rio Branco, 131', 'S�o Paulo', 1, '01000-000');
INSERT INTO EnderecoCliente (IdCliente, Logradouro, Cidade, IdUF, CEP) VALUES (7, 'Rua das Flores, 123', 'S�o Paulo', 1, '01000-000');

-- Inserir mais produtos
INSERT INTO Produto (Nome, Preco, Descricao, Estoque, UsuarioCadastro, DataCadastro) 
VALUES 
('Sony PlayStation 5', 4999.00, 'Console de videogame de �ltima gera��o', 50, 4, GETDATE()),
('Nintendo Switch', 2999.00, 'Console de videogame h�brido', 100, 4, GETDATE()),
('Microsoft Xbox Series X', 4499.00, 'Console de videogame poderoso', 75, 4, GETDATE());

-- Inserir mais funcion�rios
INSERT INTO Funcionario (IdCargo, Nome, Email, CPF, DataContratacao) 
VALUES 
(1, 'Lucas Almeida', 'lucas.almeida@email.com', '89012345678', '2023-08-01'),
(2, 'Fernanda Lima', 'fernanda.lima@email.com', '90123456789', '2023-09-01'),
(3, 'Gustavo Santos', 'gustavo.santos@email.com', '01234567890', '2023-10-01');

-- Inserir alguns pedidos com diferentes status de rastreamento
DECLARE @PedidoID INT;

-- Pedido 1 - Aguardando envio
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(1, GETDATE(), 6999.00);


SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 2, 1); -- Nintendo Switch

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 1, GETDATE()); -- Aguardando envio

-- Pedido 2 - Em tr�nsito
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(2, GETDATE(), 3499.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 3, 1); -- Microsoft Xbox Series X

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 2, DATEADD(DAY, -3, GETDATE())), -- Em tr�nsito h� 3 dias
(@PedidoID, 2, DATEADD(DAY, -2, GETDATE())), -- Em tr�nsito h� 2 dias
(@PedidoID, 2, DATEADD(DAY, -1, GETDATE())); -- Em tr�nsito h� 1 dia

-- Pedido 3 - Entregue
INSERT INTO Pedido (IdCliente,DataPedido, ValorTotal) 
VALUES 
(3, GETDATE(), 2999.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 1, 1); -- Sony PlayStation 5

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 3, DATEADD(DAY, -1, GETDATE())); -- Entregue h� 1 dia

-- Pedido 4 - Cancelado
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(4, GETDATE(), 299.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 4, 1); -- Sony WH-1000XM4

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 4, GETDATE()); -- Pedido cancelado

-- Pedido 5 - Retornado
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(5, GETDATE(), 299.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 5, 1); -- Logitech MX Master 3

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 5, DATEADD(DAY, -2, GETDATE())), -- Retornado h� 2 dias
(@PedidoID, 5, DATEADD(DAY, -1, GETDATE())); -- Retornado h� 1 dia

-- Pedido 6 - Aguardando pagamento
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(6, GETDATE(), 2999.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 6, 1); -- Dell XPS 15

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 6, GETDATE()); -- Aguardando pagamento

-- Pedido 7 - Aguardando produtos
INSERT INTO Pedido (IdCliente, DataPedido, ValorTotal) 
VALUES 
(7, GETDATE(), 2499.00);

SET @PedidoID = SCOPE_IDENTITY();

INSERT INTO PedidoProduto (IdPedido, IdProduto, Quantidade) 
VALUES 
(@PedidoID, 7, 1); -- Apple MacBook Pro 16"

INSERT INTO Rastreio (IdPedido, IdStatusRastreio, Data) 
VALUES 
(@PedidoID, 7, GETDATE()); -- Aguardando produtos

INSERT INTO ProdutoFornecedor (IdFornecedor, IdProduto, Quantidade, PrecoCompra, DataCompra)
		VALUES (3, 1, 69, 2500, GETDATE()-1),
			   (2, 2, 194, 4000, GETDATE()-2),
			   (1, 3, 298, 2.000,  GETDATE()-3),
			   (1, 4, 399, 150,  GETDATE()-4),
			   (5, 5, 499, 200,  GETDATE()-5),
			   (6, 6, 599, 2000,  GETDATE()-6),
			   (7, 7, 699, 2000,  GETDATE()-7)
