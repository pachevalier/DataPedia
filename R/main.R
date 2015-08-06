library("devtools")
library("dplyr")
library("jsonlite")
library("httr")
library("magrittr")
library("plyr")
library("readr")
library("stringr")

make_items_df <- function(x) {
  x %<>% unlist() %>% data.frame(., stringsAsFactors = FALSE) 
  names(x) <- c("item")
  return(x)
}

make_props_df <- function(x) {
  x %<>% unlist %>% matrix(., ncol = 3, byrow = TRUE) %>% data.frame(., stringsAsFactors = FALSE)
  names(x) <- c("item", "type", "value")
  return(x)
  }

