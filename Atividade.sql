create database BancoDeDados_1e;
use BancoDeDados_1e;

create table dependente (
    id_depen integer auto_increment primary key not null,
    nome varchar(50),
    cpf varchar(50)
);

create table cliente (
    id_Cliente integer auto_increment primary key not null,
    nome varchar(50) not null,
    cpf varchar(50) not null,
    telefone varchar(50),
    id_depen integer not null,
    endereco varchar(50),
    rg varchar(50),
    foreign key (id_depen) references dependente(id_depen)
);

insert into dependente (nome, cpf)
values 
    ("loya", "66"),
    ("koala", "67"),
    ("burz", "68"),
    ("uaca", "69"),
    ("juju", "70"),
    ("jojo", "71"),
    ("pedro", "72"),
    ("flamingo", "73");

insert into cliente (nome, cpf, rg, telefone, endereco, id_depen)
values 
    ("joaquim", "22222", "454545", "25", "rua 1", 1),
    ("ronaldo", "33333", "232323", "26", "rua 2", 2),
    ("jaca preta", "44444", "595959", "27", "rua 3", 3),
    ("lilica", "55555", "787878", "28", "rua 4", 4),
    ("romaria", "66666", "121212", "29", "rua 5", 5);

select * from cliente;
select * from dependente;

delete from dependente
 where id_depen = 4;
delete from dependente 
where id_depen = 5;
delete from dependente 
where id_depen = 6;

update cliente
set nome = "joaquim"
where id_Cliente = 1;

update cliente
set nome = "jonaldo"
where id_Cliente = 2;

update cliente
set nome = "jaca preta"
where id_Cliente = 3;

update dependente 
set endereco = "rua 1", cpf = "avenida 1"
where id_depen = 1;

update cliente
set endereco = "avenida 2"
where id_Cliente = 2;

update cliente
set endereco = "avenida 3"
where id_Cliente = 3;
