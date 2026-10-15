-- Schema derivado das consultas SQL das telas (tipos e tamanhos inferidos).
CREATE DATABASE IF NOT EXISTS dbinfox DEFAULT CHARACTER SET utf8mb4;
USE dbinfox;

CREATE TABLE tbusuarios (
  iduser INT PRIMARY KEY,
  usuario VARCHAR(50) NOT NULL,
  fone VARCHAR(15),
  login VARCHAR(15) NOT NULL UNIQUE,
  senha VARCHAR(250) NOT NULL,
  perfil VARCHAR(20) NOT NULL
);

CREATE TABLE tbclientes (
  idcli INT AUTO_INCREMENT PRIMARY KEY,
  nomecli VARCHAR(50) NOT NULL,
  endcli VARCHAR(100),
  fonecli VARCHAR(50) NOT NULL,
  emailcli VARCHAR(50)
);

CREATE TABLE tbos (
  os INT AUTO_INCREMENT PRIMARY KEY,
  data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  tipo VARCHAR(15) NOT NULL,
  situacao VARCHAR(20) NOT NULL,
  equipamento VARCHAR(150) NOT NULL,
  defeito VARCHAR(150) NOT NULL,
  servico VARCHAR(150),
  tecnico VARCHAR(30),
  valor DECIMAL(10,2),
  idcli INT NOT NULL,
  FOREIGN KEY (idcli) REFERENCES tbclientes(idcli)
);