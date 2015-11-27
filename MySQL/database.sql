USE 'SeuBanco'
SET @@auto_increment_increment=1;

CREATE TABLE tblClientes(
idCliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
sobrenome VARCHAR(30) NOT NULL,
idade INT NOT NULL,
sexo CHAR(1) NOT NULL,
estado CHAR(2) NULL
);

INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('João', 'Silva', 34, 'M', 'PI');
INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('Maria', 'Souza', 28, 'F', 'SP');
INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('Juca', 'Barros', 39, 'M', 'MA');
INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('Ana', 'Mendes', 24, 'F', 'MT');
INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('Antônio', 'Bueno', 19, 'M', 'RJ');
INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES ('Julia', 'Aguiar', 54, 'F', 'AM');
