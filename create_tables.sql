CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50),
    estoque INT NOT NULL
);
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL,
    id_produto INT,
    quantidade INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT
);
CREATE TABLE caixa (
    id_caixa INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    data_pagamento DATETIME NOT NULL,
    valor_pago DECIMAL(10, 2) NOT NULL,
    metodo_pagamento VARCHAR(50),
    status VARCHAR(20) DEFAULT 'pago',
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);
