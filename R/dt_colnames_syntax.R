dt_colnames_syntax <- function(input_colnames) {
  
 # input_colnames <- colnames(SRC_SHIPMENT_BOOKINGS)
  dt_col <- data.table(name = input_colnames)
  dt_col[, dupl := paste0(name, " = ", name)]
  res <- paste0('.(', paste0(dt_col[, dupl], collapse = ', \n '), ')' )
  return(res)
}
