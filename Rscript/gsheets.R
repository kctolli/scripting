library(googlesheets4, tidyverse)
library(sqldf)

gs4_deauth()

readcsv <- function(file){return(read_csv(file) %>% na.omit())}
gsheet <- function(url){return(read_sheet(url) %>% na.omit())}

# Google Sheets Data Frames

datapath <- "https://drive.google.com/drive/folders/13pa4_5Shqhr20sFWfhEOWuxXnKcYqJRj?usp=sharing" ## data path for drive

solo <- gsheet("https://docs.google.com/spreadsheets/d/1ssrsSZjXRcv4Ylv6qdQABOZMul2GIsGLaJtRrzvitYA/edit")
society <- gsheet("https://docs.google.com/spreadsheets/d/1uX9-huAPB4NhljQ1gg20MF8qxQymxDtlQRZCpjwab7Q/edit")
skills <- gsheet("https://docs.google.com/spreadsheets/d/15zrT7H7h0ElvXTdjjYGgx141UmHj3hTkhNc80YM_0Fg/edit")
pos <- gsheet("https://docs.google.com/spreadsheets/d/1abShAJWxWnrEIIbDx3IGbv6fEERrRXGp73gaNpp889c/edit")
highlights <- gsheet("https://docs.google.com/spreadsheets/d/1yVMadV6xJDm9pTY5VjbEeamzvUdH4GzR804npZP6y1s/edit")
entries <- gsheet("https://docs.google.com/spreadsheets/d/1xWg3dkO6oB2Krr24fCuxDsR0aFu8jVw35FGHvvsY5g0/edit")
contact <- gsheet("https://docs.google.com/spreadsheets/d/1TR2Bfxfzh6dWtnAbuhYM6JtU7rWTe_cLW68olas__fk/edit")
references <- gsheet("https://docs.google.com/spreadsheets/d/1gwxS8Q4h49CZLs3ZUvTtcnQNsxA4G2jvMyOKu4Lu83w/edit")
hobbies <- gsheet("https://docs.google.com/spreadsheets/d/13qaCKh6oLsZ2UNJz_vQwRUwr8zARwYRV4qw1kolszFU/edit")
