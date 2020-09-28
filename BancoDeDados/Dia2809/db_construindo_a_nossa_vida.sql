create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_produto (
id bigint auto_increment,
prod varchar(255) not null,
mat varchar(100) not null,
cor varchar(50) not null,
estoque bigint not null,
preco float not null,

cat_id bigint not null,

primary key(id),
foreign key (cat_id) references tb_categoria(id)
);

create table tb_categoria (
id bigint auto_increment,
marca varchar(100) not null,
tipo varchar(100) not null,
op varchar(100) not null,

primary key (id)

);


select * from tb_produto;
select * from tb_categoria;


insert into tb_categoria(marca,tipo,op)
values
/*Categoria 01*/
("Leroy Merlin","Construção","Promoção"),
/*Categoria 02*/
("Leroy Merlin","Banheiro","Novidades"),
/*Categoria 03*/
("Amanco","Canos","Promoção"),
/*Categoria 04*/
("Amanco","Eletro","Novidade"),
/*Categoria 05*/
("Leroy Merlin","Mandeira","Novidade")
;

insert into tb_produto (prod,mat,cor,estoque,preco,cat_id)
values
/*Produto 01*/
("Cimento","Cimento","Cinza",2000,24.90,1),
/*Produto 02*/
("Argamassa","Porcelanato","Cinza",3000,19.79,1),
/*Produto 03*/
("Vaso Sanitário","Prcelana","Branco",20000,169.80,2),
/*Produto 04*/
("Torneira Pia","Plástico","Branco",5000,159.90,2),
/*Produto 05*/
("NOVAFORT GD","Plástico","Branco",100000,10.00,3),
/*Produto 06*/
("PBA","Plástico","Marrom",220000,5.00,3),
/*Produto 07*/
("Lava e Seca","Aço","Cinza",500,3.888,4),
/*Produto 08*/
("Porta","Madeira","Marrom",1000,120.00,5);

update tb_produto set preco = 3800 where id =7;

select prod,preco from tb_produto where preco >50.0 ;

select prod,preco from tb_produto where preco between 3 and 60;

select * from tb_produto where prod like "ci%";

/* inner join*/
select *
from tb_produto as a
inner join tb_categoria as b
on a.cat_id = b.id;

/*Produto com mesma categoria*/
select tb_produto.prod,tb_categoria.tipo from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.cat_id 
where tb_categoria.tipo = "Construção";









