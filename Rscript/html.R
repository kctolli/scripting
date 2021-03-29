library(htmltools)
library(htmlwidgets)

library(knitr, rmarkdown, pander, glue)

opts_chunk$set(results = 'asis', echo = FALSE, message = FALSE, warning = FALSE) ## Chunk Displays

# R to HTML Functions

print_newline <- function(){pander("\n")}
print_h1 <- function(h1){pander(glue("# {h1} \n\n\n"))}
print_h2 <- function(h2){pander(glue("## {h2} \n\n\n"))}
print_h3 <- function(h3){pander(glue("### {h3} \n\n\n"))}
print_h4 <- function(h4){pander(glue("#### {h4} \n\n\n"))}
print_h5 <- function(h5){pander(glue("##### {h5} \n\n\n"))}
print_h6 <- function(h6){pander(glue("###### {h6} \n\n\n"))}
print_pic <- function(img){pander(glue("![]({img}) \n\n\n"))}
print_strong <- function(p){pander(glue('<strong>{p}</strong>'))} 
pagebreak <- function(){pander('<hr /><div style="clear:both;"></div>')}
divbreak <- function(){pander('</div></div><br /> \n\n\n')}

# R Styles

gray <- function(){pander('style="color:gray;"')}
white <- function(){pander('style="color:white;"')}
px0 <- function(){pander('style="padding-left:0px;"')}
px20 <- function(){pander('style="display:none;padding-left:20px;"')}