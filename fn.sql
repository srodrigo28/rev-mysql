SELECT cli_nome, cli_data_nascimento, 
TIMESTAMPDIFF(YEAR, cli_data_nascimento, CURDATE()) AS cli_idade
FROM cli_clientes