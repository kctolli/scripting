# Load Functions

load_libraries <- function(){
  p_load(tidyverse, glue, pander, lubridate, knitr, rmarkdown) ## Load Packages
  opts_chunk$set(results = 'asis', echo = FALSE, message = FALSE, warning = FALSE) ## Chunk Displays
}

# Variables

here <- here::here() ## set here file path
current_year <- lubridate::year(Sys.Date()) ## sys year 
