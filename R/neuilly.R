library("devtools")
library("httr")
library("dplyr")
library("jsonlite")
library("magrittr")
library("stringr")

requete <- GET(URLencode("https://wdq.wmflabs.org/api?q=CLAIM[31:5] AND CLAIM[27:142]&props=19,569"))
ll <- requete %>% content()

to_df <- function(x) {
  x %<>% unlist %>% matrix(., ncol = 3, byrow = TRUE) %>% data.frame(., stringsAsFactors = FALSE)
  names(x) <- c("item", "type", "value")
  return(x)
}
df <- to_df(ll$props[[1]]) 
ldf <- lapply(ll$props, to_df)
names(ldf) %<>% sub(pattern = "([[:digit:]]+)", replacement = "p\\1", x = .)


lieux <- ldf$p19 %>%
  group_by(value) %>%
  summarise(n = n()) %>%
  mutate(value = as.numeric(value)) %>%
  arrange(desc(n))

req2 <- POST(str_c("https://wdq.wmflabs.org/api?q=items[",str_c(lieux$value[1:10], collapse = ","), "]&props=31,625"))
req2$status_code
ll2 <- req2 %>% content()
to_df(ll2$props$`31`)


requete <- GET(URLencode("https://wdq.wmflabs.org/api?q=CLAIM[31:6465]&props=1448"))
ll <- requete %>% content()

make_items_df <- function(x) {
  x %>% unlist() %>% data.frame(., stringsAsFactors = FALSE) 
  names(x) <- c("item")
  return(x)
}

dept <- make_items_df(ll$items)
dept$.

https://www.wikidata.org/wiki/Special:EntityData/Q90.json