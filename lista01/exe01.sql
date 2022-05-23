create database colaboradoreRH;

use colaboradoreRH;

create table tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255),
	idade int(4),
    experiencia boolean,
    formacao varchar(255),
    salario decimal (7,2),
    primary key (id)
);


insert into tb_colaboradores(nome,idade,experiencia,formacao,salario) values("Gustavo",25,true,"Psicologia",5000.00);
insert into tb_colaboradores(nome,idade,experiencia,formacao,salario) values("Freud",28,true,"Ciencias sociais",4000.00);
insert into tb_colaboradores(nome,idade,experiencia,formacao,salario) values("josé",29,true,"Psicologia",8000.00);
insert into tb_colaboradores(nome,idade,experiencia,formacao,salario) values("Gabriel",24,true,"Ciencias sociais",2000.00);
insert into tb_colaboradores(nome,idade,experiencia,formacao,salario) values("Leonardo",17,false,"Sem formação",1000.00);

select * from tb_colaboradores where salario<2000;
select * from tb_colaboradores where salario>2000;

update tb_colaboradores set idade = 26 where id = 1;


