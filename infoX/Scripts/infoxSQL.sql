-- Cria um banco de dados
create database dbinfox;

-- Escolhe o banco de dados
use dbinfox;

-- Cria uma tabela
create table tbusuarios(
	iduser int primary key,
	usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null
);

-- Descreve a tabela
describe tbusuarios;

-- Insere dados na tabela (CRUD)
-- Create
insert into tbusuarios(iduser, usuario, fone, login, senha)
values (1, 'Administrador', '9999-9999', 'admin', 'admin');

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (2, 'José de Assis', '9999-9999', 'joseassis', '123456');

insert into tbusuarios(iduser, usuario, fone, login, senha)
values (3, 'Bill Gates', '9999-9999', 'bill', '123456');

-- Exibe os dados da tabela (CRUD)
-- Read
select * from tbusuarios;

-- Modifica dados na tabela (CRUD)
-- Update
update tbusuarios set fone = '1234-5678' where iduser = 2;

-- Deleta registro na tabela (CRUD)
-- Delete
delete from tbusuarios where iduser = 3;

-- Criando tabela clientess
create table tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(50) not null,
    emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes (nomecli, endcli, fonecli, emailcli)
values ('Linus Torvalds', 'Rua Tux, 2015', '9999-9999', 'linus@linux.com');

select * from tbclientes;

select idcli as ID, nomecli as NOME, endcli as ENDEREÇO, fonecli as FONE, emailcli as EMAIL from tbclientes;

use dbinfox;

create table tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30) not null,
    valor decimal(10,2),
    idcli int not null,
    foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos (equipamento, defeito, servico, tecnico, valor, idcli)
values ('Notebook', 'Não liga', 'Troca da fonte', 'Zé', 87.80, 1);

select * from tbos;

-- Informações de duas tabelas (Inner Join)
select 
O.os, equipamento, defeito, servico, valor,
C.nomecli, fonecli 
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);