CREATE DATABASE IF NOT EXISTS MercadoDB;
USE MercadoDB;

CREATE TABLE categorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE fornecedores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  contato VARCHAR(100)
);

CREATE TABLE produtos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descricao VARCHAR(100),
  preco DECIMAL(10, 2),
  estoque INT,
  id_categoria INT,
  id_fornecedor INT,
  FOREIGN KEY (id_categoria) REFERENCES categorias(id),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id)
);
