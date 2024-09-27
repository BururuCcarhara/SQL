create database gersalario_1e;
use gersalario_1e;

create table cargo(
cargo_id integer auto_increment primary key not null,
nome varchar (50) not null,
salario decimal (10,2) not null,
descricao varchar (100)
);

create table funcionario(
id_fun integer auto_increment primary key not null,
nome varchar (50) not null,
sobrenome varchar (50) not null,
email varchar (50) not null,
cargo_id integer not null,
data_contatacao date not null,
foreign key (cargo_id) references cargo(cargo_id)
);


insert into cargo (nome, salario, descricao)
values ("DEV front end", 11000.00, "trabalha na interfase"),
		("DEV back end", 15000.00, "trabalha nos bastidores"),
		("DEV full strack", 20000.00, "trabalha em ambos");
        
select*from cargo;
 

 
insert into funcionario(nome, sobrenome, email, cargo_id, data_contatacao)
values("Ariovaldo", "Da costa", "AriEtonemai@gmail,com", 3,"2024-09-25"),
	("jucefina", "De Oliveira", "jujudopix@gmail,com", 2,"2024-09-25"),
	("lukaos", "Perereira", "Pereira@gmail,com", 2,"2024-09-25"),
    ("Samuel", "Rodrigal", "Macaco@gmail,com", 3,"2024-09-25"),
    ("Loya", "Koala", "Ccarhua@gmail,com", 1,"2024-09-25");
    
 where id=1;
select*from funcionario;
where data_contratacao= "2024-09-25";

update funcionario
set data_contratacao="2024-09-24"
where id=1
