create database db_ecommerce;

use db_ecommerce;

create table tb_produto (
id bigint auto_increment,
marca varchar(255) not null,
tipo varchar(255) not null,
tamanho varchar(10) not null,
valor bigint not null,
descri varchar(255) not null,
categoria_id bigint not null,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);


create table tb_categoria (
id bigint auto_increment,
tipo varchar(100) not null,
cor varchar(30) not null,
sub varchar(50) not null,

primary key (id)
);


select * from tb_produto;
select * from tb_categoria;

/* Tabela Cateoria , inserir Dados */
insert into tb_categoria (tipo,cor,sub)
values
/*Categoria 01*/
("Uniforme Time","Preto","Promoção"),
/*Categoria 02 */
("Casual","Branco","Promoção"),
/*Categoria 03*/
("Esporte","Azul","Novidades"),
/*Categoria 04*/
("Mulheres","Vermelho","Exclusivo"),
/*Categoria 05*/
("Banho","Branco","Promoção");


/*Tabela produtos*/

insert into tb_produto (marca,tipo,tamanho,valor,descri,categoria_id)
values
/*Produto 01*/
("Nike","Camisa","G",250,"Barcelona",1),
/*Produto 02*/
("Adidas","Camisa","M",250,"Real Madrid",1),
/*Produto 03*/
("Adidas","Camisa","G",250,"São Paulo",1),
/*Produto 04*/
("Armani","Camisa","M",2000,"Camisa Polo",2),
/*Produto 05*/
("Calvin Klein","Calça","42",2500,"Jeans",2),
/*Produto 06*/
("Tommy","Relógio","Único",5000,"Sem informação",2),
/*Produto 07*/
("Mith","Regata","G",80,"Sem informação",3),
/*Produto 08*/
("Mith","Shor","42",55,"Sem informação",3),
/*Produto 09*/
("Adidas","Calça","40",100,"Sem informação",3),
/*Produto 10*/
("Marisa","Vestido","M",150,"Sem informação",4),
/*Produto 11*/
("Renner","Calça","36",85,"Slim",4),
/*Produto 12*/
("Forever 21","Short","36",55,"Sem informação",4),
/*Produto 13*/
("Linha K","Toalha","Único",20,"Sem informação",5),
/*Produto 14*/
("Kacyumara","Toalha de Rosto","Único",10,"Sem informação",5),
/*Produto 15*/
("Teka","Roupão","Único",80,"Sem informação",5);



select marca,tipo,valor from tb_produto where valor >= 2000;

select marca,tipo,valor from tb_produto where valor < 2000;

select * from tb_produto where tipo like "C%";


