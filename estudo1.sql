drop database if exists estudo1;

create database if not exists estudo1;

use estudo1;
create table funcionario (
nome_funcionario varchar(50) not null,
data_matricula date not null,
data_nasc date not null,
id_matricula integer auto_increment primary key not null
);

create table departamento (
nome_departamento varchar(50) not null,
valor_orc decimal(10,2) not null,
status enum('oculto','mostra'),
id_matricula_fk int not null,
foreign key (id_matricula_fk) references funcionario (id_matricula)
on delete cascade
on update cascade
);

--estrtura da tabela
describe funcionario;

--cria o index para busca
create index idx_fcn on funcionario (id_matricula);
create index idx_fcn2 on funcionario (nome_funcionario);
create index idx_dp on departamento (nome_departamento);

--inserts para exemplo
insert into funcionario(nome_funcionario, data_matricula, data_nasc) values ('Marcos Guerra','2009-09-20','1976-10-30');
insert into funcionario(nome_funcionario, data_matricula, data_nasc) values ('Taís Gama', '2007-08-01','1980-02-27');
insert into funcionario(nome_funcionario, data_matricula, data_nasc) values ('Lucas Trindade','2016-11-11', '1989-05-30');
insert into funcionario(nome_funcionario, data_matricula, data_nasc) values ('Ronaldo Gaúcho','2005-12-03', '1976-04-07');
insert into funcionario(nome_funcionario, data_matricula, data_nasc) values ('Alexandro Tadeu','2020-10-06','1975-09-10')

--pesquisa pelo id
select * from funcionario where id_matricula = 4;

--pesquisa pelo nome do funcionario
select * from funcionario where nome_funcionario = 'Alexandro';