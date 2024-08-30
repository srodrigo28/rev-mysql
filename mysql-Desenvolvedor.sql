-- CRIANDO BASE DE DADOS
CREATE DATABASE IF NOT EXISTS `tw_nfe`;
-- SELECIONANDO UMA BASE DE DADOS
USE tw_nfe;

-- CRIANDO UMA TABELA
CREATE TABLE IF NOT EXISTS cli_clientes (
    --cli_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    cli_id SERIAL,
    cli_nome VARCHAR(50) NOT NULL,
    cli_data_nascimento DATE,
    cli_logradouro VARCHAR(60) NOT NULL
);

-- INSERINDO UM REGISTRO
INSERT INTO cli_clientes(cli_nome, cli_logradouro)
    VALUES('Cliente 1', 'Rua do Teste, 123');

-- INSERINDO VARIOS REGISTROS
INSERT INTO cli_clientes(cli_nome, cli_logradouro)
    VALUES
    ( 'Daniel Oliveira', 'Rua 17'),
    ( 'Aline Silva', 'Rua 29'),
    ( 'Cris Sousa Flores', 'Rua 33'),
    ( 'Antônio Sousa', 'Rua 42');

-- LISTANDO TODOS OS REGISTROS
SELECT * FROM CLI_CLIENTES

-- LISTANDO COLUNAS SELECIONADAS
SELECT cli_id, cli_nome FROM cli_clientes

-- LISTANDO REGISTROS COM CONDIÇÃO WHERE
SELECT * FROM cli_clientes WHERE cli_id = 1

SELECT * FROM cli_clientes WHERE cli_sexo = 'm'

SELECT cli_id, cli_nome FROM cli_clientes WHERE cli_sexo = 'f'

-- APAGANDO UMA BANCO DE DADOS
DROP DATABASE IF EXISTS tw_nfe2;


-- APAGANDO UMA TABELA
DROP TABLE if EXISTS cli_clientes2;
