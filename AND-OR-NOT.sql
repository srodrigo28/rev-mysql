CREATE DATABASE IF NOT EXISTS `tw_nfe`;
-- SELECIONANDO UMA BASE DE DADOS
USE tw_nfe;

-- CRIANDO UMA TABELA
CREATE TABLE IF NOT EXISTS cli_clientes (
    cli_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    -- cli_id SERIAL PRIMARY KEY,
    cli_nome VARCHAR(50) NOT NULL,
    cli_data_nascimento DATE,
    cli_logradouro VARCHAR(60) NOT NULL
);

SELECT * FROM cli_clientes
WHERE cli_data_nascimento IS NULL OR cli_logradouro IS NULL;

SELECT * FROM cli_clientes
WHERE cli_data_nascimento IS NULL OR cli_cpf = "000.000.000-00";

SELECT * FROM cli_clientes
WHERE cli_data_nascimento IS NULL AND cli_cpf = "000.000.000-00";

SELECT * FROM cli_clientes
WHERE cli_data_nascimento IS NOT NULL AND cli_cpf = "000.000.000-00";