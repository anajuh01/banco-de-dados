use mercado_online;
 
select * from clientes;
insert into clientes values
( null, 'maria', 'wwwwwww@gmail.com', '000000000', '2010-04-01' ),
( null, 'jose', 'pppppp@gmail.com', '111111111', '2017-01-02' ),
( null, 'wesley', 'zzzzzzz@gmail.com', '222222222', '2025-04-03' ),
( null, 'marcio', 'ooooooooo@gmail.com', '333333333', '2024-09-04' ),
( null, 'izabella', 'kkkkkkkk@gmail.com', '444444444', '2009-05-05' ),
( null, 'ivete', 'mmmmmmmm@gmail.com', '555555555', '2013-06-15' ),
( null, 'rivaldo', 'iiiiiii@gmail.com', '666666666', '2085-07-25' ),
( null, 'irla', 'eeeeeee@gmail.com', '777777777', '2029-09-17' ),
( null, 'rafael', 'lllllllll@gmail.com', '888888888', '2050-06-28' ),
( null, 'ana', 'qqqqqqqq@gmail.com', '999999999', '2009-05-17' );

insert into produtos values
( null, 'livro', 7.50, 'livro de capa dura.', 999 ),
( null, 'caderno', 9.90, 'caderno com espiral.', 888 ),
( null, 'lapis', 10.00, 'lapis roxo.', 777 ),
( null, 'apontador', 45.60, 'apontador com deposito amarelo.', 666 ),
( null, 'fichario', 10.60, 'fichario do mickey.', 555 ),
( null, 'agenda', 17.69, 'agenda com data e capa preta.', 444 ),
( null, 'lapiseira', 25.65, 'lapiseira cinza.', 333 ),
( null, 'garrafa de agua', 27.52, 'garrafa com canudo e alça.', 222 ),
( null, 'borracha', 65.96, 'borracha branca.', 111 ),
( null, 'corretivo', 37.50, 'corretivo azul com rosa.', 120 );

select * from pedidos;
insert into pedidos values
( null, 10, '2025-04-15', 1, '2026-04-30' ),
( null, 9, '2025-05-20', 1, '2026-04-29' ),
( null, 8, '2025-07-25', 1, '2026-04-28' ),
( null, 7, '2025-12-30', 1, '2026-04-27' ),
( null, 6, '2025-08-05', 1, '2026-04-26' ),
( null, 5, '2025-11-10', 1, '2026-04-25' ),
( null, 4, '2025-03-15', 1, '2026-04-24' ),
( null, 3, '2025-10-10', 1, '2026-04-23' ),
( null, 2, '2025-09-05', 1, '2026-04-22' ),
( null, 1, '2025-12-20', 2, '2026-04-21' );

select * from itens_pedidos;
insert into itens_pedidos values
( null, 8, 5, 3, 2 ,1),
( null, 2, 5, 4, 2 ,1),
( null, 5, 4, 7, 2 ,1),
( null, 4, 4, 3, 2 ,1),
( null, 3, 6, 2, 2 ,1),
( null, 7, 6, 10, 2 ,1),
( null, 8, 7, 6, 2 ,1),
( null, 8, 7, 9, 2 ,1),
( null, 9, 9, 22, 2 ,1),
( null, 11, 20, 1, 2 ,1);

update clientes
set nome = 'maria'
where id= 09;

update produtos
set preco = 10.00
where id= 03;

update produtos
set data_compra= '2025-05-10'
where id = 05;

update id_pedidos
set valor_unitario = ( select preco from produtos where id =id_produto ),  valor_total = ( select preco*quantidade from produtos where id = id_produto )
where id = 04;

delete from pedidos where id = 04;
delete from pedidos where id = 05;
