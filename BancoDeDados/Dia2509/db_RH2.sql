create database db_RH2;
use db_RH2;

create table tb_funcionario (
id bigint auto_increment,
nome varchar(255) not null,
endereco varchar(255) not null,
telefone bigint not null,
salario float not null,
cargo_id bigint not null,

primary key (id),
foreign key (cargo_id) references tb_cargo (id)

);

create table tb_cargo (
id bigint auto_increment,
cargo varchar(50) not null,
turno varchar(20) not null,
descri varchar(150) not null ,
primary key (id)
);

select * from tb_funcionario;
select * from tb_cargo;



/* Tabela Cargo , inserir Dados */
insert into tb_cargo (cargo,turno,descri)
values
/*Cargo 01*/
("Desenvolvedor Java JR ","Manhã","Sala A"),
/*Cargo 02 */
("Desenvolvedor Java SR ","Manhã","Sala B"),
/*Cargo 03*/
("Front-End ","Noite","Sala C"),
/*Cargo 04*/
("Back-End ","Tarde","Sala D"),
/*Cargo 05*/
("Scrum Master ","Tarde","Sala E");

select * from tb_funcionario;


insert into tb_funcionario (nome,endereco,telefone,salario,cargo_id)
values
/*Funcionario 01*/
("Matheus Bezerra","Rua inacio alvarez",11975088214,7000,1),
/*Funcionario 02*/
("Jose almeida","Londres",00000000001,2000,2),
/*Funcionario 03*/
("Gabriella Barbosa","Rua são joaquin",00000000002,5000,3),
/*Funcionario 04*/
("Silvana Barbosa","New York",00000000003,2000,4),
/*Funcionario 05*/
("Theodoro","Rio de janeiro",00000000004,10000,5),
/*Funcionario 06*/
("Lucas","São paulo",00000000005,1000,2),
/*Funcionario 07*/
("Mateus Jesus","Barcelona",00000000006,2000,4),
/*Funcionario 08*/
("Valber","Paris",00000000007,1500,1),
/*Funcionario 09*/
("Augusto miranda","Barcelona",00000000008,1300,1),
/*Funcionario 10*/
("Isabela","Madrid",00000000009,20000,5),
/*Funcionario 11*/
("Heitor","São paulo",00000000010,9000,5),
/*Funcionario 12*/
("Jonas","Amazonas",00000000011,2500,3),
/*Funcionario 13*/
("Wesley","Rio Grande do sul",00000000012,3100,4),
/*Funcionario 14*/
("Vinicius","Santa Catarina",00000000013,1000,1),
/*Funcionario 15*/
("Junior","Bahia",00000000014,2500,2);

update tb_funcionario set nome = "Cristina" where id = 2;

select nome,salario from tb_funcionario where salario >= 2000;

select nome,salario from tb_funcionario where salario < 2000;

select * from tb_funcionario where nome like "C%";


