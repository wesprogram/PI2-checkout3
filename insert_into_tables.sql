INSERT INTO produtos (nome, preco, categoria, estoque) VALUES
('Pão na chapa', 49.90, 'Alimento Pronto', 30),
('Café Expresso', 6.50, 'Bebida', 50),
('Caneca de Café', 15.00, 'Acessório', 100);

INSERT INTO pedidos (data_pedido, id_produto, quantidade, total) VALUES
('2023-10-01 10:00:00', 1, 2, 99.80),
('2023-10-02 11:30:00', 2, 5, 32.50),
('2023-10-03 14:15:00', 3, 1, 15.00);

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao.silva@email.com', '999999999', 'Rua A, 123, Centro'),
('Maria Oliveira', 'maria.oliveira@email.com', '988888888', 'Avenida B, 456, Bairro X'),
('Pedro Santos', 'pedro.santos@email.com', '977777777', 'Rua C, 789, Bairro Y');


ALTER TABLE pedidos ADD COLUMN id_cliente INT;
ALTER TABLE pedidos ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

INSERT INTO pedidos (data_pedido, id_produto, quantidade, total, id_cliente) VALUES
('2025-05-12 10:00:00', 1, 2, 99.80, 1),  -- Pedido de João Silva
('2025-05-12 10:30:00', 2, 1, 6.50, 2),   -- Pedido de Maria Oliveira
('2025-05-12 11:00:00', 3, 3, 45.00, 3);  -- Pedido de Pedro Santos

INSERT INTO caixa (id_pedido, data_pagamento, valor_pago, metodo_pagamento, status) VALUES
(1, '2025-05-12 10:10:00', 99.80, 'cartão', 'pago'),
(2, '2025-05-12 10:40:00', 6.50, 'dinheiro', 'pago'),
(3, '2025-05-12 11:15:00', 45.00, 'cartão', 'pago');
