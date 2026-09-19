-- 01. mostra os produtos e seus respectivos registros de estoque
select produto.id_produto,
    produto.nome,
    produto.categoria,
    produto.preço,
    estoque.registro
	from produto inner join estoque on produto.id_produto = estoque.id_produto;

-- 02. mostra os produtos e o status do estoque
select produto.id_produto,
    produto.nome,
    produto.produto_status,
    estoque.estoque_status,
    estoque.produtos_status
    from produto inner join estoque on produto.id_produto = estoque.id_produto;

-- 03. mostra a quantidade de registros de estoque por produto
select produto.id_produto,
    produto.nome,
    count(estoque.id_estoque) as quantidade_registros
	from produto inner join estoque on produto.id_produto = estoque.id_produto
	group by produto.id_produto, produto.nome;

-- 04. mostra a quantidade de produtos por categoria
select categoria,
    count(*) as quantidade_produtos
	from produto group by categoria order by quantidade_produtos desc;

-- 05. mostra o preço médio dos produtos de cada categoria
select categoria,
    avg(preço) as preco_medio
	from produto group by categoria order by preco_medio desc;

-- 06. mostra o maior preço de produto de cada categoria
select categoria,
    max(preço) as maior_preco
	from produto group by categoria order by maior_preco desc;

-- 07. mostra o menor preço de produto de cada categoria
select categoria,
    min(preço) as menor_preco
	from produto group by categoria order by menor_preco;

-- 08. mostra a quantidade de produtos em cada status
select produto_status,
    count(*) as quantidade_produtos
	from produto group by produto_status order by quantidade_produtos desc;

-- 09. mostra a quantidade de registros de estoque por status
select estoque_status,
    count(*) as quantidade_registros
	from estoque group by estoque_status order by quantidade_registros desc;

-- 10. mostra a quantidade de produtos por status do estoque
select produtos_status,
	count(*) as quantidade_produtos
	from estoque group by produtos_status order by quantidade_produtos desc;

-- 11. mostra os produtos ordenados pelo preço
select id_produto,nome,
	categoria,preço,
	produto_status
	from produto order by preço desc;

-- 12. mostra os produtos acima do preço médio geral
select id_produto,nome,
	categoria,preço
	produto where preço > (select avg(preço) from produto)
	order by  preço desc;

-- 13. mostra os produtos abaixo do preço médio geral

select 
	id_produto, nome, categoria, preço from produto
	where preço < (select avg(preço) from produto) order by preço;

-- 14. mostra os produtos com registro de estoque
select produto.id_produto,
    produto.nome,
    produto.categoria,
    estoque.registro,
    estoque.estoque_status
	from produto inner join estoque on produto.id_produto = estoque.id_produto;

-- 15. mostra o produto e o fornecedor responsável pelo estoque
select produto.id_produto,
    produto.nome,
    produto.categoria,
    fornecedor.nome as fornecedor,
    estoque.registro
	from produto inner join estoque on produto.id_produto = estoque.id_produto
	inner join fornecedor on estoque.id_fornecedor = fornecedor.id_fornecedor;

-- 16. mostra quantos produtos cada fornecedor possui no estoque
select fornecedor.id_fornecedor,
    fornecedor.nome,
    count(estoque.id_produto) as quantidade_produtos
	from fornecedor inner join estoque on fornecedor.id_fornecedor = estoque.id_fornecedor
	group by fornecedor.id_fornecedor, fornecedor.nome order by quantidade_produtos desc;

-- 17. mostra os produtos e seus fornecedores ordenados por categoria
select produto.nome as produto,
    produto.categoria,
    fornecedor.nome as fornecedor
	from produto inner join estoque on produto.id_produto = estoque.id_produto
	inner join fornecedor on estoque.id_fornecedor = fornecedor.id_fornecedor
    order by produto.categoria, produto.nome;

-- 18. mostra as categorias e o valor total dos produtos cadastrados
select categoria,
    sum(preço) as valor_total_produtos
	from produto group by categoria order by valor_total_produtos desc;

-- 19. mostra os produtos que possuem mais de um registro de estoque
select produto.id_produto,
    produto.nome,
    count(estoque.id_estoque) as quantidade_registros
	from produto inner join estoque on produto.id_produto = estoque.id_produto
	group by produto.id_produto, produto.nome having count(estoque.id_estoque) > 1;

-- 20. mostra o produto com maior preço
select id_produto, nome,
    categoria, preço
	from produto where preço = (select max(preço)from produto);