create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_curso (
id bigint auto_increment,
nome varchar(255) not null,
carga bigint not null,
vagas bigint not null,
inicio date not null,
valor float not null,
cat_id bigint not null,

primary key (id),
foreign key (cat_id) references tb_categoria (id)
);

create table tb_categoria(
id bigint auto_increment,
escola varchar(200) not null,
tipo varchar(200) not null,
nivel varchar(200) not null,

primary key(id)
);

select * from tb_curso;
select * from tb_categoria;

insert into tb_categoria (escola,tipo,nivel)
values
/*Categoria 01*/
("Generation","Informática","Bootcamp"),
/*Categoria 02*/
("Senai","Desing","Técnico"),
/*Categoria 03*/
("Senac","Saúde","Graduação"),
/*Categoria 04*/
("Senac","Idiomas","Livre"),
/*Categoria 05*/
("Etec","Artes","Técnico");



insert into tb_curso (nome,carga,vagas,inicio,valor,cat_id)
values
/*Curso 01*/
("Desenvolvedor Java",80,35,20201205,200.50,1),
/*Curso 02*/
("Design de Interiores",50,20,20201005,300,2),
/*Curso 03*/
("Nutrição",80,15,20200929,400,3),
/*Curso 04*/
("Enfermagem",100,25,20210110,370,3),
/*Curso 05*/
("Inglês",300,40,20210211,1000,4),
/*Curso 06*/
("Espanhol",300,40,20210215,1000,4),
/*Curso 07*/
("Francês",350,20,20210320,1000,4),
/*Curso 08*/
("Tratamento de Imagem Digital para Fotógrafos",100,32,20210420,500,5);


select nome,valor from tb_curso where valor >= 50;

select nome,valor from tb_curso where valor between 3 and 60;

select * from tb_curso where nome like "%Jav%";


select a.nome,b.tipo
from tb_curso as a 
inner join tb_categoria as b
on a.cat_id = b.id;

/*procurar por tipo*/
select tb_curso.nome,tb_categoria.tipo from tb_curso
inner join tb_categoria on tb_categoria.id = tb_curso.cat_id 
where tb_categoria.tipo = "Informática";










