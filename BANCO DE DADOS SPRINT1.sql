CREATE DATABASE Sprint1;
USE Sprint1;

CREATE TABLE Empresa (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
RazãoSocial VARCHAR(100) NOT NULL,
NomeFantasia VARCHAR(50) NOT NULL,
DataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
CNPJ CHAR (14) NOT NULL,
Endereco VARCHAR (50),
Bairro VARCHAR (50),
CEP CHAR (8) NOT NULL,
Cidade VARCHAR (30),
Estado VARCHAR (30)
);

CREATE TABLE Usuario(
IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (70) NOT NULL,
Email VARCHAR (50), CONSTRAINT chkEmailusuario CHECK (Email LIKE '%@%'),
dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sensor(
IdSensor INT PRIMARY KEY AUTO_INCREMENT,
ModelSensor VARCHAR (50),
StatusSensor VARCHAR (50), CONSTRAINT chkStatus CHECK (StatusSensor IN ('Ativo', 'Inativo', 'Manutencao'))
);

CREATE TABLE DadoSensor(
IdDados INT PRIMARY KEY AUTO_INCREMENT,
HorarioDados DATETIME DEFAULT CURRENT_TIMESTAMP,
Luminosidade INT, CONSTRAINT chkLuminosidade CHECK (Luminosidade >= 150)
);

CREATE TABLE Lampadas(
IdLampadas INT PRIMARY KEY AUTO_INCREMENT,
Potencia INT, 
HorarioFuncio  DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Empresa (RazãoSocial, NomeFantasia, CNPJ, Endereco, Bairro, CEP, Cidade, Estado) VALUES 
('Banco C6 S.A.', 'C6 Bank', '31872495000172', 'Avenida Nove de Julho, 3186', 'Jardim Paulista', '01406000', 'São Paulo', 'SP'),
('VR Benefícios e Serviços de Processamento S.A.', 'VR Benefícios', '02535864000133', 'Avenida dos Bandeirantes, 460', 'Brooklin', '04553900', 'São Paulo', 'SP'),
('Accenture do Brasil LTDA', 'Accenture', '96534094000158', 'Rua Alexandre Dumas, 2051', 'Chacara Santo Antonio', '04717916', 'São Paulo', 'SP'),
('Deloitte Touche Tohmatsu Auditores Independentes LTDA', 'Deloitte', '49928567000111', 'Avenida Doutor Chucri Zaindan', 'Vila São Francisco', '04711130', 'São Paulo', 'SP'),
('SPTech International LTDA', 'SPTech International', '32129957000129', 'Rua Haddock Lobo, 595', 'Cerqueira César', '01414001', 'São Paulo', 'SP');

INSERT INTO Usuario (Nome, Email) VALUES
('Paula Zeferino', 'paula.zeferino@gmail.com'),
('José Carlos', 'jose.carlo@gmail.com'),
('Pedro Assunção', 'pedro.assuncao@gmail.com'),
('Renata Gomes', 'renata.gomes@gmail.com'),
('Icaro Silva', 'icaro.silva@gmail.com');

INSERT INTO Sensor (ModelSensor, StatusSensor) VALUES
('LDR5', 'Ativo'),
('LDR5', 'Ativo'),
('LDR5', 'Manutencao'),
('LDR5', 'Inativo');

DESC Empresa;

SELECT * FROM Empresa;

SELECT RazãoSocial, DataCadastro, CNPJ FROM Empresa ORDER BY RazãoSocial;

SELECT RazãoSocial, NomeFantasia, CNPJ FROM Empresa WHERE RazãoSocial LIKE '% LTDA';

SELECT * FROM Empresa ORDER BY NomeFantasia;

SELECT * FROM Empresa ORDER BY NomeFantasia DESC;

SELECT * FROM Empresa WHERE NomeFantasia LIKE '%A_';

DESC Usuario;

SELECT * FROM Usuario;

SELECT Nome FROM Usuario;

SELECT Nome, Email FROM Usuario WHERE Nome LIKE '% Carlos';

SELECT * FROM Usuario ORDER BY Nome; 

SELECT * FROM Usuario ORDER BY Nome DESC;

SELECT * FROM Usuario WHERE Nome LIKE '%A_';

DESC Sensor;

SELECT * FROM Sensor;

SELECT * FROM Sensor WHERE StatusSensor = 'Ativo';