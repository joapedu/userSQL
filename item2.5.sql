-- Consulta que retorne o valor total dos pedidos, vendidos em 2022 agrupados por tipo de cliente (pessoa física ou jurídica)
SELECT A1_TIPO AS TIPO_CLIENTE, SUM(C6_QTD * C6_PRUNIT) AS VALOR_TOTAL
FROM C5 - Cadastro de Pedidos
INNER JOIN C6 - Itens do Pedido ON C5_NUM = C6_NUM
INNER JOIN A1 - Cadastro de Clientes ON C5_CODCLI = A1_COD
WHERE EXTRACT(YEAR FROM C5_EMISSAO) = 2022
GROUP BY A1_TIPO;
