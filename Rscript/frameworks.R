## Frameworks

srcscript <- function(url){pander::pander(glue::glue('<script src={url}></script>'))}

frameworks <- pander::pander(glue::glue('{jquery}{react}{react_dom}{babel}{min}{route}{animate}{vue}{appml}'))

### Jquery

jquery <- "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"

### React

react <- "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"
react_dom <- "https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"
babel <- "https://unpkg.com/babel-standalone@6.15.0/babel.min.js"

### Angular

min <- "https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"
route <- "https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"
animate <- "https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-animate.js"

### Vue

vue <- "https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"

### Appml

appml <- "https://www.w3schools.com/appml/2.0.3/appml.js"