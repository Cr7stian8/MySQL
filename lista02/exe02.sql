create database db_brecho;

use db_brecho;

set SQL_SAFE_UPDATES = 0;

drop table tb_produtos;

create table tb_produtos(
	id bigint auto_increment,
	nome varchar(255), 
    tamanho varchar (255),
    valor decimal(10,2),
    cor varchar(255),
    marca varchar (255),
    primary key(id)
);

insert into tb_produtos(nome,tamanho,valor,cor,marca) values("camisa","G",25.00,"Vermelha","maresia");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("camisa","GG",1000.00,"Vermelha","lacoste");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("bermuda","M",150.00,"Vermelha","nike");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("calca","G",25.00,"Vermelha","gucci");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("bolsa","pequena",25000.00,"Vermelha","dior");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("tenis","42",205.00,"Vermelha","adidas");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("blusa","G",25.00,"Vermelha","puma");
insert into tb_produtos(nome,tamanho,valor,cor,marca) values("tenis","41",500.00,"Vermelha","vans");


select * from tb_produtos where valor > 50;
select * from tb_produtos where valor < 50;
select * from tb_produtos where id = 2;

update tb_produtos set valor = 7000.00 where id = 4;

delete from tb_produtos where id = 2;
delete from tb_produtos where id = 3;
