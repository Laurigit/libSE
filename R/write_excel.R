write_excel <- function(input_R_data, outputfilename, folder) {
  write.xlsx(input_R_data, paste0(folder, outputfilename))
  
}