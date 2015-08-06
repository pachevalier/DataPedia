

# Récuperer la liste des communes
com <- GET('https://wdq.wmflabs.org/api?q=claim[31:484170]&props=31,374') %>% content()
names(com$props) %<>% str_c("p", ., sep = "") 
dfcom <- data.frame(item = unlist(com$items), stringsAsFactors = FALSE)
llply(com$props, class)

# Voir SO http://stackoverflow.com/questions/31026276/how-to-get-the-name-of-each-element-of-a-list-using-lapply/31026944#31026944
make_df <- function(x, y) {
  output <- data.frame(matrix(unlist(x), ncol = 3, byrow = TRUE), stringsAsFactors = FALSE, row.names = NULL)
  names(output) <- c("items", "type", y)
  return(output)
}
out <- mapply(make_df, x = com$props, y = names(com$props), SIMPLIFY = FALSE)
out$p31



merge()

# Liste des variables à récupérer  

## Nombre de personnes nées dans la commune

## Nombre de films tournés dans la commune

## Maire
### Couleur politique du maire
### äge du maire
### Lieu de naissance du maire

# Nombre d'éléments localisés dans la commune
# Nombre de sièges sociaux présents dans la commune

## Lieu du récit

## Lieu de résidence

# Date de fondation

# Nombre de découvertes dans la ville
