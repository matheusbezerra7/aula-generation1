create database ecommerce ;

use ecommerce;

create table produtos (
id bigint auto_increment,
marca varchar(255) not null,
tipo varchar(255) not null,
tamanho varchar(10) not null,
valor bigint not null,
descri varchar(255) not null,
primary key(id)
);

select * from produtos;


/* Produto 01*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Adidas","Tênis",42,3500,"Yeezy Boost");

/* Produto 02*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Adidas","Tênis",38,800,"Casual");


/* Produto 03*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Adidas","Camisa","G",60,"Branca");


/* Produto 04*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Nike","Time","M",250,"Barcelona");


/* Produto 05*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Nike","Boné","Único",150,"Preto");


/* Produto 06*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Nike","Tênis","41",900,"Air Max");



/* Produto 07*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Adidas","Calça","40",210,"Preto");



/* Produto 08*/

insert into produtos(marca,tipo,tamanho,valor,descri) 
values
("Nike","Bolsa","Único",180,"Azul");


select marca,tipo,tamanho,descri,valor from produtos where valor >= 500;

select marca,tipo,tamanho,descri,valor from produtos where valor < 500;

update produtos set descri = "Azul Marinho" where id = 8;

select * from produtos;