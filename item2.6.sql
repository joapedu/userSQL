-- Consulta que retorne o valor total dos pedidos, vendidos no primeiro semestre de 2023 agrupados por região do vendedor
SELECT A3_REGIAO AS REGIAO_VENDEDOR, SUM(C6_QTD * C6_PRUNIT) AS VALOR_TOTAL
FROM C5 - Cadastro de Pedidos
INNER JOIN C6 - Itens do Pedido ON C5_NUM = C6_NUM
INNER JOIN A3 - Cadastro de Vendedor ON C5_CODVEN = A3_COD
WHERE EXTRACT(YEAR FROM C5_EMISSAO) = 2023 AND EXTRACT(MONTH FROM C5_EMISSAO) BETWEEN 1 AND 6
GROUP BY A3_REGIAO;
