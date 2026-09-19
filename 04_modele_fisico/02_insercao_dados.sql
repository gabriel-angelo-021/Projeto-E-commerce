INSERT INTO cliente (cadastro_atualizado, endereso, CPF, nome) VALUES
(TRUE, 'Rua das Flores, 120 - Madureira, Rio de Janeiro - RJ', '12345678901', 'Gabriel Silva'),
(FALSE, 'Av. Brasil, 2500 - Penha, Rio de Janeiro - RJ', '23456789012', 'Lucas Oliveira'),
(TRUE, 'Rua Dias da Cruz, 450 - Méier, Rio de Janeiro - RJ', '34567890123', 'Mariana Souza'),
(TRUE, 'Rua Conde de Bonfim, 800 - Tijuca, Rio de Janeiro - RJ', '45678901234', 'Rafael Santos'),
(FALSE, 'Rua Barão de Mesquita, 310 - Tijuca, Rio de Janeiro - RJ', '56789012345', 'Juliana Costa'),
(TRUE, 'Av. Dom Hélder Câmara, 1500 - Cachambi, Rio de Janeiro - RJ', '67890123456', 'Bruno Almeida'),
(FALSE, 'Rua Uruguai, 90 - Andaraí, Rio de Janeiro - RJ', '78901234567', 'Camila Ferreira'),
(TRUE, 'Rua Dias Ferreira, 220 - Leblon, Rio de Janeiro - RJ', '89012345678', 'Pedro Martins'),
(TRUE, 'Av. Nossa Senhora de Copacabana, 700 - Copacabana, Rio de Janeiro - RJ', '90123456789', 'Larissa Rocha'),
(FALSE, 'Rua Voluntários da Pátria, 540 - Botafogo, Rio de Janeiro - RJ', '01234567890', 'Mateus Ribeiro'),
(TRUE, 'Rua Visconde de Pirajá, 1100 - Ipanema, Rio de Janeiro - RJ', '11223344556', 'Beatriz Lima'),
(FALSE, 'Rua Dias da Cruz, 720 - Méier, Rio de Janeiro - RJ', '22334455667', 'Thiago Gomes'),
(TRUE, 'Av. Marechal Fontenelle, 320 - Sulacap, Rio de Janeiro - RJ', '33445566778', 'Amanda Carvalho'),
(TRUE, 'Rua Carolina Santos, 180 - Engenho de Dentro, Rio de Janeiro - RJ', '44556677889', 'Diego Barbosa'),
(FALSE, 'Rua Maxwell, 410 - Vila Isabel, Rio de Janeiro - RJ', '55667788990', 'Fernanda Mendes'),
(TRUE, 'Rua São Francisco Xavier, 620 - Maracanã, Rio de Janeiro - RJ', '66778899001', 'Rodrigo Castro'),
(FALSE, 'Av. Geremário Dantas, 900 - Freguesia, Rio de Janeiro - RJ', '77889900112', 'Isabela Nunes'),
(TRUE, 'Rua Cândido Benício, 350 - Praça Seca, Rio de Janeiro - RJ', '88990011223', 'André Monteiro'),
(TRUE, 'Rua Carvalho de Souza, 140 - Madureira, Rio de Janeiro - RJ', '99001122334', 'Letícia Ramos'),
(FALSE, 'Rua João Ribeiro, 260 - Olaria, Rio de Janeiro - RJ', '10112233445', 'Felipe Duarte');

SELECT * FROM cliente;

INSERT INTO produto (descrição, preço, categoria, produto_status, nome) VALUES
('Notebook 15 polegadas', 3499.90, 'Informática', 'Disponível', 'Notebook Lenovo'),
('Mouse sem fio', 89.90, 'Informática', 'Disponível', 'Mouse Logitech'),
('Teclado mecânico', 249.90, 'Informática', 'Disponível', 'Teclado Redragon'),
('Monitor 24 polegadas', 899.90, 'Informática', 'Disponível', 'Monitor Samsung'),
('Headset gamer', 199.90, 'Informática', 'Disponível', 'Headset HyperX'),
('Smartphone 128GB', 1899.90, 'Eletrônicos', 'Disponível', 'Samsung Galaxy'),
('Carregador USB-C', 79.90, 'Eletrônicos', 'Disponível', 'Carregador Turbo'),
('Fone Bluetooth', 159.90, 'Eletrônicos', 'Disponível', 'Fone JBL'),
('Smart TV 50 polegadas', 2499.90, 'Eletrônicos', 'Disponível', 'Smart TV LG'),
('Câmera digital', 1599.90, 'Eletrônicos', 'Disponível', 'Câmera Canon'),
('Cadeira gamer', 899.90, 'Móveis', 'Disponível', 'Cadeira ThunderX'),
('Mesa para escritório', 649.90, 'Móveis', 'Disponível', 'Mesa Office'),
('Estante de livros', 399.90, 'Móveis', 'Disponível', 'Estante Moderna'),
('Mochila para notebook', 179.90, 'Acessórios', 'Disponível', 'Mochila Executiva'),
('Pen drive 64GB', 49.90, 'Informática', 'Disponível', 'Pen Drive SanDisk'),
('HD externo 1TB', 399.90, 'Informática', 'Disponível', 'HD Externo WD'),
('Webcam Full HD', 229.90, 'Informática', 'Disponível', 'Webcam Logitech'),
('Caixa de som Bluetooth', 299.90, 'Eletrônicos', 'Disponível', 'JBL Flip'),
('Smartwatch', 499.90, 'Eletrônicos', 'Disponível', 'Smartwatch Xiaomi'),
('Impressora multifuncional', 799.90, 'Informática', 'Disponível', 'Epson EcoTank');

