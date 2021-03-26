library(htmltools)
library(htmlwidgets)

# R to HTML Functions

print_newline <- function(){pander("\n")}
print_h1 <- function(h1){pander::pander(glue::glue("# {h1} \n\n\n"))}
print_h2 <- function(h2){pander::pander(glue::glue("## {h2} \n\n\n"))}
print_h3 <- function(h3){pander::pander(glue::glue("### {h3} \n\n\n"))}
print_h4 <- function(h4){pander::pander(glue::glue("#### {h4} \n\n\n"))}
print_h5 <- function(h5){pander::pander(glue::glue("##### {h5} \n\n\n"))}
print_h6 <- function(h6){pander::pander(glue::glue("###### {h6} \n\n\n"))}
print_pic <- function(img){pander::pander(glue::glue("![]({img}) \n\n\n"))}
print_strong <- function(p){pander::pander(glue::glue('<strong>{p}</strong>'))} 
pagebreak <- function(){pander::pander('<hr /><div style="clear:both;"></div>')}

# R Styles

gray <- function(){pander::pander('style="color:gray;"')}
white <- function(){pander::pander('style="color:white;"')}
px0 <- function(){pander::pander('style="padding-left:0px;"')}
px20 <- function(){pander::pander('style="display:none;padding-left:20px;"')}