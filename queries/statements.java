/**
 * SELECT consulta do banco
 */
QL_statement ::= select_clause from_clause 
  [where_clause][groupby_clause][having_clause][orderby_clause]

/**
 * Update and Delete consultas do banco
 */
update_statement :: = update_clause [where_clause] 
delete_statement :: = delete_clause [where_clause]