SELECT * FROM produto

INSERT INTO fornecedor (nome, CNPJ, telefone, email, endereco) VALUES
('Tech Distribuidora', '12.345.678/0001-01', '(21) 3000-1001', 'contato@techdistribuidora.com', 'Av. Brasil, 1000 - Rio de Janeiro - RJ'),
('Eletrônicos RJ', '23.456.789/0001-02', '(21) 3000-1002', 'vendas@eletronicosrj.com', 'Rua do Comércio, 120 - Rio de Janeiro - RJ'),
('Info Supply', '34.567.890/0001-03', '(21) 3000-1003', 'contato@infosupply.com', 'Rua da Tecnologia, 200 - Niterói - RJ'),
('Digital Store', '45.678.901/0001-04', '(21) 3000-1004', 'vendas@digitalstore.com', 'Av. Central, 350 - São Gonçalo - RJ'),
('RJ Componentes', '56.789.012/0001-05', '(21) 3000-1005', 'contato@rjcomponentes.com', 'Rua Industrial, 450 - Duque de Caxias - RJ'),
('Mega Distribuidora', '67.890.123/0001-06', '(21) 3000-1006', 'vendas@megadistribuidora.com', 'Rua dos Armazéns, 500 - Rio de Janeiro - RJ'),
('Smart Imports', '78.901.234/0001-07', '(21) 3000-1007', 'contato@smartimports.com', 'Av. das Américas, 700 - Rio de Janeiro - RJ'),
('Nova Tecnologia', '89.012.345/0001-08', '(21) 3000-1008', 'vendas@novatecnologia.com', 'Rua Tech, 150 - Nova Iguaçu - RJ'),
('Brasil Eletrônicos', '90.123.456/0001-09', '(21) 3000-1009', 'contato@brasileletronicos.com', 'Rua Brasil, 250 - Campos dos Goytacazes - RJ'),
('RJ Informática', '11.234.567/0001-10', '(21) 3000-1010', 'vendas@rjinformatica.com', 'Rua dos Computadores, 320 - Petrópolis - RJ'),
('Mundo Digital', '22.345.678/0001-11', '(21) 3000-1011', 'contato@mundodigital.com', 'Av. Digital, 410 - Volta Redonda - RJ'),
('Office Supply', '33.456.789/0001-12', '(21) 3000-1012', 'vendas@officesupply.com', 'Rua Escritório, 520 - Rio de Janeiro - RJ'),
('Casa Tech', '44.567.890/0001-13', '(21) 3000-1013', 'contato@casatech.com', 'Rua das Casas, 630 - Rio de Janeiro - RJ'),
('Giga Store', '55.678.901/0001-14', '(21) 3000-1014', 'vendas@gigastore.com', 'Rua Giga, 740 - Niterói - RJ'),
('Conecta Distribuidora', '66.789.012/0001-15', '(21) 3000-1015', 'contato@conecta.com', 'Av. Conexão, 850 - São Gonçalo - RJ'),
('Prime Eletrônicos', '77.890.123/0001-16', '(21) 3000-1016', 'vendas@primeeletronicos.com', 'Rua Prime, 920 - Rio de Janeiro - RJ'),
('Tech Brasil', '88.901.234/0001-17', '(21) 3000-1017', 'contato@techbrasil.com', 'Rua Brasil Tech, 110 - Rio de Janeiro - RJ'),
('Digital Supply', '99.012.345/0001-18', '(21) 3000-1018', 'vendas@digitalsupply.com', 'Av. Supply, 220 - Nova Iguaçu - RJ'),
('Mobi Distribuidora', '10.123.456/0001-19', '(21) 3000-1019', 'contato@mobidistribuidora.com', 'Rua Mobi, 330 - Duque de Caxias - RJ'),
('Eletro Master', '21.234.567/0001-20', '(21) 3000-1020', 'vendas@eletromaster.com', 'Rua Master, 440 - Rio de Janeiro - RJ');

