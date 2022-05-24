create database db_quitanda;

use db_quitanda;

SET SQL_SAFE_UPDATES = 0;

drop table tb_produtos;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(6,2),
    tipo varchar(255),
    quantidade int,
    vencimento varchar(255),
	primary key (id)
);

insert into tb_produtos(nome,valor,tipo,quantidade,vencimento) values("Banana",2.00,"fruta",5,"12/05/2022");
insert into tb_produtos(nome,valor,tipo,quantidade,vencimento) values("Morango",4.00,"planta",4,"13/08/2022");
insert into tb_produtos(nome,valor,tipo,quantidade,vencimento) values("maça",1.00,"fruta",3,"28/05/2022");
insert into tb_produtos(nome,valor,tipo,quantidade,vencimento) values("Pepino",6.00,"vegetal",1,"27/05/2022");

select * from tb_produtos where tipo = "fruta";
select * from tb_produtos where tipo = "legumes";

update tb_produtos set valor = 1.25 where id = 3;

delete from tb_produtos where tipo = "verduras";