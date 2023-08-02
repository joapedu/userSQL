-- Consulta que retorne o valor total dos pedidos agrupados por nome de vendedor
SELECT A3_NOME AS NOME_VENDEDOR, SUM(C6_QTD * C6_PRUNIT) AS VALOR_TOTAL
FROM C5 - Cadastro de Pedidos
INNER JOIN C6 - Itens do Pedido ON C5_NUM = C6_NUM
INNER JOIN A3 - Cadastro de Vendedor ON C5_CODVEN = A3_COD
GROUP BY A3_NOME;
