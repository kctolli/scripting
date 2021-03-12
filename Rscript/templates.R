# Section Templates

section <- function(cv, section_id, glue_template){print(glue::glue_data(filter(cv, section == section_id), glue_template))}

## Glue Templates

print_resume_section <- function(section_id){
  
  cv <- entries %>% filter(in_resume) 
  
  # if(cv$start %in% cv$end){
  
  glue_template <- "
### {title}
{institution}
{loc}
{end}
- {description_1}
- {description_2}
- {description_3}
\n\n\n"
  #   } else {
  # 
  #     glue_template <- "
  # ### {title}
  # 
  # {institution}
  # 
  # {loc}
  # 
  # {start} <br> | <br> {end}
  # 
  # - {description_1}
  # - {description_2}
  # - {description_3}
  # \n\n\n"
  #   }
  
  section(cv, section_id, glue_template)
}

print_resume_education <- function(){
  pander::pander("
### Brigham Young University - Idaho
Bachelor of Science in Software Engineering
Rexburg, ID
2017 <br> | <br> 2020
+ Minor: Computer Engineering and Data Science
+ Coursework: Advanced Embedded Systems, Digital System Design, <br />Computer Architecture, Circuit Analysis, Machine Learning, 
<br />Intermediate Stats, Data Intuition, Data Wrangling, Database Development, Applied Development, System Security, 
Project Management, Linear Algebra, Discrete Math, Differential Calculus  
")  
}

print_work <- function(section_id = 'experience'){
  
  if (section_id == 'tutor'){
    string <- "javascript:showhide('tutor')"
    
    pander::pander(glue::glue('
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
  } else {
  if (section_id == 'experience'){
    
    glue_template <- "
## {institution}
#### {time}
### {title}
{startmonth} {start} - {endmonth} {end} --- {loc}
- {description_1}
- {description_2}
- {description_3}
\n\n\n"} else if (section_id == 'ta'){
  
  glue_template <- "
#### {title}
{startmonth} {start} - {endmonth} {end} --- {loc}
- {description_1}
- {description_2}
- {description_3}
\n\n\n"} else {glue_template <- "Section Error"}
  
  section(entries, section_id, glue_template)
}

print_project <- function(){
  
  section_id = 'projects'
  
  glue_template <- "
### {title}
{start} - {end} --- Spent {time} hours
- {description_1}
- {description_2}
- {description_3}
\n\n\n"
  
  section(entries, section_id, glue_template)
}}

## Basic Templates

print_contact <- function(file){
  
  if (file == "resume"){info <- filter(contact, in_resume)}
  else if (file == "index"){info <- filter(contact, in_index)}
  else {info <- contact}
  
  print(glue::glue_data(info, "<i class='fa fa-{icon}'></i> [{contact}]({link}) \n\n"))
}

print_disclaimer <- function(){
  pander::pander('Member of [Tau Beta Pi](https://tbp.org) <br /> Engineering Honor Society <br /> Idaho Delta chapter at BYU-Idaho.
    \n\n\nThis resume was made with <br /> the R package [pagedown](https://github.com/rstudio/pagedown).')}

print_pos <- function(section_id){section(pos, section_id, "- {name}\n")}
print_solo <- function(){print(glue::glue_data(solo, "- {name} - [#{number}](https://www.sololearn.com/{link}/pdf)\n"))}
print_skills <- function(){print(glue::glue_data(skills, "- {skill} \n"))}
print_soc <- function(){print(glue::glue_data(society, "- {group} associated with {loc} ({start} - {end}) \n"))}
print_highlights <- function(){print(glue::glue_data(highlights, "- [{Text}]({Link}) \n"))}
print_portfolio <- function(){pander::pander('<p class="info">This website is setup as a personal portfolio.</p>')}