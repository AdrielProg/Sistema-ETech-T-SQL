CREATE DATABASE ETech;
GO

USE ETech;


CREATE TABLE Cargo (
	Id TINYINT IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	Salario DECIMAL(7,2) NOT NULL,
	CONSTRAINT PK_Cargo PRIMARY KEY(Id)
);

CREATE TABLE Funcionario (
    Id INT IDENTITY,
	IdCargo TINYINT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha AS HASHBYTES('SHA2_256', Email),
	CPF CHAR(11) UNIQUE NOT NULL,
	DataContratacao DATE NOT NULL,
	DataRescisao DATE,
	CONSTRAINT PK_Funcionario PRIMARY KEY(Id),
	CONSTRAINT FK_CargoFuncionario FOREIGN KEY (IdCargo) REFERENCES Cargo(Id)
);

CREATE TABLE Cliente (
    Id INT IDENTITY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
	Senha AS HASHBYTES('SHA2_256', Email),
	CONSTRAINT PK_Cliente PRIMARY KEY(Id)
);

CREATE TABLE Produto (
    Id INT IDENTITY,
    Nome VARCHAR(100) NOT NULL,
    Preco DECIMAL(8,2) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    Estoque INT NOT NULL,
	UsuarioCadastro INT NOT NULL,
	DataCadastro DATE NOT NULL,
	CONSTRAINT PK_Produto PRIMARY KEY(Id)
);

CREATE TABLE StatusRastreio (
    Id TINYINT IDENTITY,
    Nome VARCHAR(100) NOT NULL,
	CONSTRAINT PK_StatusRastreio PRIMARY KEY(Id)
);

CREATE TABLE Pedido (
    Id INT IDENTITY,
    IdCliente INT NOT NULL,
    DataPedido DATETIME NOT NULL,
	ValorTotal DECIMAL(10,2) NOT NULL,
    CONSTRAINT PK_Pedido PRIMARY KEY(Id),
    CONSTRAINT FK_IdClientePedido FOREIGN KEY (IdCliente) REFERENCES Cliente(Id)
);

CREATE TABLE Rastreio (
	Id INT IDENTITY,
	IdPedido INT NOT NULL,
	IdStatusRastreio TINYINT,
	Data DATETIME NOT NULL,
	CONSTRAINT PK_Rastreio PRIMARY KEY(Id),
	CONSTRAINT FK_PedidoRastreio FOREIGN KEY(IdPedido) REFERENCES Pedido(Id),
	CONSTRAINT FK_IdStatusRastreioPedido FOREIGN KEY(IdStatusRastreio) REFERENCES StatusRastreio(Id)
);


CREATE TABLE PedidoProduto (
    IdPedido INT NOT NULL,
    IdProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    CONSTRAINT FK_IdPedidoProduto FOREIGN KEY (IdPedido) REFERENCES Pedido(Id),
    CONSTRAINT FK_IdProdutoPedido FOREIGN KEY (IdProduto) REFERENCES Produto(Id)
);

CREATE TABLE TelefoneCliente (
    Id INT IDENTITY,
	IdCliente INT NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Telefone PRIMARY KEY(Id),
    CONSTRAINT FK_ClienteTelefone FOREIGN KEY (IdCliente) REFERENCES Cliente(Id)
);

CREATE TABLE UF(
	Id TINYINT IDENTITY,
	Sigla CHAR(2) NOT NULL,
	CONSTRAINT PK_UF PRIMARY KEY(Id)
);

CREATE TABLE EnderecoCliente (
    Id INT IDENTITY,
    IdCliente INT NOT NULL,
    Logradouro VARCHAR(100),
    Cidade VARCHAR(100),
    IdUF TINYINT NOT NULL,
    CEP VARCHAR(20),
    CONSTRAINT PK_EnderecoCliente PRIMARY KEY (Id),
    CONSTRAINT FK_ClienteEndereco FOREIGN KEY (IdCliente) REFERENCES Cliente(Id),
	CONSTRAINT FK_UFEnderecoCliente FOREIGN KEY(IdUF) REFERENCES UF(Id)
);

CREATE TABLE Fornecedor (
    Id SMALLINT IDENTITY,
	RazaoSocial VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CNPJ CHAR(14) NOT NULL,
    CONSTRAINT PK_Fornecedor PRIMARY KEY(Id)
);

CREATE TABLE TelefoneFornecedor (
    Id INT IDENTITY,
    IdFornecedor SMALLINT NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    CONSTRAINT PK_Telefone_Fornecedor PRIMARY KEY(Id),
    CONSTRAINT FK_FornecedorTelefone FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(Id)
);

CREATE TABLE ProdutoFornecedor (
    IdFornecedor SMALLINT  NOT NULL,
    IdProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoCompra DECIMAL(7,2) NOT NULL,
	DataCompra DATETIME NOT NULL,
    CONSTRAINT FK_IdFornecedorProduto FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(Id),
    CONSTRAINT FK_IdProdutoFornecedor FOREIGN KEY (IdProduto) REFERENCES Produto(Id)
);

CREATE TABLE SAC(
	
	Id INT IDENTITY,
	IdCliente INT NOT NULL,
	IdPedido INT NOT NULL,
	Solicitacao VARCHAR(250) NOT NULL,
	RespostaSac VARCHAR(250),
	Data DATE NOT NULL,
	CONSTRAINT PK_IdSAC PRIMARY KEY(Id),
	CONSTRAINT FK_IdClienteSAC FOREIGN KEY (IdCliente) REFERENCES Cliente(Id),
	CONSTRAINT FK_IdPedidoSAC FOREIGN KEY (IdPedido) REFERENCES Pedido(Id)

);