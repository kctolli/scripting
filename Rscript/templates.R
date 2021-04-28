library(glue)
library(pander)
library(tidyverse)

section <- function(cv, section_id, glue_template){print(glue_data(filter(cv, section == section_id), glue_template))}

print_byuiwork <- function(){
  pander('\n\n\n
  ## Brigham Young University - Idaho \n\n\n 
  #### Part-Time \n\n\n
  ### Teaching Assistant {.tabset .tabset-fade} \n\n\n')
}

print_ta <- function(){
  pander("#### {title}
  
  {startmonth} {start} - {endmonth} {end} --- {loc}
  
  - {description_1}
  - {description_2}
  - {description_3}
  \n\n\n")
}

print_tutor <- function(){
  pander(glue('
  ### Computer Science Tutor

  April 2018 - August 2018 --- Rexburg, ID

  <ul><div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'tutor\')">
  <li>Tutored many classes</li></a></span><div id="tutor" style="display:none;padding-left:20px;">

    + Object-Oriented Programming with Data Structures using Python
    + Fundamentals of Digital Systems w/ Lab
    + Introduction to Engineering
    + Introduction to Electrical and Computer Engineering

  </div></div><li>Taught students topics from these classes</li>
  <li>Lead group and individual appointments and discussions</li></ul>'))
}

print_ds <- function(){
  pander(glue('
  <div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'pic\')" align="center">
  <img src="https://secure.meetupstatic.com/photos/event/d/7/4/b/600_482695115.jpeg" alt="Data Science Image" class="img"></a></span>
  <h4 id="pic" style="display:none;padding-left:20px;">Interdisciplinary field that uses scientific methods, 
  processes, algorithms and systems to extract knowledge and insights from structured and unstructured data, 
  and apply knowledge and actionable insights from data across a broad range of application domains.</h4></div>\n\n\n'))
}

print_about <- function(){
  pander(glue('## About Me \n\n 
  BYU-Idaho graduate with a Bachelor\'s (BS) in Software Engineering. 
  I also earned a minor in Computer Engineering and Data Science. 
  I love to learn new things and solve problems. \n\n
  <div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'me\')">
  A little more about me</a></span><div id="me" style="display:none;padding-left:20px;">\n\n'))
}

print_byui <- function(){
  pander('## Brigham Young University - Idaho \n\n\n
  I earned a Bachelor\'s of Science in Software Engineering <br />with a minor in Computer Engineering and Data Science. \n\n\n 
  <div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'diploma\')">Diploma</a>
  <span class="tooltipRtext"><strong>2020 Graduate</strong><br/>My cumulative GPA was <br/> 3.6 out of 4</span></span>
  <div id="diploma" align="center" style="display:none;padding-left:20px;"><img src="./site_libs/images/diploma.jpg" alt="Diploma">
  </div></div> \n\n\n')
}

print_hs <- function(){
  pander('## Moorpark High School \n\n\n <div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'hs\')">
  I was able to take some advanced and college level courses in the process of getting my High School Diploma.</a>
  <span class="tooltipRtext"><strong>2017 Graduate</strong></span></span><div id="hs" style="display:none;padding-left:20px;">')
}

print_readme <- function(){
  pander(glue('
  * [Portfolio](https://kctolli.github.io/)
    + [Resume](https://kctolli.github.io/Resume/)
    + [Diploma](https://kctolli.github.io/site_libs/images/diploma.pdf) \n\n\n
  <h2>User Stats</h2>\n\n\n<a href="https://github.com/anuraghazra/github-readme-stats" align="center"><img style="max-width:100%;"
  height="160" align="center" src="https://github-readme-stats.vercel.app/api/top-langs/?username=kctolli&layout=compact&theme=dark"/>
  </a>\n\n\n<h2>Highlights</h2>\n\n\n'))
}