library(glue)
library(pander)
library(tidyverse)

here <- here::here() ## set here file path

print_contact <- function(file){
  
  if (file == "resume"){info <- filter(contact, in_resume)}
  else if (file == "index"){info <- filter(contact, in_index)}
  else {info <- contact}
  
  print(glue_data(info, "<i class='fa fa-{icon}'></i> [{contact}]({link}) \n\n"))
}

print_skills <- function(){print(glue_data(dplyr::filter(skills, level >= 5), "- {skill} \n"))}
print_hobbies <- function(){print(glue_data(hobbies, "- {hobby} \n"))}
print_pos <- function(section_id){section(pos, section_id, "- {name}\n")}
print_solo <- function(){print(glue_data(solo, "- {name} - [#{number}](https://www.sololearn.com/{link}/pdf)\n"))}
print_soc <- function(){print(glue_data(society, "- {group} associated with {loc} ({start} - {end}) \n"))}
print_highlights <- function(){print(glue_data(highlights, "- [{Text}]({Link}) \n"))}
print_portfolio <- function(){pander('<p class="info">This website is setup as a personal portfolio.</p>')}