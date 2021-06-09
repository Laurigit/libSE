cl <- function(table_name) {

  colls <- colnames(table_name)

  res_v1 <- dt_colnames_syntax(colls)  
  nm <-deparse(substitute(table_name))
  res <- paste0('temp <- ', nm, '[, \n', res_v1,']')

  return(res)
}