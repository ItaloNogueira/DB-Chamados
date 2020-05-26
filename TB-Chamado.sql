CREATE DATABASE IF NOT EXISTS Suporte;
USE Suporte;

CREATE TABLE IF NOT EXISTS Chamados(
	idChamados SMALLINT(10) NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(500),
	titulo VARCHAR(50),
	data_Chamado DATETIME,
	estado VARCHAR(1) DEFAULT'A',
	PRIMARY KEY(idChamados),
    idUsuarios SMALLINT,
    CONSTRAINT fk_idUsuarios FOREIGN KEY(idUsuarios) REFERENCES Usuarios(idUsuarios)
);


SELECT idChamados, descricao, titulo FROM Chamados;
SELECT idChamados, descricao, titulo FROM Chamados WHERE ID = 1;

INSERT INTO Chamados(
	titulo,
	descricao,
    idUsuarios
) VALUES (
	"Teste", 
    "Testando o banco",
    1
);

UPDATE Chamados SET 
descricao = ?, 
Titulo = ? 
WHERE id = ?;

DELETE FROM Chamados WHERE ID = 1;

create database Suporte;
DROP DATABASE Suporte;
DROP TABLE Chamados;
