## Idées
* Dashboard chiffres clés : Nombre d'articles
* DataPedia/prenoms : Appli prénom 
    * Fréquence des prénoms
    * Evolution au cours du temps et en fonction des pays/zones géographiques
    * Degré de féminité/masculinité du prénom. Possibilité de filtre
* 
* Maintenance : TreeMap ou matrice colorée avec les chiffres clés.
* Apparier les données communales avec les données Wikidata.
* Obtenir la liste des modalités d'une propriété WikiData à partir de la liste des articles liés
* Compter les éléments en fonction de leur nature
     * Personne physique
     * Lieu
     * Ouvrage
     * Film
     * …
* Compter le nombre d'éléments par portail. Afficher le résultats sous forme de TreeMap
* 

## Documentation
* [Manuel](https://www.wikidata.org/w/api.php)

### Paramètres généraux
* Pour le format, choisir : format=jsonfm

### WikiData
* Obtenir les info sur un éléments : [Eric Rohmer](https://www.wikidata.org/w/api.php?action=wbgetentities&ids=Q50764&format=jsonfm), [uniquement en français](https://www.wikidata.org/w/api.php?action=wbgetentities&ids=Q50764&languages=fr&format=jsonfm), [uniquement les délcarationns](https://www.wikidata.org/w/api.php?action=wbgetclaims&entity=Q50764&format=jsonfm), [uniquement une déclaration](https://www.wikidata.org/w/api.php?action=wbgetclaims&entity=Q50764&format=jsonfm&property=P7) 
* Obtenir les infos sur une propriété : [Lieu de naissance](https://www.wikidata.org/w/api.php?action=wbgetentities&ids=P19)

## Pour une page précise
* [la liste des catégories](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=categories&format=jsonfm&cllimit=500)
* [liste de catégories avec plus d'infos](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=categories&format=jsonfm&clprop=timestamp|hidden|sortkey) 
* [uniquement les catégories cachées](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=categories&format=jsonfm&clshow=hidden)
* la [liste des liens vers l'extérieur](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=extlinks&format=jsonfm&ellimit=500) 

* la [liste des images](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=images&format=jsonfm)
      * [limite à 500 images](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=images&format=jsonfm&imlimit=500) 
    * des [infos générales](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=info&format=jsonfm)
    * une [liste de liens internes dans la page](https://fr.wikipedia.org/w/api.php?action=query&titles=%C3%89ric%20Rohmer&prop=links&format=jsonfm&pllimit=500), 
    * les [propriétés de la page](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=pageprops&format=jsonfm)
    * les [500 dernières révisions](https://fr.wikipedia.org/w/api.php?action=query&titles=%C3%89ric%20Rohmer&prop=revisions&format=jsonfm&rvlimit=500&rvprop=size|ids|timestamp|user|userid|comment)
    * [liste de modèles utilisés](https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=templates&format=jsonfm&tllimit=500)
    * [les coordonnées géographiques](https://fr.wikipedia.org/w/api.php?action=query&titles=%C3%89pinal&prop=coordinates&format=jsonfm)
    * [la liste des liens interwikis](https://fr.wikipedia.org/w/api.php?action=query&titles=%C3%89ric%20Rohmer&prop=iwlinks&format=jsonfm|iwlimit=500)
* On peut obtenir les infos pour une liste de pages : 
  * [coordonnées de plusieurs villes](https://fr.wikipedia.org/w/api.php?action=query&titles=%C3%89pinal|Paris|Apt&prop=coordinates&format=jsonfm)
  * 

Pour une image : 
 * [usage global](https://www.wikidata.org/w/api.php?action=query&prop=globalusage&titles=File:Example.jpg)


* [Liste de catégories](https://fr.wikipedia.org/w/api.php?action=query&list=allcategories&acprop=size|hidden&aclimit=500&format=jsonfm)
* [Liste de pages dans une catégorie](https://fr.wikipedia.org/w/api.php?action=query&list=categorymembers&cmtitle=Category:Physique&cmlimit=500) 
    * [Exemple avec les réalisateurs français dans frwiki] (https://fr.wikipedia.org/w/api.php?action=query&titles=Jean-Pierre%20Mocky&prop=categories&format=jsonfm&cllimit=500)
    * 

* [liste des pages qui renvoient vers une URL](https://fr.wikipedia.org/w/api.php?action=query&list=exturlusage&euquery=www.liberation.fr&euprop=ids|title|url&format=jsonfm&eulimit=500)
* [liste des articles autour d'un point de l'espace](https://fr.wikipedia.org/w/api.php?action=query&list=geosearch&gsradius=10000&gscoord=37.786971|-122.399677&gslimit=500)
* 

* [Recherche textuelle](https://fr.wikipedia.org/w/api.php?action=query&list=search&srsearch=rohmer)

* [liste des contributions d'un utilisateur](https://fr.wikipedia.org/w/api.php?action=query&list=usercontribs&ucuser=PAC2&uclimit=500&format=jsonfm)
  * à faire : Graphique à la GitHub
  * 
  
## Wikidata
* [Liste des changements récents](http://www.wikidata.org/w/api.php?action=query&list=recentchanges&rcnamespace=0&rcprop=comment&rclimit=max&rcnamespace=0)

## WikiDataQuery
* [Documentation](http://magnusmanske.de/wordpress/?p=72)
* 

## API Wikipedia 
* [Requête sur Paris](https://fr.wikipedia.org/w/api.php?action=query&titles=Paris&prop=pageprops&format=jsonfm)
* 

## Idées :
* graphique à la github de l'historique d'une page et/ou des contributions des utilisateurs
* Venn Diagramm de wikipédia : quelles sont les articles communs et différents dans chaque langue
* Tableau de bord de suivi des catégories de maintenance
* Graphique d'activité en temps réel de WP
