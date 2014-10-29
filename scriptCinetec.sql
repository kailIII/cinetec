CREATE database cinetec;

USE cinetec;

CREATE TABLE Poltrona (
  id_poltrona INTEGER NOT NULL AUTO_INCREMENT,
  num_poltrona VARCHAR(3),
  PRIMARY KEY(id_poltrona)
);

CREATE TABLE Permissao (
  id_permissao INTEGER NOT NULL AUTO_INCREMENT,
  desc_permissao VARCHAR(20),
  PRIMARY KEY(id_permissao)
);

CREATE TABLE TipoSessao (
  idTipo_Sessao INTEGER NOT NULL AUTO_INCREMENT,
  desc_tipo_sessao VARCHAR(20),
  dub_leg_sessao VARCHAR(20),
  PRIMARY KEY(idTipo_Sessao)
);

CREATE TABLE Sala (
  id_sala INTEGER NOT NULL AUTO_INCREMENT,
  num_sala INTEGER,
  PRIMARY KEY(id_sala)
);

CREATE TABLE Filme (
  id_filme INTEGER NOT NULL AUTO_INCREMENT,
  nm_filme VARCHAR(50),
  categ_filme VARCHAR(30),
  duracao INTEGER,
  ano INTEGER,
  dir_filme VARCHAR(30),
  ator1_filme VARCHAR(30),
  ator2_filme VARCHAR(30),
  sinopse_filme VARCHAR(500),
  img_filme VARCHAR(400),
  PRIMARY KEY(id_filme)
);

CREATE TABLE DiaSemana (
  id_dia_Semana INTEGER NOT NULL AUTO_INCREMENT,
  nm_dia_semana VARCHAR(20),
  PRIMARY KEY(id_dia_Semana)
);

CREATE TABLE FormaPagamento (
  id_forma INTEGER NOT NULL AUTO_INCREMENT,
  nm_forma VARCHAR(20),
  PRIMARY KEY(id_forma)
);

CREATE TABLE Usuario (
  id_usuario INTEGER NOT NULL AUTO_INCREMENT,
  id_permissao INTEGER NOT NULL,
  nm_usuario VARCHAR(40),
  sbr_usuario VARCHAR(40),
  username VARCHAR(20),
  password VARCHAR(20),
  cpf_usuario VARCHAR(11),
  PRIMARY KEY(id_usuario),
  INDEX Usuario_FKIndex1(id_permissao),
  FOREIGN KEY(id_permissao) REFERENCES Permissao(id_permissao)
);

CREATE TABLE Sala_has_Poltrona (
  id_has_poltrona INTEGER NOT NULL AUTO_INCREMENT,
  id_poltrona INTEGER,
  id_sala INTEGER,
  isOcupado BOOL DEFAULT FALSE,
  PRIMARY KEY(id_has_poltrona),
  INDEX Sala_has_Poltrona_FKIndex1(id_sala),
  INDEX Sala_has_Poltrona_FKIndex2(id_poltrona),
  FOREIGN KEY(id_sala) REFERENCES Sala(id_sala),
  FOREIGN KEY(id_poltrona) REFERENCES Poltrona(id_poltrona)
);

CREATE TABLE Venda (
  id_venda INTEGER NOT NULL AUTO_INCREMENT,
  id_forma_pagamento INTEGER NOT NULL,
  id_usuario INTEGER NOT NULL,
  dt_venda DATE,
  vl_total_venda DOUBLE,
  PRIMARY KEY(id_venda),
  INDEX fk_usuario_venda(id_usuario),
  INDEX Venda_FKIndex2(id_forma_pagamento),
  FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario),
  FOREIGN KEY(id_forma_pagamento) REFERENCES FormaPagamento(id_forma)
);

CREATE TABLE Sessao (
  id_sessao INTEGER NOT NULL AUTO_INCREMENT,
  id_sala_has_poltrona INTEGER NOT NULL,
  id_filme INTEGER NOT NULL,
  id_tipo_sessao INTEGER NOT NULL,
  hor_sessao VARCHAR(5),
  dt_final_sessao DATE,
  PRIMARY KEY(id_sessao),
  INDEX Sessao_FKIndex1(id_sala_has_poltrona),
  INDEX Sessao_FKIndex2(id_tipo_sessao),
  INDEX Sessao_FKIndex3(id_filme),
  FOREIGN KEY(id_filme) REFERENCES Filme(id_filme),
  FOREIGN KEY(id_tipo_sessao) REFERENCES TipoSessao(idTipo_Sessao),
  FOREIGN KEY(id_sala_has_poltrona) REFERENCES Sala_has_Poltrona(id_has_poltrona)
);

CREATE TABLE SessaoDia (
  id_sessao_dia INTEGER NOT NULL AUTO_INCREMENT,
  id_sessao INTEGER NOT NULL,
  id_dia_Semana INTEGER NOT NULL,
  PRIMARY KEY(id_sessao_dia),
  INDEX SessaoDia_FKIndex1(id_sessao),
  INDEX SessaoDia_FKIndex2(id_dia_Semana),
  FOREIGN KEY(id_dia_Semana) REFERENCES DiaSemana(id_dia_Semana),
  FOREIGN KEY(id_sessao) REFERENCES Sessao(id_sessao)
);

