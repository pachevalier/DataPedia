
## Interface Sparql

* http://www.w3.org/TR/sparql11-overview/

* https://upload.wikimedia.org/wikipedia/commons/d/d6/Wikidata%27s_SPARQL_introduction_presentation.pdf

* https://www.mediawiki.org/wiki/Wikibase/Indexing/SPARQL_Query_Examples

* Voir aussi https://github.com/wikimedia/wikidata-query-rdf/blob/master/docs/getting-started.md

## Ensemble des présidents

PREFIX wd: <http://www.wikidata.org/entity/>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX p: <http://www.wikidata.org/prop/>
PREFIX v: <http://www.wikidata.org/prop/statement/>
SELECT ?president ?wife ?label_president ?wl WHERE {
   wd:Q30 p:P6/v:P6 ?president .
   ?president wdt:P26 ?wife .
   OPTIONAL  {
     ?president rdfs:label ?label_president FILTER (LANG(?label_president) = "fr") .
   }
   OPTIONAL {
     ?wife rdfs:label ?wl FILTER (LANG(?wl) = "fr").
   }
 }
