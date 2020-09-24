

use servico_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
endereco varchar(255) not null,
telefone bigint not null,
idade int not null,
salario float not null,
primary key(id)
);


/* Pessoa 01*/
insert into tb_funcionarios(nome,endereco,telefone,idade,salario)
values
("Matheus Bezerra","Rua Inacio Alvares",11975088214,24,1500);

/* Pessoa 02*/
insert into tb_funcionarios(nome,endereco,telefone,idade,salario)
values
("Neymar","Paris Saint Germain",1197359887,28,36800000000);
select * from  tb_funcionarios;

/* Pessoa 03*/
insert into tb_funcionarios(nome,endereco,telefone,idade,salario)
values
("Alexandre Magno Abrão","Santos",1197333447,28,1000);
select * from  tb_funcionarios;

/* Pessoa 04*/
insert into tb_funcionarios(nome,endereco,telefone,idade,salario)
values
("Harvey Specter","New York",119733887,47,1000000);
select * from  tb_funcionarios;

/* Pessoa 05*/
insert into tb_funcionarios(nome,endereco,telefone,idade,salario)
values
("Theodoro","Rua cachorrinho",119453887,18,1800);




select * from  tb_funcionarios;

select nome,salario from tb_funcionarios where salario >= 2000;

select nome,salario from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 9000000 where id = 4;
update tb_funcionarios set salario = 9000 where id = 1;