SELECT * FROM fornecedor;

INSERT INTO pedido (id_cliente, quantidade, valor, pedido_status) VALUES
(1, 2, 3589.80, 'Pago'),
(2, 1, 3499.90, 'Entregue'),
(3, 3, 499.70, 'Enviado'),
(4, 1, 899.90, 'Pago'),
(5, 2, 239.80, 'Pendente'),
(6, 1, 1899.90, 'Entregue'),
(7, 2, 319.80, 'Enviado'),
(8, 1, 2499.90, 'Pago'),
(9, 3, 449.70, 'Entregue'),
(10, 1, 1599.90, 'Enviado'),
(11, 2, 1799.80, 'Pago'),
(12, 1, 649.90, 'Pendente'),
(13, 4, 199.60, 'Pago'),
(14, 1, 899.90, 'Entregue'),
(15, 2, 229.80, 'Enviado'),
(16, 1, 399.90, 'Pago'),
(17, 3, 239.70, 'Entregue'),
(18, 1, 499.90, 'Pendente'),
(19, 2, 599.80, 'Pago'),
(20, 1, 799.90, 'Enviado');

SELECT * FROM pedido;

INSERT INTO pagamento (id_pedido, forma_pagamento, pagamento_status) VALUES
(1, 'Pix', 'Aprovado'),
(2, 'Cartão', 'Aprovado'),
(3, 'Pix', 'Aprovado'),
(4, 'Cartão', 'Aprovado'),
(5, 'Boleto', 'Pendente'),
(6, 'Cartão', 'Aprovado'),
(7, 'Pix', 'Aprovado'),
(8, 'Cartão', 'Aprovado'),
(9, 'Pix', 'Aprovado'),
(10, 'Boleto', 'Pendente'),
(11, 'Cartão', 'Aprovado'),
(12, 'Pix', 'Pendente'),
(13, 'Pix', 'Aprovado'),
(14, 'Cartão', 'Aprovado'),
(15, 'Boleto', 'Pendente'),
(16, 'Pix', 'Aprovado'),
(17, 'Cartão', 'Aprovado'),
(18, 'Pix', 'Pendente'),
(19, 'Cartão', 'Aprovado'),
(20, 'Pix', 'Aprovado');

SELECT * FROM pagamento;

INSERT INTO item_pedido
(id_pedido, id_produto, quantidade, valor_unidade)
VALUES
(1, 1, 1, 3499.90),
(2, 2, 2, 89.90),
(3, 3, 1, 249.90),
(4, 4, 1, 899.90),
(5, 5, 2, 199.90),
(6, 6, 1, 1899.90),
(7, 7, 2, 79.90),
(8, 8, 1, 159.90),
(9, 9, 1, 2499.90),
(10, 10, 1, 1599.90),
(11, 11, 2, 899.90),
(12, 12, 1, 649.90),
(13, 13, 1, 399.90),
(14, 14, 1, 179.90),
(15, 15, 2, 49.90),
(16, 16, 1, 399.90),
(17, 17, 1, 229.90),
(18, 18, 1, 299.90),
(19, 19, 1, 499.90),
(20, 20, 1, 799.90);

SELECT * FROM item_pedido;

INSERT INTO estoque
(estoque_status, produtos_status, registro, id_fornecedor, endereco, id_produto)
VALUES
('Ativo', 'Disponível', 'Estoque Central', 1, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 1),
('Ativo', 'Disponível', 'Estoque Central', 2, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 2),
('Ativo', 'Disponível', 'Estoque Norte', 3, 'Av. Industrial, 200 - Niterói - RJ', 3),
('Ativo', 'Disponível', 'Estoque Norte', 4, 'Av. Industrial, 200 - Niterói - RJ', 4),
('Ativo', 'Disponível', 'Estoque Sul', 5, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 5),
('Ativo', 'Disponível', 'Estoque Sul', 6, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 6),
('Ativo', 'Disponível', 'Estoque Central', 7, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 7),
('Ativo', 'Disponível', 'Estoque Central', 8, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 8),
('Ativo', 'Disponível', 'Estoque Norte', 9, 'Av. Industrial, 200 - Niterói - RJ', 9),
('Ativo', 'Disponível', 'Estoque Norte', 10, 'Av. Industrial, 200 - Niterói - RJ', 10),
('Ativo', 'Disponível', 'Estoque Sul', 11, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 11),
('Ativo', 'Disponível', 'Estoque Sul', 12, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 12),
('Ativo', 'Disponível', 'Estoque Central', 13, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 13),
('Ativo', 'Disponível', 'Estoque Central', 14, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 14),
('Ativo', 'Disponível', 'Estoque Norte', 15, 'Av. Industrial, 200 - Niterói - RJ', 15),
('Ativo', 'Disponível', 'Estoque Norte', 16, 'Av. Industrial, 200 - Niterói - RJ', 16),
('Ativo', 'Disponível', 'Estoque Sul', 17, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 17),
('Ativo', 'Disponível', 'Estoque Sul', 18, 'Rua Comercial, 300 - Rio de Janeiro - RJ', 18),
('Ativo', 'Disponível', 'Estoque Central', 19, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 19),
('Ativo', 'Disponível', 'Estoque Central', 20, 'Rua dos Armazéns, 100 - Rio de Janeiro - RJ', 20);

