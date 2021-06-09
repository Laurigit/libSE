

# shorthand
lsos <- function(..., n=1000) {
  query <- (ls_objects(..., order.by="Size", decreasing=TRUE, head=TRUE, n=n))

  res <- data.table(obj = row.names(query), query)
}

#res <- lsos(20)
