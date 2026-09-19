 -- 01. mostra a quantidade de pagamentos por forma de pagamento
select forma_pagamento,
	count(*) as quantidade_pagamentos
	from pagamento group by forma_pagamento 
    order by quantidade_pagamentos desc;

 -- 02. mostra a quantidade de pagamentos por status
select pagamento_status,
	count(*) as quantidade_pagamentos
	from pagamento group by pagamento_status
	order by quantidade_pagamentos desc;

-- 03. mostra a quantidade de pagamentos por forma e status
select forma_pagamento,
	pagamento_status,
	count(*) as quantidade_pagamentos
	from pagamento group by forma_pagamento, pagamento_status
	order by quantidade_pagamentos desc;

-- 04. mostra os pedidos junto com suas informações de pagamento
select pedido.id_pedido,
	pedido.valor,
	pagamento.forma_pagamento,
	pagamento.pagamento_status
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido;

-- 05. mostra o valor total dos pedidos por forma de pagamento
select pagamento.forma_pagamento,
	sum(pedido.valor) as valor_total
	from pagamento inner join pedido on pagamento.id_pedido = pedido.id_pedido
	group by pagamento.forma_pagamento order by valor_total desc;

-- 06. mostra o valor total dos pedidos por status de pagamento
select pagamento.pagamento_status,
	sum(pedido.valor) as valor_total
	from pagamento inner join pedido on pagamento.id_pedido = pedido.id_pedido
	group by pagamento.pagamento_status order by valor_total desc;

-- 07. mostra os pedidos que possuem pagamento pendente
select pedido.id_pedido,
	pedido.valor,
	pagamento.forma_pagamento,
	pagamento.pagamento_status
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	where pagamento.pagamento_status = 'pendente';

-- 08. mostra os pedidos com pagamento aprovado
select pedido.id_pedido,
	pedido.valor,
	pagamento.forma_pagamento,
	pagamento.pagamento_status
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	where pagamento.pagamento_status = 'pago';

-- 09. mostra a quantidade de entregas por status
select entrega_status,
	count(*) as quantidade_entregas
	from entrega group by entrega_status order by quantidade_entregas desc;

-- 10. mostra a quantidade de entregas por transportadora
select transportadora,
	count(*) as quantidade_entregas
	from entrega group by transportadora order by quantidade_entregas desc;

-- 11. mostra os pedidos junto com as informações de entrega
select pedido.id_pedido,
	pedido.valor,
	entrega.entrega_status,
	entrega.transportadora,
	entrega.codigo_rastriamento
	from pedido inner join entrega on pedido.id_pedido = entrega.id_pedido;

-- 12. mostra os pedidos que estão com entrega pendente
select pedido.id_pedido,
	pedido.valor,
	entrega.entrega_status,
	entrega.transportadora
	from pedido inner join entrega on pedido.id_pedido = entrega.id_pedido
	where entrega.entrega_status = 'pendente';

-- 13. mostra os pedidos que já foram entregues
select pedido.id_pedido,
	pedido.valor,
	entrega.entrega_status,
	entrega.transportadora
	from pedido inner join entrega on pedido.id_pedido = entrega.id_pedido
	where entrega.entrega_status = 'entregue';

-- 14. mostra a quantidade de entregas por transportadora e status
select transportadora,
	entrega_status,
	count(*) as quantidade_entregas
	from entrega group by transportadora, entrega_status
	order by quantidade_entregas desc;

-- 15. mostra o valor total dos pedidos por status de entrega
select entrega.entrega_status,
	sum(pedido.valor) as valor_total
	from entrega inner join pedido on entrega.id_pedido = pedido.id_pedido
	group by entrega.entrega_status order by valor_total desc;

-- 16. mostra o pedido, pagamento e entrega juntos
select pedido.id_pedido,
	pedido.valor,
	pagamento.forma_pagamento,
	pagamento.pagamento_status,
	entrega.entrega_status,
	entrega.transportadora
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido;

-- 17. mostra os pedidos com pagamento e entrega pendentes
select pedido.id_pedido,
	pedido.valor,
	pagamento.pagamento_status,
	entrega.entrega_status
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido
	where pagamento.pagamento_status = 'pendente' and entrega.entrega_status = 'pendente';

-- 18. mostra os pedidos pagos que já foram entregues
select pedido.id_pedido,
	pedido.valor,
	pagamento.pagamento_status,
	entrega.entrega_status
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido where 
    pagamento.pagamento_status = 'pago' and entrega.entrega_status = 'entregue';

-- 19. mostra os pedidos pagos que ainda não foram entregues
select pedido.id_pedido,
	pedido.valor,
	pagamento.pagamento_status,
	entrega.entrega_status,
	entrega.transportadora
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido
    where pagamento.pagamento_status = 'pago' and entrega.entrega_status <> 'entregue';

-- 20. mostra o valor total dos pedidos de acordo com pagamento e entrega
select pagamento.pagamento_status,
	entrega.entrega_status,
	sum(pedido.valor) as valor_total
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido
	group by pagamento.pagamento_status, entrega.entrega_status order by valor_total desc;

-- 21. mostra as transportadoras responsáveis pelas entregas dos pedidos pagos
select entrega.transportadora,
	count(entrega.id_entrega) as quantidade_entregas,
	sum(pedido.valor) as valor_total_pedidos
	from entrega inner join pedido on entrega.id_pedido = pedido.id_pedido
	inner join pagamento on pedido.id_pedido = pagamento.id_pedido where
    pagamento.pagamento_status = 'pago' group by entrega.transportadora
	order by valor_total_pedidos desc;

-- 22. mostra os pedidos com pagamento pago e entrega em andamento
select pedido.id_pedido,
	pedido.valor,
	pagamento.forma_pagamento,
	pagamento.pagamento_status,
	entrega.entrega_status,
	entrega.transportadora
	from pedido inner join pagamento on pedido.id_pedido = pagamento.id_pedido
	inner join entrega on pedido.id_pedido = entrega.id_pedido where
    pagamento.pagamento_status = 'pago' and entrega.entrega_status = 'enviado';