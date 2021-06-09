

clear_memory <- function(sizelimit_in_MB) {
  #browser()
res <- lsos(n = 10000)[Size > sizelimit_in_MB * 1000000]
res[, del_me := obj != toupper(obj)]
del_Me_list <- res[del_me == TRUE, obj]
rm(list = del_Me_list, envir = globalenv())
gc(verbose = TRUE)
}
