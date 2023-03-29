--criando as tabelas;
drop
create table
  categorias (id serial primary key, nome varchar(50));

create table
  produtos (
    id serial primary key,
    nome varchar(100) not null,
    descricao text,
    preco integer not null,
    quantidade_em_estoque integer not null,
    categoria_id integer references categorias(id)
  );

create table
  clientes (cpf text unique, nome varchar(150));

create table
  vendedores (cpf char(11) unique, nome varchar(150));

create table
  pedidos (
    id serial primary key,
    valor integer,
    cliente_cpf char(11) references clientes(cpf),
    vendedor_cpf char(11) references vendedores(cpf)
  );

create table
  itens_do_pedidos (
    id serial primary key,
    pedido_id integer not null,
    quantidade integer not null,
    produtos_id integer references produtos(id)
  );

--add em categorias
insert into
  categorias (nome)
values
  ('frutas'),
  ('verduras'),
  ('massas'),
  ('bebidas'),
  ('utilidades');

alter table
  produtos
add
  constraints fk_produtos foreign key (categoria_id) references categorias(id);

insert into
  produtos (
    nome,
    descricao,
    preco,
    quantidade_em_estoque,
    categoria_id
  )
values
  (
    'Mamão',
    'Rico em vitamina A, potássio e vitamina C',
    '300',
    '123',
    1
  ),
  ('Maça', 'Fonte de potássio e fibras', '90', '34', 1),
  (
    'Cebola',
    'Rico em quercetina, antocianinas, vitaminas do complexo B, C',
    '50',
    '76',
    3
  ),
  ('Abacate', 'NÃO CONTÉM GLÚTEN', '150', '64', 1),
  (
    'Tomate',
    'Rico em vitaminas A, B e C',
    '125',
    '88',
    3
  ),
  ('Acelga', 'NÃO CONTÉM GLÚTEN', '235', '13', 3),
  (
    'Macarrão parafuso',
    'Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais',
    '690',
    '5',
    4
  ),
  (
    'Massa para lasanha',
    'Uma reunião de família precisa ter comida boa e muita alegria',
    '875',
    '19',
    4
  ),
  (
    'Refrigerante coca cola lata',
    'Sabor original',
    '350',
    '189',
    5
  ),
  (
    'Refrigerante Pepsi 2l',
    'NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.',
    '700',
    '12',
    5
  ),
  (
    'Cerveja Heineken 600ml',
    'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado',
    '1200',
    '500',
    5
  ),
  (
    'Agua mineral sem gás',
    'Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.',
    '130',
    '478',
    5
  ),
  (
    'Vassoura',
    'Pigmento, matéria sintética e metal.',
    '2350',
    '30',
    6
  ),
  (
    'Saco para lixo',
    'Reforçado para garantir mais segurança',
    '1340',
    '90',
    6
  ),
  (
    'Escova dental',
    'Faça uma limpeza profunda com a tecnologia inovadora',
    '1000',
    '44',
    6
  ),
  (
    'Balde para lixo 50l',
    'Possui tampa e fabricado com material reciclado',
    '2290',
    '55',
    6
  ),
  (
    'Manga',
    'Rico em Vitamina A, potássio e vitamina C',
    '198',
    '176',
    1
  ),
  ('Uva', 'NÃO CONTÉM GLÚTEN.', '420', '90', 1);

insert into
  clientes (cpf, nome)
values
  ('80371350042', 'José Augusto Silva'),
  ('67642869061', 'Antonio Oliveira'),
  ('63193310034', 'Ana Rodrigues'),
  ('75670505018', 'Maria da Conceição');

delete from
  clientes
where
  cpf = '803.713.500-42';

delete from
  clientes
where
  cpf = '676.428.690-61';

delete from
  clientes
where
  cpf = '631.933.100-34';

delete from
  clientes
where
  cpf = '756.705.050-18';

insert into
  vendedores (cpf, nome)
values
  ('82539841031', 'Rodrigo Sampaio'),
  ('23262546003', 'Beatriz Souza Santos'),
  ('28007155023', 'Carlos Eduardo');

insert into
  pedidos (valor, cliente_cpf, vendedor_cpf)
values
  ('9650', '80371350042', '28007155023');

alter table
  itens_do_pedidos
add
  constraint item_id foreign key (pedido_id) references pedidos(id);

insert into
  itens_do_pedidos (pedido_id, quantidade, produtos_id) 
  values
  (2, '1', 1), 
  (2, '1', 5),
  (2, '6', 5),
  (2, '1', 6),
  (2, '5', 1);
  
  insert into 
  pedidos (valor, cliente_cpf, vendedor_cpf)
  values
  ('6460', '63193310034', '23262546003');
  
  insert into itens_do_pedidos (pedido_id, quantidade, produtos_id)
  values 
  (3, '10', 1),
  (3, '3', 1),
  (3, '5', 1),
  (3, '10', 3),
  (3, '2', 3);
  
    insert into 
  pedidos (valor, cliente_cpf, vendedor_cpf)
  values
  ('4120', '75670505018', '23262546003');
  
  insert into itens_do_pedidos (pedido_id, quantidade, produtos_id)
  values 
  (4, '1', 6),
  (4, '5', 5),
  (4, '10', 1);