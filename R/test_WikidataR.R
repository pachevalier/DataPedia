
library("WikidataR")

item <- get_item(id = 90)
first_claim <- get_property(id = names(item$claims)[1])
