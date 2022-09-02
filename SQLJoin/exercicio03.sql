create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id BIGINT auto_increment,
nome varchar(255),
arma varchar(255),
descricao varchar(1000),
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255), 
raca varchar(255),
hp int, 
especial varchar(255),
primary key(id),
classe_id bigint,
foreign key(classe_id) references tb_classe(id)
);

insert into tb_classe (nome, arma, descricao) values ('ladrao', 'adaga', 'rouba');
insert into tb_classe (nome, arma, descricao) values ('mago', 'cajado', 'cura');
insert into tb_classe (nome, arma, descricao) values ('guerreiro', 'martelo', 'defesa');
insert into tb_classe (nome, arma, descricao) values ('fada', 'varinha', 'velocidade');
insert into tb_classe (nome, arma, descricao) values ('lutador', 'espada', 'dano');

insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('gargola', 'humano', 2000, "super espadada", 5);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('loren', 'humano', 1000, "raio de luz", 2);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('morgana', 'elfo', 1200, "prisao",2);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('laon', 'elfo', 900, "engrandecer", 4);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('kay', 'humano', 1500, "protecao", 3);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('zed', 'ninja', 1400, "sombra", 1);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('silio', 'macaco', 1900, "giro", 5);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('kronk', 'elfo', 2000, "super martelada", 3);
insert into tb_personagem (nome, raca, hp, especial, classe_id) values ('larapion', 'cavalo', 2000, "arrancada", 5);

SELECT * FROM tb_personagem WHERE hp >= 2000;
SELECT * FROM tb_personagem WHERE hp < 2000 and hp>1000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";
select * from tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.classe_id;
select * from tb_personagem INNER JOIN tb_classe on tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.nome = "mago";