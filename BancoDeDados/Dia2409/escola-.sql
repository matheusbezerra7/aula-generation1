create database escola;

use escola;

create table alunos (
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
serie varchar(20) not null,
turma varchar(20) not null,
nota int not null,
primary key (id)
);

select * from alunos;


/* Aluno 01 */
insert into alunos (nome,idade,serie,turma,nota)
values 
("Matheus",18,"8º","A",10);

/* Aluno 02 */
insert into alunos (nome,idade,serie,turma,nota)
values 
("Neymar",20,"3º","B",7);

/* Aluno 03 */
insert into alunos (nome,idade,serie,turma,nota)
values 
("Alexandre Magno",16,"1º","C",8);

/* Aluno 04 */
insert into alunos (nome,idade,serie,turma,nota)
values 
("Chris bumstead",17,"2º","D",4);

/* Aluno 05 */
insert into alunos (nome,idade,serie,turma,nota)
values 
("Harvey Specter",14,"7º","E",2);

/* teste
 delete from alunos where id = 2 ; */
 
select nome,serie,turma,nota from alunos where nota >=7;
select nome,serie,turma,nota from alunos where nota <7;


update alunos set nota = 7 where id =6;

select * from alunos;