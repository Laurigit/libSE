find_odbc_driver_name <- function() {
  lista <- data.table(odbc::odbcListDrivers())
  nimet <- lista[, .N, by = name]
  if (nimet[, name] %in% "SQL Server") {
    result <- "SQL Server"
  } else {
    result <- "ODBC Driver 17 for SQL Server"
  }
  return(result)
}