CREATE TABLE Item_Venda (
  id_item_Venda INTEGER NOT NULL AUTO_INCREMENT,
  id_venda INTEGER NOT NULL,
  id_sessao_dia INTEGER NOT NULL,
  qtd_item INTEGER,
  tipo_item VARCHAR(15),
  vl_item DOUBLE,
  PRIMARY KEY(id_item_Venda, id_venda),
  INDEX Item_Venda_item(id_venda),
  INDEX Item_Venda_FKIndex2(id_sessao_dia),
  FOREIGN KEY(id_venda) REFERENCES Venda(id_venda),
  FOREIGN KEY(id_sessao_dia) REFERENCES SessaoDia(id_sessao_dia)
);

INSERT INTO poltrona (num_poltrona)
  VALUES ('A01'),
         ('A02'),
         ('A03'),
         ('B01'),
         ('B02'),
         ('B03');

INSERT INTO permissao (desc_permissao)
  VALUES ('Administrador'),
         ('Cliente');

INSERT INTO tiposessao (desc_tipo_sessao, dub_leg_sessao)
  VALUES ('Normal', 'Dublado'),
         ('3D', 'Dublado'),
         ('Normal', 'Legendado'),
         ('3D', 'Dublado');

INSERT INTO sala (num_sala)
  VALUES (1),  
         (2),
         (3),
         (4),
         (5);

INSERT INTO filme (nm_filme, categ_filme, duracao, ano, dir_filme, ator1_filme, ator2_filme, sinopse_filme, img_filme)
  VALUES ('Matrix', 'Ficcao', '120', '2000', 'Fulano Spilberg',
            'Keanu Reeves', 'Shaila Mob', 'Filme bem doido sobre maquinas dominando o mundo', 'url1'),
         ('Rambo', 'Acao', '90', '1986', 'Jean Claud Black',
            'Silvester Stalonne', 'Sam Neil', 'Rambo destroi, Rambo mata, Rambo esmaga', 'url2'),
         ('O Senhor dos Aneis', 'Aventura', '190', '2002', 'James Cameron',
            'Elija Wood', 'Christofer Lee', 'Historia epica sobre um hobbit fracote que leva um tempao pra destruir um anel', 'url3'),
     ('Guardiões da Galaxia', 'Aventura', '120', '2014', 'Diretor dahora',
            'Guaxinim missil', 'Thanos fodao', 'Aventura epica bem melhor do que Vingadores por que tem o Groot. Saudads Groot', 'url4'),
     ('O Teorema Zero', 'Ficcao', '100', '2013', 'Alan Turing',
            'John Cusak', 'Edward Scissorhand', 'Filme totalmente maluco sobre um codigo que supostamente decifra o significado da vida', 'url5'),
     ('O Hobbit 3', 'Aventura', '180', '2015', 'James Cameron',
            'Legolas maneiro', 'Pai do Guimli', 'Ultimo filme da trilogia aclamada por todos os fans nerds do mundo, que vai deixar gostinho de quero mais quando terminar', 'url6');

INSERT INTO formapagamento (nm_forma)
  VALUES ('Debito online'),
         ('Cartao de Credito'),
         ('Dinheiro no local');

INSERT INTO usuario (id_permissao, nm_usuario, sbr_usuario, username, password, cpf_usuario)
  VALUES (1, 'Felipe', 'Marques', 'fmarques', '12345', '22345321476'),
         (2, 'Thiago', 'Esgalha', 'esgalhathi', '54321', '39304581343'),
         (2, 'Daniel', 'Ferrari', 'dferrari', '11111', '56422234312');

INSERT INTO diasemana (nm_dia_semana)
  VALUES ('Segunda-Feira'),
         ('Terça-Feira'),
         ('Quarta-Feira'),
         ('Quinta-Feira'),
         ('Sexta-Feira'),
         ('Sabado-Feira'),
         ('Domingo');

INSERT INTO sala_has_poltrona (id_sala, id_poltrona, isOcupado)
  VALUES ( 1, null, FALSE),
         ( 2, null, FALSE),
         ( 3, null, FALSE),
         ( 4, null, FALSE),
         ( 5, null, FALSE),
         ( 1, 2, FALSE),
         ( 1, 4, TRUE),
         ( 1, 6, TRUE);

INSERT INTO sessao (id_sala_has_poltrona, id_filme, id_tipo_sessao, hor_sessao, dt_final_sessao)
  VALUES (1, 3, 1, '20:15', '2014-12-05'),
         (1, 2, 2, '22:15', '2014-12-05'),
         (1, 1, 3, '16:00', '2014-11-26'),
         (2, 4, 3, '18:00', '2014-11-26'),
         (2, 1, 2, '20:00', '2014-11-26'),
         (3, 3, 1, '12:30', '2014-10-30'),
         (3, 2, 1, '14:00', '2014-10-30'),
         (4, 2, 2, '14:30', '2014-10-30'),
         (4, 1, 3, '16:30', '2014-10-30');

INSERT INTO sessaodia (id_sessao, id_dia_semana)
  VALUES (1, 1),
         (2, 1),
         (3, 1),
         (4, 3),
         (5, 3),
         (6, 2);

INSERT INTO venda ( id_forma_pagamento, id_usuario, dt_venda, vl_total_venda)
  VALUES (2, 2, '2014-10-26', 52.50),
         (1, 3, '2014-09-01', 21.00),
         (2, 3, '2014-10-20', 21.00),
         (1, 2, '2014-10-27', 42.00);

INSERT INTO item_venda (id_venda, id_sessao_dia, qtd_item, tipo_item, vl_item)
  VALUES (1, 2, 2, 'INTEIRA', 21.00),
         (1, 2, 1, 'MEIA', 10.50),
         (2, 4, 1, 'INTEIRA', 21.00),
         (3, 4, 1, 'INTEIRA', 21.00),
         (4, 6, 2, 'INTEIRA', 21.00);