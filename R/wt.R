wt <- function(rTable, csvname, folder) {
  
  write.table(rTable, paste0(folder, csvname), quote = FALSE, sep = ";", dec = ",", row.names = FALSE)
  
}