-- Consulta que retorne todos os pedidos do cliente “AFONSO COSTA”
SELECT C5_NUM, C5_EMISSAO, A1_NOME
FROM C5 - Cadastro de Pedidos
INNER JOIN A1 - Cadastro de Clientes ON C5_CODCLI = A1_COD
WHERE A1_NOME = 'AFONSO COSTA';