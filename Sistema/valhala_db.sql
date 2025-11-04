CREATE DATABASE IF NOT EXISTS valhala_db;
USE valhala_db;

CREATE TABLE IF NOT EXISTS usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    foto VARCHAR(255),

    tipo ENUM('admin','usuario') NOT NULL DEFAULT 'usuario'
);


INSERT INTO usuario (nome, email, senha, tipo, foto) VALUES
('Odin, o Administrador', 'admin@valhala.com', '$2y$10$tM2T1R0uA4I5L2D4p2.46.s.0Fj2hE2n2.D.t4I5P7l8L7J1W4X3I2I2G7O6j4q6f3r6H6v7U5i2F0H4l8V6o1S4h8A0K6s0Q5o4u6A3Q5I6c7P3b2c6A0M2k5O5w7Y1a5v7Z0A0G3A7', 'admin', 'images/users/user_admin.jpg');

INSERT INTO usuario (nome, email, senha, tipo, foto) VALUES
('Luana, a Cliente', 'luana@valhala.com', '$2y$10$tM2T1R0uA4I5L2D4p2.46.s.0Fj2hE2n2.D.t4I5P7l8L7J1W4X3I2I2G7O6j4q6f3r6H6v7U5i2F0H4l8V6o1S4h8A0K6s0Q5o4u6A3Q5I6c7P3b2c6A0M2k5O5w7Y1a5v7Z0A0G3A7', 'usuario', 'images/users/user_lua.jpg');


CREATE TABLE IF NOT EXISTS produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL, 
    foto VARCHAR(255)
);

INSERT INTO produto (titulo, descricao, preco, foto) VALUES
('Cavalo de Tróia Burguer', 'O mito do sabor em um pão.', 45.00, 'arquivos/arquivos/Image (3).jpg'),
('Néctar de Zeus', 'A bebida dos Deuses, refrescante e divina.', 22.00, NULL),
('Costelas Vikings', 'Carne saborosa para um verdadeiro guerreiro.', 60.00, 'arquivos/arquivos/Image (15).jpg');


CREATE TABLE IF NOT EXISTS avaliacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estrelas INT(11) NOT NULL, 
    comentario TEXT NOT NULL
);

INSERT INTO avaliacao (nome, estrelas, comentario) VALUES
('Cliente Satisfeito', 5, 'As Costelas Vikings me levaram a Valhala!'),
('Mito da Comida', 4, 'O Néctar de Zeus é realmente delicioso, mas o burguer é pequeno.');

CREATE TABLE IF NOT EXISTS contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mensagem TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);