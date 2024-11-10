INSERT INTO Fornecedor (nome_do_fornecedor, cidade, bairro, lote, cep) VALUES
('Fornecedor Moda', 'São Paulo', 'Centro', 1, 12345678),
('Roupas e Companhia', 'Rio de Janeiro', 'Copacabana', 2, 87654321),
('Estilo Urbano', 'Belo Horizonte', 'Savassi', 3, 23456789),
('Têxtil Nacional', 'Porto Alegre', 'Centro Histórico', 4, 34567890);

INSERT INTO Produto (tipo_de_peca, fornecedor_id, custo_aquisicao, custo_marketing, margem_de_lucro, preco_de_venda, despesas, q_em_estoque) VALUES
('Camiseta', 1, 20.00, 5.00, 15.00, 40.00, 10.00, 100),
('Calça Jeans', 2, 50.00, 10.00, 30.00, 100.00, 20.00, 50),
('Jaqueta', 3, 70.00, 15.00, 35.00, 150.00, 30.00, 30),
('Shorts', 4, 25.00, 5.00, 20.00, 60.00, 12.00, 75);

INSERT INTO Funcionario (nome, sobrenome, sede_id, departamento, data_nascimento, data_admissao, cargo, email) VALUES
('Carlos', 'Silva', 1, 'Vendas', '1990-05-10', '2023-01-15', 'Vendedor', 'carlos.silva@loja.com'),
('Maria', 'Souza', 2, 'Marketing', '1985-07-22', '2022-03-10', 'Analista de Marketing', 'maria.souza@loja.com'),
('Ana', 'Costa', 1, 'Financeiro', '1992-11-30', '2023-06-01', 'Assistente Financeiro', 'ana.costa@loja.com'),
('Pedro', 'Oliveira', 3, 'Vendas', '1988-02-17', '2021-09-20', 'Vendedor', 'pedro.oliveira@loja.com');

INSERT INTO Sede (cidade, bairro, lote, cep) VALUES
('São Paulo', 'Centro', 1, 1237678),
('Rio de Janeiro', 'Ipanema', 2, 876212121),
('Belo Horizonte', 'Centro', 3, 21212222789);

INSERT INTO ClienteCadastrado (nome, sobrenome, data_nascimento, data_cadastro, cep, numero_endereco) VALUES
('João', 'Pereira', '1995-04-15', '2023-05-01', 1265432678, 100),
('Larissa', 'Gomes', '1989-08-22', '2023-07-10', 87654345321, 202),
('Ricardo', 'Almeida', '1992-12-05', '2023-09-03', 234562345789, 303),
('Fernanda', 'Martins', '1990-10-30', '2023-10-01', 34567234890, 404);

INSERT INTO Pedido (cliente_id, sede_id, produto_id, quantidade, data_pedido, funcionario_que_auxiliou_id) VALUES
(1, 1, 1, 2, '2023-11-01', 1),
(2, 2, 2, 1, '2023-11-02', 2),
(3, 1, 3, 3, '2023-11-03', 3),
(4, 3, 4, 1, '2023-11-04', NULL);
