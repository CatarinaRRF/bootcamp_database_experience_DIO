-- Verificando a localização dos clientes
select estado, count(*) as clientes_per_estado FROM cliente GROUP BY estado;

-- Verificando a idade dos clientes
select idade, count(*) as clientes_per_idade FROM cliente GROUP BY idade;

-- Os estoques mais cheios são aqueles que tem mais clientes?
select * from estoque;
select quatidade_disponivel, count(localizacao) as estoques_per_localizacao, localizacao FROM estoque GROUP BY localizacao;