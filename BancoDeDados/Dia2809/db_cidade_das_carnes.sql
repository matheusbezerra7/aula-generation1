create database db_cidade_carnes;

use db_cidade_carnes;

create table tb_produto (
id  bigint auto_increment,
carne varchar(100) not null,
cor varchar(50) not null,
textura varchar(50) not null,
gord bit not null,
preco float not null,
cat_id bigint not null,

primary key(id),
foreign key (cat_id) references tb_categoria (id)

);

create table tb_categoria (
id bigint auto_increment,
tipo varchar(50) not null,
qual varchar(50) not null,
descri varchar(200) not null,
primary key(id)
);


select * from tb_produto;
select * from tb_categoria;

insert into tb_categoria (tipo,qual,descri)
value
/*Categoria 01*/
("Carne Bovina","Tipo A","Sem informação"),
/*Categoria 02*/
("Carne Porco","Tipo A","Sem informação"),
/*Categoria 03 */
("Carne Seca","Tipo A","Sem informação"),
/*Categoria 04 */
("Frango","Tipo A,B","Sem informação"),
/*Categoria 05 */
("Hambúrguer‎","Tipo A,B","Sem informação");


insert into tb_produto (carne,cor,textura,gord,preco,cat_id)
values
/*Produto 01*/
("Patinho","Vermelha","Macia",0,10.00,1),
/*Produto 02*/
("Bife","Vermelha","Macia",1,30.00,1),
/*Produto 03*/
("Bisteca","Vermelha","Pouca Maciez",1,15.00,2),
/*Produto 04*/
("Coxão-duro","Vermelha","Sem Maciez",1,17.00,2),
/*Produto 05*/
("Bisteca","Vermelha","Macia",0,60.00,1),
/*Produto 06*/
("Peito de Frango","Branca","Macia",0,20.00,4),
/*Produto 07*/
("Salmão","Branca","Macia",0,70.00,5),
/*Produto 08*/
("Presunto","Sem informação","Macia",1,3.00,3);

update tb_categoria set tipo = "Embutidos" where id = 3;
update tb_categoria set tipo = "Peixe" where id = 5;


select carne,preco from tb_produto where preco >= 50;

select carne,preco from tb_produto where preco between 3 and 60;

select * from tb_produto where carne like "co%";

/* inner join*/
select a.carne, b.tipo , a.preco
from tb_produto as a
inner join tb_categoria as b
on a.cat_id = b.id;


/*Carnes que são bovinas*/
select tb_produto.carne,tb_categoria.tipo from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.cat_id 
where tb_categoria.tipo = "Peixe";












