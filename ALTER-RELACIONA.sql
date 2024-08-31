CREATE TABLE IF NOT EXISTS prd_produtos (
    prd_id SERIAL PRIMARY KEY,
    prd_nome VARCHAR(50) NOT NULL,
    prd_preco DECIMAL(10,2) NOT NULL,
    prd_quantidade INTEGER NOT NULL
);
/* muitos para um
N * prd_produtos
|
1 (1) unm_unidades_medida
*/

CREATE TABLE IF NOT EXISTS unm_unidades_medida (
    unm_id SERIAL,
    unm_nome VARCHAR(20) NOT NULL,
    unm_sigla VARCHAR(5) NOT NULL
);

ALTER TABLE prd_produtos
ADD COLUMN unm_id INT NOT NULL;

INSERT INTO 
    unm_unidades_medida(unm_nome, unm_sigla)
    VALUES('Unidade', 'UN');

SELECT * FROM unm_unidades_medida

INSERT INTO prd_produtos(prd_nome, prd_preco, unm_id)
VALUES('Carne, ', 35.55, 1)

SELECT * FROM prd_produtos

CREATE TABLE IF NOT EXISTS cmp_compras(
    cmp_id SERIAL PRIMARY KEY,
    cmp_data_hora DATETIME NOT NULL DEFAULT NOW(),
    cmp_valor_pago DECIMAL(10,2) NOT NULL,
    cli_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY(cli_id) REFERENCES cli_clientes(cli_id)
);