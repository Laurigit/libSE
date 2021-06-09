#https://stackoverflow.com/questions/10266963/moving-files-between-folders
my_file_rename <- function(from, to) {
  todir <- dirname(to)
  if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive=TRUE)
 # from <- "C:/Users/lepistol/OneDrive - Stora Enso OYJ/SOP_data_share/SOPDataAll_May_2021_ver1.xlsx"
 # to <-  "C:/Users/lepistol/OneDrive - Stora Enso OYJ/SOP_data_share/old_versions/SOPDataAll_May_2021_ver122.xlsx"
  file.copy(from = from,  to = to, overwrite = TRUE)
}
