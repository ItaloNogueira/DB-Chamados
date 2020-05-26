CREATE TABLE IF NOT EXISTS Mensagem(
	idMensagem SMALLINT(50) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    mensagem VARCHAR(100),
    dataMensagem DATE,
    hora TIME,
    chamadoIdUsuario SMALLINT(10),
    chamadoIdchamado SMALLINT(10),
    CONSTRAINT fk_chamadoIdUsuario FOREIGN KEY(chamadoIdUsuario) REFERENCES chamados(idUsuarios),
    CONSTRAINT fk_chamadoIdchamado FOREIGN KEY(chamadoIdchamado) REFERENCES chamados(idChamados)
);


INSERT INTO Mensagem(
	mensagem,
    chamadoIdUsuario,
    chamadoIdchamado
    
)VALUES(
	"Testando as mensagens com outro usuario",
    2,
    4
);

SELECT 
mensagem.mensagem 
as mensagem, usuarios.nome 
as nome, chamados.titulo 
as titulo 
FROM mensagem 
left join chamados
ON chamados.idChamados = mensagem.chamadoIdchamado
LEFT JOIN usuarios
ON mensagem.chamadoIdUsuario = usuarios.idUsuarios WHERE chamados.idChamados = 2 AND usuarios.idUsuarios = 2;


DROP TABLE mensagem;