sl <- GET('https://wdq.wmflabs.org/api?q=claim[61]&props=138,61') %>% content() 

GET(URLencode("https://wdq.wmflabs.org/api?q=claim[31:65943] AND noclaim[61]", reserved = FALSE)) %>% content() 

sl <- GET('https://wdq.wmflabs.org/api?q=claim[31:65943]&props=138,61') %>% content() 
names(sl$props) %<>% str_c("p", ., sep = "") 
theo <- data.frame(item = unlist(sl$items), stringsAsFactors = FALSE)

make_df <- function(x, y) {
  output <- data.frame(matrix(unlist(x), ncol = 3, byrow = TRUE), stringsAsFactors = FALSE, row.names = NULL)
  names(output) <- c("items", "type", y)
  return(output)
}

out <- mapply(make_df, x = sl$props, y = names(sl$props), SIMPLIFY = FALSE)
out$p138

out$p138

out$p61
