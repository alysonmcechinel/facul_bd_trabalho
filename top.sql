INSERT into app_login (id_login, email_login, senha_login, id_usuario)
values (1,'braia@hotmail.com','braia123',1);
	   (2,'teste@gmail.com','456123',1);
	   (3,'josefino@gmail','logitecH78',2);
	   (4,'Pegatudo@gmail.com','Caiotales',3);
	   (5,'PauloCachaca@gmail.com','12345678',4);
	   (6,'braia@goleiro.com','Avisotop',5);
	   (7,'Caiojose@yahoo.com','JoseCaio',6);
	   
INSERT Into app_tipo_usuarios (idtipo_usuario, descricao, ativo)
values (1, 'Goleiro', 1);
	   (2, 'Time', 1);
       
INSERT Into app_sexos (id_tiposexo, descricao, ativo)
values (1, 'Masculino', 1);
	   (2, 'Feminino', 1);	   
	   
**********************************************************************************************
create table app_login
(
    id_login         INT NOT NULL,
    email_login      VARCHAR(80)  NOT NULL,
    senha_login      VARCHAR(40)  NOT NULL,
    id_usuario    		 INT          NOT NULL,
    CONSTRAINT fk_login_usuario FOREIGN KEY (id_usuario)
    REFERENCES app_usuarios (id_usuario),
    PRIMARY KEY (id_login)
);

CREATE table app_usuarios(
	id_login         INT NOT NULL,
	nome 			varchar(50) not null,
	PRIMARY KEY (id_login)
);

CREATE table app_jogos(
id_jogo int not null,
descricao varchar(45),
primary key (id_jogo)
);

INSERT into app_jogos (id_jogo, descricao)
values (1,'Teste');
	   (2,'Pinheirao');
       (3,'Criciuma');
       (4,'FOrka');
       (5,'Useall');
       (6,'Taxi');

CREATE table app_alugueis(
	id_aluguel 	INT NOT NULL,
	id_jogo 	int not null,
	descricao 	varchar(4000) not null,
	nota 		decimal(4,2),
	CONSTRAINT fk_jogo FOREIGN KEY (id_jogo) REFERENCES app_jogos (id_jogo),
	PRIMARY KEY (id_aluguel)
);

DELETE from app_alugueis

INSERT into app_alugueis(id_aluguel, id_jogo, descricao, nota)
values (1,1,'o cara jogou muito bem nada a declarar',7.28),
(2,2,'Muito bom',10),
(3,3,'Deitou muito com jogar com esses cara',9.33),
(4,4,'Só reclamou poderia fechar a boca',6),
(5,5,'Jogou bem porem tomou alguns gols bobos',8);

CREATE  table app_sexos(
	id_tiposexo INT NOT NULL,
	descricao varchar(10),
	ativo char(1),
	PRIMARY KEY (id_tiposexo)
);

create table app_tipo_usuarios(
	idtipo_usuario int not null,
	descricao varchar(45) not null,
	ativo char(1),
	primary key (idtipo_usuario)
);

DELETE from app_tipo_usuarios

INSERT Into app_tipo_usuarios (idtipo_usuario, descricao, ativo)
values (1, 'Goleiro', 1);
	   (2, 'Time', 1);
       
INSERT Into app_sexos (id_tiposexo, descricao, ativo)
values (1, 'Masculino', 1);
	   (2, 'Feminino', 1);

INSERT into app_usuarios (id_login, nome)
values (1,'Teste');
	   (2,'Alyson');
       (3,'Jao');
       (4,'Bruno');
       (5,'Pacheco');
       (6,'Braia');
	  
INSERT into app_login (id_login, email_login, senha_login, id_usuario)
values (1,'braia@hotmail.com','braia123',1);
	   (2,'teste@gmail.com','456123',1);
	   (3,'josefino@gmail','logitecH78',2);
	   (4,'Pegatudo@gmail.com','Caiotales',3);
	   (5,'PauloCachaca@gmail.com','12345678',4);
	   (6,'braia@goleiro.com','Avisotop',5);
	   (7,'Caiojose@yahoo.com','JoseCaio',6);

INSERT into app_jogos (id_jogo, descricao, data, horario, id_campo, id_usuario, id_usuario_goleiro, ativo)
values (1,'Jogo com os parcas','01.01.1999',0420,1,1,null,1),
--(1,'Procurando goleiro tranquilo','10.04.1999',0420,1,6,null,1),
--(1,'Jogo vai ser pegado procurando jogador bom','02.05.2020',0800,1,7,1,2),
--(1,'Jogo com os parcas','01.01.1999',0420,1,2,null,1),
--(1,'Jogo com os parcas','01.01.1999',0420,1,4,null,1);--verificar oque cada um realmente faz.


create table app_jogos(
id_jogo int not null, 
descricao varchar(50), 
data date, 
horario int (4), 
id_campo int, 
id_usuario int not null, 
id_usuario_goleiro int, 
ativo char(1),
primary key(id_jogo)
);
	   