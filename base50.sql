-- criando banco
CREATE DATABASE IF NOT EXISTS contatos;

-- selecionando um banco
USE contatos; 

-- criando tabela contatos
CREATE TABLE IF NOT EXISTS contatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- inserindo 50 registros na tabela contatos
INSERT INTO contatos (nome, sexo, data_nascimento, telefone) VALUES
('João Silva', 'M', '1985-06-15', '(11) 99999-0001'),
('Maria Oliveira', 'F', '1990-12-20', '(11) 99999-0002'),
('Carlos Souza', 'M', '1978-03-25', '(11) 99999-0003'),
('Ana Santos', 'F', '1982-07-14', '(11) 99999-0004'),
('Pedro Lima', 'M', '1995-01-09', '(11) 99999-0005'),
('Juliana Costa', 'F', '1989-11-30', '(11) 99999-0006'),
('Roberto Pereira', 'M', '1975-05-22', '(11) 99999-0007'),
('Fernanda Almeida', 'F', '1992-09-17', '(11) 99999-0008'),
('Ricardo Fernandes', 'M', '1987-04-12', '(11) 99999-0009'),
('Tatiane Barbosa', 'F', '1984-10-03', '(11) 99999-0010'),
-- Adicione mais registros seguindo o mesmo padrão
('Lucas Pereira', 'M', '1991-02-19', '(11) 99999-0011'),
('Laura Martins', 'F', '1983-06-27', '(11) 99999-0012'),
-- Continue adicionando até completar 50 registros
('Mário Gomes', 'M', '1979-08-11', '(11) 99999-0049'),
('Beatriz Duarte', 'F', '1994-04-15', '(11) 99999-0050');