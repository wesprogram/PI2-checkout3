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
