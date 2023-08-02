-- Consulta que retorne todos os pedidos (com seus itens respectivos) emitidos no mês de janeiro de 2023
SELECT C5_NUM, C5_EMISSAO, A1_NOME, C6_ITEM, C6_CODPROD, C6_QTD, C6_PRUNIT
FROM C5 - Cadastro de Pedidos
INNER JOIN A1 - Cadastro de Clientes ON C5_CODCLI = A1_COD
INNER JOIN C6 - Itens do Pedido ON C5_NUM = C6_NUM
WHERE EXTRACT(MONTH FROM C5_EMISSAO) = 1 AND EXTRACT(YEAR FROM C5_EMISSAO) = 2023;
