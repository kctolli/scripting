library(glue, pander, tidyverse, pacman)

here <- here::here() ## set here file path

section <- function(cv, section_id, glue_template){print(glue_data(filter(cv, section == section_id), glue_template))}

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

print_tutor <- function(){
  string <- "javascript:showhide('tutor')"
  
  pander(glue('
  ### Computer Science Tutor

  April 2018 - August 2018 --- Rexburg, ID

  <ul><div style="padding-left:0px;">
  <span class="tooltipr"><a href={string}><li>Tutored many classes</li></a></span>
  <div id="tutor" style="display:none;padding-left:20px;">

    + Object-Oriented Programming with Data Structures using Python
    + Fundamentals of Digital Systems w/ Lab
    + Introduction to Engineering
    + Introduction to Electrical and Computer Engineering

  </div></div><li>Taught students topics from these classes</li>
  <li>Lead group and individual appointments and discussions</li></ul>'))
}

print_ds <- function(){
  string <- "javascript:showhide('pic')"
  
  pander(glue('
  <div style="padding-left:0px;"><span class="tooltipr"><a href={string} align="center">
  <img src="https://secure.meetupstatic.com/photos/event/d/7/4/b/600_482695115.jpeg" 
  alt="Data Science Image" class="img"></a></span>
  <h4 id="pic" style="display:none;padding-left:20px;">Interdisciplinary field that uses scientific methods, 
  processes, algorithms and systems to extract knowledge and insights from structured and unstructured data, 
  and apply knowledge and actionable insights from data across a broad range of application domains.</h4></div>\n\n\n'))
}

print_about <- function(){
  string <- "javascript:showhide('me')"
  
  pander(glue('## About Me \n\n 
  BYU-Idaho graduate with a Bachelor\'s (BS) in Software Engineering. 
  I also earned a minor in Computer Engineering and Data Science. 
  I love to learn new things and solve problems. \n\n
  <div style="padding-left:0px;"><span class="tooltipr"><a href={string}>
  A little more about me</a></span><div id="me" style="display:none;padding-left:20px;">\n\n'))
}