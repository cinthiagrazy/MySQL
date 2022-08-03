CREATE DATABASE DB_RH;

USE DB_RH;

CREATE TABLE TB_COLABORADORES(
ID BIGINT auto_increment,
NOME VARCHAR (255),
IDADE INT,
CARGO VARCHAR (255),
SALARIO DECIMAL,
GENERO VARCHAR (255),
primary key (ID)
);


INSERT INTO TB_COLABORADORES (NOME,IDADE,CARGO, SALARIO,GENERO) VALUES ('CASSANDRA',20,'SECRETARIA','1000.00','FEMININO');
INSERT INTO TB_COLABORADORES (NOME,IDADE,CARGO, SALARIO,GENERO) VALUES ('ALEXANDRE',27,'ENGENHEIRO DE SOFTWARE','9500.00','MASCULINO');
INSERT INTO TB_COLABORADORES (NOME,IDADE,CARGO, SALARIO,GENERO) VALUES ('MATHEUS',23,'DESENVOLVEDOR JR','3500.00','MASCULINO');
INSERT INTO TB_COLABORADORES (NOME,IDADE,CARGO, SALARIO,GENERO) VALUES ('CINTHIA',27,'DESENVOLVEDOR JR','3500.00','FEMININO');
INSERT INTO TB_COLABORADORES (NOME,IDADE,CARGO, SALARIO,GENERO) VALUES ('FILIPE',32,'ASSISTENTE DE RH','2110.00','MASCULINO');

SELECT * FROM TB_COLABORADORES WHERE SALARIO > 2000.00;

SELECT * FROM TB_COLABORADORES WHERE SALARIO < 2000.00;

UPDATE TB_COLABORADORES SET SALARIO = "2500.00" WHERE ID = 1;

SELECT * FROM TB_COLABORADORES;
