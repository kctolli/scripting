# library(reactR)
# library(jsonlite)
# library(V8)

# JavaScript

srcscript <- function(url){pander::pander(glue::glue('<script src={url}></script>'))}

alert <- function(msg){pander::pander(glue::glue('<script>alert({msg})</script>'))}

showhide <- function () {
  pander::pander('<script> function showhide(id) {
  	var e = document.getElementById(id);
  	document.getElementById(id).style.display = (document.getElementById(id).style.display == "block") ? "none" : "block";
  }</script>')
}

darkmode <- function(){pander::pander('<script> function darkmode() {document.body.classList.toggle("dark-mode");}</script>')}

## Framework variables

### Jquery

jquery <- htmltools::tags$script(src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js") 

### React

react <- pander::pander('  
  <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
  <script src="https://unpkg.com/react@17/umd/react.production.min.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@17/umd/react-dom.production.min.js" crossorigin></script>
  <script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js" crossorigin></script>
') 

### Angular

angular <- pander::pander('  
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js" crossorigin></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js" crossorigin></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-animate.js" crossorigin></script>
') 

### Vue

vue <- htmltools::tags$script(src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js")

### Appml

appml <- pander::pander('<script src="https://www.w3schools.com/appml/2.0.3/appml.js" crossorigin></script>')