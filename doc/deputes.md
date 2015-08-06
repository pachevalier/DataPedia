https://www.mediawiki.org/wiki/Wikibase/Indexing/SPARQL_Query_Examples
https://github.com/wikimedia/wikidata-query-rdf/blob/master/docs/sparql-query-examples.md

https://github.com/wikimedia/wikidata-query-rdf/blob/master/docs/getting-started.md

## Ensemble des députés

    PREFIX entity: <http://www.wikidata.org/entity/>
    PREFIX wdt: <http://www.wikidata.org/prop/direct/>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
    PREFIX p: <http://www.wikidata.org/prop/>  
    PREFIX v: <http://www.wikidata.org/prop/statement/>  
    SELECT ?item ?label
    WHERE {?item wdt:P39 entity:Q3044918 .
      OPTIONAL  {  
        ?item rdfs:label ?label FILTER (LANG(?label) = "fr") .
          }
      } LIMIT 1000

## Ensemble des députés avec conjoints

    PREFIX entity: <http://www.wikidata.org/entity/>
    PREFIX wdt: <http://www.wikidata.org/prop/direct/>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
    PREFIX p: <http://www.wikidata.org/prop/>  
    PREFIX v: <http://www.wikidata.org/prop/statement/>  
    SELECT ?item ?label ?conjoint ?l
    WHERE {?item wdt:P39 entity:Q3044918 .
	   ?item wdt:P26 ?conjoint .
      OPTIONAL  {  
        ?item rdfs:label ?label FILTER (LANG(?label) = "fr") .
          }
      OPTIONAL  {  
        ?conjoint rdfs:label ?l FILTER (LANG(?l) = "fr") .
          }
      }

## Récupérer le nom du conjoint

      PREFIX entity: <http://www.wikidata.org/entity/>
      PREFIX wdt: <http://www.wikidata.org/prop/direct/>
      PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
      PREFIX p: <http://www.wikidata.org/prop/>  
      PREFIX v: <http://www.wikidata.org/prop/statement/>  
      SELECT ?item ?label ?conjoint ?l
      WHERE { ?item wdt:P39 entity:Q3044918 .
      OPTIONAL  {  
      ?item rdfs:label ?label FILTER (LANG(?label) = "fr") .
      }
      OPTIONAL {
      ?item wdt:P26 ?conjoint .  
        }
      OPTIONAL  {  
      ?conjoint rdfs:label ?l FILTER (LANG(?l) = "fr") .
                }
      }


## Récupérer l'identifiant sycomore

      PREFIX entity: <http://www.wikidata.org/entity/>
      PREFIX wdt: <http://www.wikidata.org/prop/direct/>
      PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
      PREFIX p: <http://www.wikidata.org/prop/>  
      PREFIX v: <http://www.wikidata.org/prop/statement/>  
      SELECT ?item ?label ?conjoint ?l ?sexe ?syco
      WHERE { ?item wdt:P39 entity:Q3044918 .
            OPTIONAL  {  
            ?item rdfs:label ?label FILTER (LANG(?label) = "fr") .
            }
            OPTIONAL {
            ?item wdt:P26 ?conjoint .  
            }
            OPTIONAL  {  
            ?conjoint rdfs:label ?l FILTER (LANG(?l) = "fr") .
                      }
             OPTIONAL {
             ?item wdt:P21 ?sexe .
             }
             OPTIONAL {
              ?item wdt:P1045 ?syco .
      		}
            } LIMIT 10
