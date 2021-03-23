# JavaScript

alert <- function(msg){pander::pander(glue::glue('<script>alert({msg})</script>'))}


showhide <- function () {
  pander::pander('<script> function showhide(id) {
  	var e = document.getElementById(id);
  	document.getElementById(id).style.display = (document.getElementById(id).style.display == "block") ? "none" : "block";
  }</script>')
}

darkmode <- function(){pander::pander('<script> function darkmode() {document.body.classList.toggle("dark-mode");}</script>')}