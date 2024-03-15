CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE clientes(
pk_idclientes int PRIMARY KEY,
nome varchar (100) NOT NULL,
endereço varchar (100) NOT NULL,
telefone varchar (11) NOT NULL
);

CREATE TABLE pedidos(
pk_idpedidos int PRIMARY KEY,
data_hora datetime NOT NULL,
valor_total decimal NOT NULL,
fk_pk_idclientes int,

FOREIGN KEY (fk_pk_idclientes) REFERENCES clientes (pk_idclientes)
);

CREATE TABLE bebidas(
pk_idbebidas int PRIMARY KEY,
nome varchar (20) NOT NULL,
descricao varchar (40) NOT NULL,
preco decimal NOT NULL
);

CREATE TABLE pizzas(
pk_idpizzas int PRIMARY KEY,
nome varchar (20) NOT NULL,
preco decimal NOT NULL,
fk_pk_idmassas int,
fk_pk_idbordas int,
fk_pk_idsabores int,

FOREIGN KEY (fk_pk_idmassas) REFERENCES massas (pk_idmassas),
FOREIGN KEY (fk_pk_idbordas) REFERENCES bordas (pk_idbordas),
FOREIGN KEY (fk_pk_idsabores) REFERENCES sabores (pk_idsabores)
);

CREATE TABLE massas(
pk_idmassas int PRIMARY KEY,
descricao varchar (30) NOT NULL
);

CREATE TABLE bordas(
pk_idbordas int PRIMARY KEY,
descricao varchar (30) NOT NULL
);

CREATE TABLE sabores(
pk_idsabores int PRIMARY KEY,
descricao varchar (30) NOT NULL
);


CREATE TABLE itens_pedidos(
pk_itenspedidos int PRIMARY KEY,
quantidade int NOT NULL,
fk_pk_idpizzas int,
fk_pk_idpedidos int,

FOREIGN KEY (fk_pk_idpizzas) REFERENCES pizzas (pk_idpizzas),
FOREIGN KEY (fk_pk_idpedidos) REFERENCES pedidos (pk_idpedidos)

);

CREATE TABLE fornadas(
pk_idfornadas int PRIMARY Key,
data_hora_inicio datetime,
data_hora_fim datetime
);





