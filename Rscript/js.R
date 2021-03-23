# JavaScript

## Frameworks

frameworks <- function(){pander::pander(glue::glue('{jquery}{react}{react_dom}{babel}{min}{route}{animate}{vue}{appml}'))}

### Jquery

jquery <- srcscript("https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js")

### React

react <- srcscript("https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js")
react_dom <- srcscript("https://unpkg.com/react-dom@16/umd/react-dom.production.min.js")
babel <- srcscript("https://unpkg.com/babel-standalone@6.15.0/babel.min.js")

### Angular

min <- srcscript("https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js")
route <- srcscript("https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js")
animate <- srcscript("https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-animate.js")

### Vue 

vue <- srcscript("https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js")

### Appml

appml <- srcscript("https://www.w3schools.com/appml/2.0.3/appml.js")

## Custom functions

srcscript <- function(url){pander::pander(glue::glue('<script src={url}></script>'))}

alert <- function(msg){pander::pander(glue::glue('<script>alert({msg})</script>'))}


showhide <- function () {
  pander::pander('<script> function showhide(id) {
  	var e = document.getElementById(id);
  	document.getElementById(id).style.display = (document.getElementById(id).style.display == "block") ? "none" : "block";
  }</script>')
}

darkmode <- function(){pander::pander('<script> function darkmode() {document.body.classList.toggle("dark-mode");}</script>')}