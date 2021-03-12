# Load Functions

load_libraries <- function(){
  p_load(tidyverse, glue, pander, lubridate, knitr, rmarkdown) ## Load Packages
  opts_chunk$set(results = 'asis', echo = FALSE, message = FALSE, warning = FALSE) ## Chunk Displays
}

# Variables

here <- here::here() ## set here file path
current_year <- lubridate::year(Sys.Date()) ## sys year 

# Copyright util

copyright <- function(start){
  if (start <= current_year){
    if (current_year != start) {str <- glue::glue('{start} - {current_year} -- Kyle Tolliver')}
    else {str <- glue::glue('{current_year} -- Kyle Tolliver')}}
  else {str <- 'Time Error'}
  pander::pander(glue::glue('<i class="far fa-copyright"></i>{str}'))
}