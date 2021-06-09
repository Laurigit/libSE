lue_excel <- function(tiedostonimi, polku, input_sheet = 1) {
  # tulos <- as.data.table(read_excel(path = paste0("./external_files/", tiedostonimi),
  #                    col_types = "text")
  # )
  tulos <- as.data.table(read_excel(path = paste0(polku, tiedostonimi),
                                    col_types = "text",
                                    sheet = input_sheet))
  return(tulos)
}
