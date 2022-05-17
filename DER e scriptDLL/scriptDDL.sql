CREATE DATABASE IF NOT EXISTS "Database" WITH OWNER = postgres ENCODING = 'UTF8' CONNECTION
LIMIT
	= -1;

CREATE TABLE IF NOT EXISTS Usuario (
	id_Usuario BIGINT NOT NULL PRIMARY KEY,
	email VARCHAR(45),
	senha VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS Curso (
	id_Curso BIGINT NOT NULL PRIMARY KEY,
	nome VARCHAR(45),
	inicio DATETIME,
	fim DATETIME
);

CREATE TABLE IF NOT EXISTS novo_curso (
    id_novo_curso BIGINT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    inicio TIME WITHOUT TIME ZONE,
    fim TIME WITHOUT TIME ZONE,
    professor VARCHAR(45),
    sala INTEGER

CREATE TABLE IF NOT EXISTS Sala (
	id_Sala BIGINT NOT NULL PRIMARY KEY,
	numero INT
);

CREATE TABLE IF NOT EXISTS Professor (
	id_Professor BIGINT NOT NULL PRIMARY KEY,
	nome VARCHAR(45)
);

CREATE TABLE Professor_Curso (
	profcurso_id BIGINT NOT NULL PRIMARY KEY,
	professor_id INT NOT NULL,
	Curso_id INT NOT NULL,
	FOREIGN KEY (professor_id) REFERENCES Professor (id_Professor),
	FOREIGN KEY (Curso_id) REFERENCES Curso (id_Curso),
);

CREATE TABLE IF NOT EXISTS Sala_Curso (
	Salacurso_id BIGINT NOT NULL PRIMARY KEY,
	Sala_id INT NOT NULL,
	Curso_id INT NOT NULL,
	FOREIGN KEY (Sala_id) REFERENCES Sala (id_Sala),
	FOREIGN KEY (Curso_id) REFERENCES Curso (id_Curso),
);

INSERT INTO
	Usuario (id_usuario, email, senha)
VALUES
	(1, "gusthenrique273@gmail.com", "123456");

INSERT INTO
	Professor (nome)
VALUES
	("Paulo Cesar");

INSERT INTO
	Professor (nome)
VALUES
	("Gustavo Henrique");

INSERT INTO
	Professor (nome)
VALUES
	("Lecy da Silva");

INSERT INTO
	Sala (numero)
VALUES
	(1001);

INSERT INTO
	Sala (numero)
VALUES
	(1002);

INSERT INTO
	Sala (numero)
VALUES
	(1003);

INSERT INTO
	novo_curso(nome, inicio, fim, professor, sala)
VALUES
	("Curso de Javascript", "18:00", "22:00", "Gustavo", 1001);

INSERT INTO
	novo_curso(nome, inicio, fim, professor, sala)
VALUES
	("Curso de Python", "15:00", "19:00", "Paulo", 1002);

