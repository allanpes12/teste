#create database TesteWK;

#use TesteWK;


CREATE TABLE Cliente
(
    Codigo_Cliente int(10) NOT NULL AUTO_INCREMENT,
    Nome varchar(100),
    UF varchar(100),
    Cidade varchar(50),
    PRIMARY KEY (Codigo_Cliente) 
);

INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('CARLITO TEODORO DE MORAIS', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('SOLO MAQUINAS', 'MT', 'CANARANA');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('GUAIRMAQ', 'SP', 'GUAIRA');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('CENTRO OESTE MAQUINAS', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('MATAO AGRICOLA DE RONDONOPOLIS', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('MB MATAO AGRICOLA', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('AUTO ELETRICA PEZAO', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('MATAO AGRICOLA DE CASA BRANCA', 'SP', 'CASA BRANCA');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('ASA MAQUINAS', 'MT', 'DIAMANTINO');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('MADEREIRA PAULISTA', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('SHOPPING PECAS', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('PARANA PECAS AGRICOLAS LTDA', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('CASTRO TEODORO DE MORAIS', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('VERDE PEÇAS AGRICOLAS LTDA', 'MT', 'PRIMAVERA DO LESTE');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('ESKIMO DISTRIBUIDORA LTDA', 'MT', 'PRIMAVERA DO LESTE');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('MATAO AGRICOLA DE BALSAS', 'MA', 'BALSAS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('RODOAGRO TRANSPORTES', 'MT', 'RONDONOPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('LM MEIRA ROCHA', 'MT', 'ARENAPOLIS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('SONHO E CASA', 'MA', 'BALSAS');
INSERT INTO Cliente (Nome, UF, CIdade) VALUES ('EVERTON BERGOLI TRENTINI', 'MT', 'ALTO GARCAS');



CREATE TABLE Produtos
(
    Codigo_Produto int(10) NOT NULL  AUTO_INCREMENT,
    Descricao varchar(255),
    PrecoVenda double,
    PRIMARY KEY (Codigo_Produto) 
);



INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('CNX  3/4 1/2X2', '22.578');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('CNX FG 7/16 1/4X2', '25.41');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('CABO TRATOMETRO D6NN-17365-A F', '0');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('PARAF. FACAO ROCADEIRA LAVRALE', '32.723');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('JUNTA CARTER 6600/6610 AMIANTO', '58466.5');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('JUNTA TAMPA VALVULAS F-6600 C7', '0');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('MARCADOR COMBUSTIVEL E4NN-9207', '0');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('BRACADEIRA ROSCA ADUBO 0501017', '2.235');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('REDUCAO S-55 NH', '9.308');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('POLIA CQ-00078', '55.851');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('ENGR. Z13 ASA 60 ESTIC. DQ-023', '29.941');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('RAIO FERRO MOLINETE MAIOR DQ12', '12.02');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('FIXADOR TAMPA CX. NAVALHA 3233', '6.005');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('ACIONAMENTO CX PENEIRA TC', '67');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('ROL. BBA HIDR. BOSCH 6909', '49.872');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('TAMPA LATERAL ESPENSAO 365353', '43.611');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('COXIM H-80197', '2.327');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('ROL. 1212K FAG', '171.009');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('RETENTOR 00272-BR IMASA 45/60/', '5.312');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('RETENTOR 00191-BR 25/41.15/9.5', '5.573');
INSERT INTO Produtos (Descricao,PrecoVenda) VALUES ('FLANGE S.20123', '2.607');



CREATE TABLE Dados_Pedido
(
    N_Pedido int(10) NOT NULL AUTO_INCREMENT,
    Data_Emitir Date,
    ValorTotal double,
    fk_Cliente int(10),
    
	PRIMARY KEY (N_Pedido),
	FOREIGN KEY (fk_Cliente) REFERENCES Cliente(Codigo_Cliente)
 
);




CREATE TABLE Produto_Pedido
(
    autoincrem int(10) NOT NULL AUTO_INCREMENT,
    N_Pedido_P int(10),
    Qtde double,
    ValorUN double,
    PP_ValorTotal double,
    fk_N_Pedido int(10),
	Codigo_ProdutoP int(10),
    

    PRIMARY KEY (autoincrem),
    FOREIGN KEY (fk_N_Pedido) REFERENCES Dados_Pedido(N_Pedido)

    
);

SET foreign_key_checks = 0;
