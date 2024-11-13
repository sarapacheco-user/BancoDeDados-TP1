-- #############################################################
-- #####                Consultas comuns                   #####
-- #############################################################


-- # Listar todos os produtos com informações de fornecedor e preço de venda

SELECT p.id AS produto_id, p.tipo_de_peca, f.nome_do_fornecedor, p.preco_de_venda, p.q_em_estoque
FROM Produto p
JOIN Fornecedor f ON p.fornecedor_id = f.id;

-- # Obter o total de vendas (quantidade e valor) de cada produto

SELECT p.tipo_de_peca, SUM(pe.quantidade) AS total_quantidade, 
       SUM(pe.quantidade * p.preco_de_venda) AS total_vendas
FROM Pedido pe
JOIN Produto p ON pe.produto_id = p.id
GROUP BY p.tipo_de_peca;

-- # Listar todos os funcionários com suas sedes e 

SELECT f.nome, f.sobrenome, f.cargo, s.cidade AS sede_cidade, s.bairro AS sede_bairro
FROM Funcionario f
JOIN Sede s ON f.sede_id = s.id;

-- # Total de vendas por sede

SELECT s.cidade AS cidade_sede, SUM(pe.quantidade * p.preco_de_venda) AS total_vendas
FROM Pedido pe
JOIN Sede s ON pe.sede_id = s.id
JOIN Produto p ON pe.produto_id = p.id
GROUP BY s.cidade;

-- # Total de vendas de um funcionário

SELECT f.nome, f.sobrenome, SUM(pe.quantidade * p.preco_de_venda) AS total_vendido
FROM Pedido pe
JOIN Funcionario f ON pe.funcionario_que_auxiliou_id = f.id
JOIN Produto p ON pe.produto_id = p.id
GROUP BY f.id;


-- # Listar produtos que estão baixos em estoque  (ex: 10)

SELECT id AS produto_id, tipo_de_peca, q_em_estoque
FROM Produto
WHERE q_em_estoque < 10;


-- Listar todos os clientes com suas informações e data de cadastro

SELECT id AS cliente_id, nome, sobrenome, data_cadastro, cep, numero_endereco
FROM ClienteCadastrado;


--  Listar fornecedores e os produtos que fornecem

SELECT f.nome_do_fornecedor, p.tipo_de_peca, p.preco_de_venda
FROM Fornecedor f
JOIN Produto p ON f.id = p.fornecedor_id
ORDER BY f.nome_do_fornecedor;


-- Exibir o lucro total (estimado) para cada produto vendido

SELECT p.tipo_de_peca, 
SUM((p.preco_de_venda - (p.custo_aquisicao + p.custo_marketing + p.despesas)) * pe.quantidade) AS lucro_estimado
FROM Pedido pe
JOIN Produto p ON pe.produto_id = p.id
GROUP BY p.tipo_de_peca;

