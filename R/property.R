# Visualiser la répartition des réponses
# Différents cas : 
## Type item
## Type chaîne de caractère
## Type date

out <- GET(paste0("https://www.wikidata.org/wiki/Special:EntityData/", "P194", ".json"))
out$status_code
out$request

describe_property <- function(x){
  out = GET(paste0("https://www.wikidata.org/wiki/Special:EntityData/", x, ".json"))
  if (out$status_code != 200) {
    cat("This property doesn't exist")
    }
  else {
    out$en    
    }
  }
describe_property("P194")

# On récupère le type
out$entities$P194$datatype
out$entities$P194$labels$fr$value


out <- GET("https://www.wikidata.org/wiki/Special:EntityData/P194.json") %>% content()
# On récupère le type
out$entities$P194$datatype
out$entities$P194$labels$fr$value


prop <- GET('https://wdq.wmflabs.org/api?q=claim[194]&props=194') %>% content()
names(prop$props) %<>% str_c("p", ., sep = "") 

make_df <- function(x, y) {
  output <- data.frame(matrix(unlist(x), ncol = 3, byrow = TRUE), stringsAsFactors = FALSE, row.names = NULL)
  names(output) <- c("items", "type", y)
  return(output)
}
out <- mapply(make_df, x = prop$props, y = names(prop$props), SIMPLIFY = FALSE)

df <- out$p194

df2 <- df %>% count(p194) %>% arrange(-n)

df2$label_fr <- ""
for (k in 1:nrow(df2)) {
  cat(k, "\n")
  temp <- GET(paste0("https://www.wikidata.org/wiki/Special:EntityData/Q", df$items[k],".json"))
    if (temp$status_code == 200){
      if (is.null(content(temp)$entities[[1]]$labels$fr) == FALSE) {
        cat(content(temp)$entities[[1]]$labels$fr$value, "\n")
        df2$label_fr[k] <- content(temp)$entities[[1]]$labels$fr$value
        }
        else {
        df2$label_fr[k] <- ""
        }
      }
    else {
      df2$label_fr[k] <- ""
    }
  }


prop <- GET('https://wdq.wmflabs.org/api?q=claim[194]&props=194') %>% content()
names(prop$props) %<>% str_c("p", ., sep = "") 

make_df <- function(x, y) {
  output <- data.frame(matrix(unlist(x), ncol = 3, byrow = TRUE), stringsAsFactors = FALSE, row.names = NULL)
  names(output) <- c("items", "type", y)
  return(output)
}
out <- mapply(make_df, x = prop$props, y = names(prop$props), SIMPLIFY = FALSE)

df <- out$p194

df2 <- df %>% count(p194) %>% arrange(-n)
https://www.wikidata.org/wiki/Property:P569


# test <- fromJSON("https://www.wikidata.org/wiki/Special:EntityData/Q42.json")
# test$entities$Q42$descriptions$fr
# test$entities$Q42$labels$fr$value
