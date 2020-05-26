CREATE TABLE IF NOT EXISTS Usuarios(
	idUsuarios SMALLINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	departamento VARCHAR(50),
	unidade VARCHAR(50),
	email VARCHAR(255),
    senha VARCHAR(50),
	PRIMARY KEY(idUsuarios)
);

SELECT * FROM Usuarios;

INSERT INTO Usuarios(nome, departamento, unidade, email, senha)
VALUES("Teste", "Desenvolvimento", "Morumbi", "italo@teste.com", "123");

DROP table Usuarios;