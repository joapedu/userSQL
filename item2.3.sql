-- Consulta que retorne o valor total dos pedidos em fevereiro de 2023
SELECT C5_NUM, SUM(C6_QTD * C6_PRUNIT) AS VALOR_TOTAL
FROM C5 - Cadastro de Pedidos
INNER JOIN C6 - Itens do Pedido ON C5_NUM = C6_NUM
WHERE EXTRACT(MONTH FROM C5_EMISSAO) = 2 AND EXTRACT(YEAR FROM C5_EMISSAO) = 2023
GROUP BY C5_NUM;
