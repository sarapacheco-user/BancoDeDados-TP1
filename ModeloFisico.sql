CREATE DATABASE LojaDeRoupas;
USE LojaDeRoupas;
CREATE TABLE Fornecedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_fornecedor VARCHAR(80) NOT NULL,
    cidade VARCHAR(50),
    bairro VARCHAR(140),
    lote INT,
    cep INT
);
CREATE TABLE Sede (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cidade VARCHAR(50),
    bairro VARCHAR(140),
    lote INT,
    cep INT
);
CREATE TABLE Produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_de_peca VARCHAR(80) NOT NULL,
    fornecedor_id INT,
    custo_aquisicao DECIMAL(10,2),
    custo_marketing DECIMAL(10,2),
    margem_de_lucro DECIMAL(5,2),
    preco_de_venda DECIMAL(10,2),
    despesas DECIMAL(10,2),
    q_em_estoque INT DEFAULT 0,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(id)
);
CREATE TABLE Funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(200) NOT NULL,
    sede_id INT,
    salario DECIMAL(10,2),
    departamento VARCHAR(100),
    data_nascimento DATE,
    data_admissao DATE,
    cargo VARCHAR(200),
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (sede_id) REFERENCES Sede(id)
);
CREATE TABLE ClienteCadastrado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(200) NOT NULL,
    data_nascimento DATE,
    data_cadastro DATE DEFAULT CURRENT_DATE,
    cep INT,
    numero_endereco INT
);
CREATE TABLE Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    sede_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    data_pedido DATE DEFAULT CURRENT_DATE,
    funcionario_que_auxiliou_id INT,
    FOREIGN KEY (cliente_id) REFERENCES ClienteCadastrado(id),
    FOREIGN KEY (sede_id) REFERENCES Sede(id),
    FOREIGN KEY (produto_id) REFERENCES Produto(id),
    FOREIGN KEY (funcionario_que_auxiliou_id) REFERENCES Funcionario(id)
);
