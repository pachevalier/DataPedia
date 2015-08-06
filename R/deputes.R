
# Aller chercher des informations structurées dans Wikidata sur les députés français

# Match avec https://www.wikidata.org/wiki/Property:P1045

# Visualiser les données Palladio (http://palladio.designhumanities.org/#/)
URLencode("https://wdq.wmflabs.org/api?q=CLAIM[39:3044918]&props=1045")
requete <- GET(URLencode("https://wdq.wmflabs.org/api?q=CLAIM[39:3044918]&props=1045"))

ll <- requete %>% content()
deputes <- make_items_df(ll$items)

names(ll$props) %<>% sub(pattern = "([[:digit:]]+)", replacement = "p\\1", x = .)
mapply(make_props_df, x = test, y = names(test), SIMPLIFY = FALSE)

ldf <- lapply(ll$props, make_props_df)
names(ldf) %<>% sub(pattern = "([[:digit:]]+)", replacement = "p\\1", x = .)

ldf$p1045 %>% View()
names(ldf$p1045)
