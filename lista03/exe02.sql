 -- Criando base de dados 
 create database db_pizzaria_legal;
 
 -- Usando a base de dados
 use db_pizzaria_legal;
 
 -- Criando tabela de categorias
 create table tb_categoria(
	id bigint auto_increment,
    tamanho varchar(255),
    entrega boolean,
    primary key (id)
 );
 
-- Criando tabela de pizzas
  create table tb_pizzas(
	id bigint auto_increment, 
    nome varchar(255),
    borda varchar(255),
    valor int,
    quantidade varchar(255),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
  );

-- populando tabela de categorias 
insert into tb_categoria(tamanho,entrega)values("1 grande",true);
insert into tb_categoria(tamanho,entrega)values("1 media",false);
insert into tb_categoria(tamanho,entrega)values("1 pequena",false);
insert into tb_categoria(tamanho,entrega)values("2 media",true);
insert into tb_categoria(tamanho,entrega)values("2 pequena",true);

-- pupulando tabela de pizzas
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("frango com catupiry", "catupiry",34,1,2);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("chocolate com banana", "chocolate",67,1,4);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("bis", "chocolate",75,1,3);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("brigadeiro", "chocolate",85,1,2);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("morango", "chocolate",48,2,1);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("picanha", "catupiry",34,2,1);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("carioca", "nenhuma",100,2,1);
insert into tb_pizzas(nome,borda,valor,categoria_id,quantidade)values("bacon", "catupiry",34,4,2);
  
-- mostrando pizzas que custam mais que 45
select * from tb_pizzas where valor > 45;
  
--  mostrando pizzas que custam mais que 45
select * from tb_pizzas where valor > 50 and valor < 100;

--  mostrando pizzas que possuem a letra m no nome
select * from tb_pizzas where nome like "%m%";

-- mostrando selects com inner joins dos enunciados
select * from tb_categoria inner join tb_pizzas on tb_pizzas.id = tb_categoria.id;
select * from tb_categoria inner join tb_pizzas on tb_pizzas.id = tb_categoria.id where borda = "chocolate";



