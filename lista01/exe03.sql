create database db_registroEscolar;

use db_registroEscolar;

create table tb_estudante(
	id bigint auto_increment,
    nome varchar(255),
    nota decimal(4,2),
    preferencia varchar(255),
    primary key(id)
);

insert into tb_estudante(nome,nota,preferencia) values ("Leonardo",0,"Exatas");
insert into tb_estudante(nome,nota,preferencia) values ("Andrei",10,"Humanas");
insert into tb_estudante(nome,nota,preferencia) values ("Luciana",10,"Biologicas");
insert into tb_estudante(nome,nota,preferencia) values ("Luis",0,"Exatas");
insert into tb_estudante(nome,nota,preferencia) values ("Gabriele",10,"Humanas");
insert into tb_estudante(nome,nota,preferencia) values ("Lairton",10,"Biologicas");
insert into tb_estudante(nome,nota,preferencia) values ("Luan",10,"Humanas");
insert into tb_estudante(nome,nota,preferencia) values ("Cristiano",0,"Exatas");

select * from tb_estudante where nota > 7 ;
select * from tb_estudante where nota < 7 ;

update tb_estudante set nota = 10 where id = 8;