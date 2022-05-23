CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    valor DECIMAL(10,2),
    marca VARCHAR(255),
    quantidade INT,
    cor VARCHAR(255),
    PRIMARY KEY (id)
)

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto,valor,marca,quantidade,cor) VALUES("camisa",200.00,"Lacoste","1","Rosa");
INSERT INTO tb_produtos(produto,valor,marca,quantidade,cor) VALUES("camisa",20,"Maresia","1","Preta");
INSERT INTO tb_produtos(produto,valor,marca,quantidade,cor) VALUES("camisa",2000.00,"Gucci","1","Vermelha");

SELECT * FROM tb_produtos WHERE valor>500; 
SELECT * FROM tb_produtos WHERE valor<500; 

UPDATE tb_produtos SET quantidade = 2 WHERE id = 1;

ALTER TABLE tb_produtos
MODIFY valor DECIMAL(10,2);