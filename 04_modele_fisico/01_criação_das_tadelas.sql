CREATE DATABASE Projeto_ecommerce;
use projeto_ecommerce;        

CREATE TABLE cliente (
    id_cliente BIGINT PRIMARY KEY AUTO_INCREMENT,
    cadastro_atualizado BOOLEAN,
    endereso VARCHAR(150) not NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL
);

CREATE Table pedido (
    id_pedido BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_cliente BIGINT NOT NULL,
    quantidade INT not NULL,
    valor DECIMAL(10,2) not null,
    pedido_status VARCHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES
    cliente(id_cliente)
);

CREATE TABLE pagamento (
    id_pagamento BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_pedido BIGINT not null,
    forma_pagamento VARCHAR(20) not NULL,
    pagamento_status VARCHAR(20) not null,
    Foreign Key (id_pedido) REFERENCES
    pedido(id_pedido)
);

CREATE TABLE item_pedido (
    id_item_pedido BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_pedido BIGINT NOT NULL,
    id_produto BIGINT NOT NULL,
    quantidade INT NOT NULL,
    valor_unidade DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE produto (
    id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    descrição VARCHAR(40) NOT NULL,
    preço DECIMAL(10,2) not null,
    categoria VARCHAR(50) NOT NULL,
    produto_status VARCHAR(20) NOT NULL,
    nome VARCHAR(100) not null
);

CREATE TABLE estoque (
    id_estoque BIGINT PRIMARY KEY AUTO_INCREMENT,
    estoque_status VARCHAR(10) NOT NULL,
    produtos_status VARCHAR(16) NOT NULL,
    registro VARCHAR(48) NOT NULL,
    id_fornecedor BIGINT NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    id_produto BIGINT NOT NULL,
	FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE fornecedor (
    id_fornecedor BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    CNPJ VARCHAR(18) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(150)
);

CREATE TABLE entrega (
    id_entrega BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_pedido BIGINT NOT NULL,
    entrega_status VARCHAR(10) not NULL,
    codigo_rastriamento VARCHAR(30) NOT NULL,
    transportadora VARCHAR(30) not null,
    endereso VARCHAR(150) not null,
    Foreign Key (id_pedido) REFERENCES pedido(id_pedido)
);


CREATE TABLE avaliação (
    id_avaliação BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_cliente BIGINT not null,
    id_produto BIGINT not NULL,
    comentario VARCHAR(40) NOT null,
    avaliação_produto VARCHAR(40) NOT null,
    Foreign Key (id_cliente) REFERENCES cliente(id_cliente),
    Foreign Key (id_produto) REFERENCES produto(id_produto)
);