SELECT * FROM estoque;

INSERT INTO entrega
(id_pedido, entrega_status, codigo_rastriamento, transportadora, endereso)
VALUES
(1, 'Entregue', 'BR123456789RJ', 'Correios', 'Rua das Flores, 120 - RJ'),
(2, 'Entregue', 'BR234567890RJ', 'Jadlog', 'Av. Brasil, 2500 - RJ'),
(3, 'Enviado', 'BR345678901RJ', 'Loggi', 'Rua Dias da Cruz, 450 - RJ'),
(4, 'Entregue', 'BR456789012RJ', 'Correios', 'Rua Conde de Bonfim, 800 - RJ'),
(5, 'Pendente', 'BR567890123RJ', 'Jadlog', 'Rua Barão de Mesquita, 310 - RJ'),
(6, 'Entregue', 'BR678901234RJ', 'Loggi', 'Av. Dom Hélder Câmara, 1500 - RJ'),
(7, 'Enviado', 'BR789012345RJ', 'Correios', 'Rua Uruguai, 90 - RJ'),
(8, 'Entregue', 'BR890123456RJ', 'Jadlog', 'Rua Dias Ferreira, 220 - RJ'),
(9, 'Entregue', 'BR901234567RJ', 'Loggi', 'Av. Nossa Senhora de Copacabana, 700 - RJ'),
(10, 'Enviado', 'BR012345678RJ', 'Correios', 'Rua Voluntários da Pátria, 540 - RJ'),
(11, 'Entregue', 'BR112233445RJ', 'Jadlog', 'Rua Visconde de Pirajá, 1100 - RJ'),
(12, 'Pendente', 'BR223344556RJ', 'Loggi', 'Rua Dias da Cruz, 720 - RJ'),
(13, 'Enviado', 'BR334455667RJ', 'Correios', 'Av. Marechal Fontenelle, 320 - RJ'),
(14, 'Entregue', 'BR445566778RJ', 'Jadlog', 'Rua Carolina Santos, 180 - RJ'),
(15, 'Enviado', 'BR556677889RJ', 'Loggi', 'Rua Maxwell, 410 - RJ'),
(16, 'Entregue', 'BR667788990RJ', 'Correios', 'Rua São Francisco Xavier, 620 - RJ'),
(17, 'Entregue', 'BR778899001RJ', 'Jadlog', 'Av. Geremário Dantas, 900 - RJ'),
(18, 'Pendente', 'BR889900112RJ', 'Loggi', 'Rua Cândido Benício, 350 - RJ'),
(19, 'Enviado', 'BR990011223RJ', 'Correios', 'Rua Carvalho de Souza, 140 - RJ'),
(20, 'Entregue', 'BR101122334RJ', 'Jadlog', 'Rua João Ribeiro, 260 - RJ');

SELECT * FROM entrega;

INSERT INTO avaliação
(id_cliente, id_produto, comentario, avaliação_produto)
VALUES
(1, 1, 'Produto excelente', '5 estrelas'),
(2, 2, 'Muito bom', '5 estrelas'),
(3, 3, 'Boa qualidade', '4 estrelas'),
(4, 4, 'Gostei bastante', '5 estrelas'),
(5, 5, 'Som muito bom', '4 estrelas'),
(6, 6, 'Ótimo aparelho', '5 estrelas'),
(7, 7, 'Funcionou perfeitamente', '5 estrelas'),
(8, 8, 'Bom produto', '4 estrelas'),
(9, 9, 'Imagem excelente', '5 estrelas'),
(10, 10, 'Câmera muito boa', '4 estrelas'),
(11, 11, 'Muito confortável', '5 estrelas'),
(12, 12, 'Mesa resistente', '4 estrelas'),
(13, 13, 'Boa compra', '4 estrelas'),
(14, 14, 'Material excelente', '5 estrelas'),
(15, 15, 'Bom custo benefício', '4 estrelas'),
(16, 16, 'Ótimo armazenamento', '5 estrelas'),
(17, 17, 'Imagem muito boa', '4 estrelas'),
(18, 18, 'Som excelente', '5 estrelas'),
(19, 19, 'Gostei do produto', '4 estrelas'),
(20, 20, 'Impressora excelente', '5 estrelas');

SELECT * FROM avaliação;