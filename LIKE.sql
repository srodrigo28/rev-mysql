SELECT * FROM cli_clientes
WHERE cli_nome LIKE '%a' ;

SELECT * FROM cli_clientes
WHERE cli_nome LIKE 'a%';

SELECT * FROM cli_clientes
WHERE cli_nome LIKE '%f%';

SELECT * FROM cli_clientes
WHERE UPPER(cli_nome) LIKE '%a%';

SELECT * FROM cli_clientes
WHERE LOWER(cli_nome) LIKE '%a%';

SELECT * FROM cli_clientes
WHERE SOUNDEX(cli_nome) = SOUNDEX('Silva')