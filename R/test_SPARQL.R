endpoint <- "http://wdqs-beta.wmflabs.org/bigdata/namespace/wdq/sparql"

q <- GET(url = "http://wdqs-beta.wmflabs.org/bigdata/namespace/wdq/sparql?query=select%20distinct%20%3Ftype%20where%20%7B%0A%3Fthing%20a%20%3Ftype%0A%7D%0Alimit%2020", add_headers(Accept="text/csv"))
q %>% content(., as = "text") %>% read_csv() %>% View()

query = URLencode("PREFIX wd: <http://www.wikidata.org/entity/>  PREFIX wdt: <http://www.wikidata.org/prop/direct/> PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> PREFIX p: <http://www.wikidata.org/prop/>  PREFIX v: <http://www.wikidata.org/prop/statement/>  SELECT ?p ?w ?l ?wl WHERE { wd:Q30 p:P6/v:P6 ?p . ?p wdt:P26 ?w . OPTIONAL { ?p rdfs:label ?l FILTER (LANG(?l) = 'en') . } OPTIONAL { ?w rdfs:label ?wl FILTER (LANG(?wl) = 'en'). }}")

q <- GET(url=paste0(endpoint,"?query=",query), add_headers(Accept = "text/csv")) 
q %>% status_code()

q <- GET(url=endpoint, query = query, add_headers(Accept = "text/csv")) 
#q <- GET(url=paste0(endpoint, query), add_headers(Accept = "text/csv")) 
q %>% status_code()
q %>% content(. , as = "text") %>% read_csv() %>% View()
q %>% content(., as = "text", type = "text/csv") 
