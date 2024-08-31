USE tw_nfe;

-- CRIANDO UMA TABELA
CREATE TABLE IF NOT EXISTS prd_produtos (
    prd_id SERIAL PRIMARY KEY,
    prd_nome VARCHAR(50) NOT NULL,
    prd_preco DECIMAL(10,2) NOT NULL,
    prd_quantidade INTEGER NOT NULL,
);