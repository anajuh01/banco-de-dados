create database mercado_online;
create schema mercado_online;
use mercado_online;

create table cliente(
id_cliente bigint primary key,
nome varchar(50),
endereço varchar(60),
email varchar(45),
celular_numero int(12),
data_nasc date
);
create table produtos(
id_produtos bigint primary key,
nome_livro varchar(65),
preco decimal (5,2),
descricao varchar(500),
qtd_estoque tinyint unsigned 
);

create table pedidos(
id_pedido bigint primary key,
num_pedido tinyint,
dt_compra date,
valor_total decimal (5,2),
dt_entrega date
);

create table itens(
qtd int,
valor_unit decimal (5,2),
valor_total decimal
);