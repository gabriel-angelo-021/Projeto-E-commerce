-- 01. mostra o total de vendas de cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    sum(pedido.valor) as total_vendas
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome;

-- 02. mostra a quantidade de vendas realizadas para cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    count(pedido.id_pedido) as quantidade_vendas
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome;

-- 03. mostra o valor médio das vendas de cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    avg(pedido.valor) as valor_medio_venda from cliente inner join pedido
    on cliente.id_cliente = pedido.id_cliente group by cliente.id_cliente, cliente.nome;

-- 04. mostra a maior venda realizada para cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    max(pedido.valor) as maior_venda 
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
    group by cliente.id_cliente, cliente.nome;

-- 05. mostra a menor venda realizada para cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    min(pedido.valor) as menor_venda
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
    group by cliente.id_cliente, cliente.nome;

-- 06. mostra a quantidade total de produtos comprados por cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    sum(item_pedido.quantidade) as quantidade_produtos
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
    inner join item_pedido on pedido.id_pedido = item_pedido.id_pedido
	group by cliente.id_cliente, cliente.nome;

-- 07. mostra o valor total dos produtos comprados por cada cliente
select
    cliente.id_cliente,
    cliente.nome,
    sum(item_pedido.quantidade * item_pedido.valor_unidade) as valor_total_comprado
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	inner join item_pedido on pedido.id_pedido = item_pedido.id_pedido
	group by cliente.id_cliente, cliente.nome;

-- 08. mostra os clientes que fizeram mais de um pedido
select
    cliente.id_cliente,
    cliente.nome,
    count(pedido.id_pedido) as quantidade_pedidos
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome having count(pedido.id_pedido) > 1;

-- 09. mostra os clientes que gastaram mais de 5000
select
    cliente.id_cliente,
    cliente.nome,
    sum(pedido.valor) as total_gasto
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome having sum(pedido.valor) > 5000;

-- 10. mostra os clientes com vendas acima de 3000
select distinct
    cliente.id_cliente,
    cliente.nome
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	where pedido.valor > 3000;

-- 11. mostra o cliente que realizou a maior venda
select
    cliente.nome,
    pedido.id_pedido,
    pedido.valor
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	order by pedido.valor desc limit 1;

-- 12. mostra os clientes ordenados pelo total de vendas
select
    cliente.id_cliente,
    cliente.nome,
    sum(pedido.valor) as total_vendas
    from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome order by total_vendas desc;

-- 13. mostra os clientes ordenados pela quantidade de pedidos
select
    cliente.id_cliente,
    cliente.nome,
    count(pedido.id_pedido) as quantidade_pedidos
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome order by quantidade_pedidos desc;

-- 14. mostra os clientes e o status das vendas realizadas
select
    cliente.nome,
    pedido.pedido_status,
    count(pedido.id_pedido) as quantidade_vendas
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome, pedido.pedido_status;

-- 15. mostra o valor total das vendas por cliente e status
select
    cliente.nome,
    pedido.pedido_status,
    sum(pedido.valor) as total_vendas
	from cliente inner join pedido on cliente.id_cliente = pedido.id_cliente
	group by cliente.id_cliente, cliente.nome, pedido.pedido_status
	order by total_vendas desc;