library(lubridate)

# copyright
current_year <- year(Sys.Date()) ## sys year

copyright <- function(start){
  if (start < current_year){str <- glue::glue('{start} - {current_year} -- Kyle Tolliver')}
  else if (start == current_year) {str <- glue::glue('{current_year} -- Kyle Tolliver')}
  else {str <- 'Time Error'}
  pander::pander(glue::glue('&copy;{str}'))
}