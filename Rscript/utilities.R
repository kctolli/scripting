## Utilities

nav <- function(){
  pagebreak <- pagebreak()
  
  pander::pander(glue::glue('
  <script src="https://raw.githubusercontent.com/kctolli/scripting/main/javascript/site.js"></script>
  {pagebreak}<nav class="info"><p>How to navigate this website: </p><ul>
  <li><span style="color:blue;">Blue</span> text - Clickable (Click to see pop up links or new pages)</li>
  <li><span style="color:gray;">Gray</span> text - Hoverable (Hover to get more information)</li></ul>
  <button class="btn" onclick="darkmode()"><i class="fas fa-adjust">Toggle Dark Mode</i></button></nav>
  {pagebreak} \n\n\n'))
}

user_stats <- function(){
  pander::pander(glue::glue('<h2>User Stats</h2><div align="center"><img style="max-width:100%;" height="160" align="center"
  src="https://github-readme-stats.vercel.app/api/top-langs/?username={user}&layout=compact&theme=gruvbox" /></div>'))
}

copyright <- function(start){
  if (start <= current_year){
    if (current_year != start) {str <- glue::glue('{start} - {current_year} -- Kyle Tolliver')}
    else {str <- glue::glue('{current_year} -- Kyle Tolliver')}}
  else {str <- 'Time Error'}
  pander::pander(glue::glue('<i class="far fa-copyright"></i>{str}'))
}

footer <- function(file){
  pagebreak <- pagebreak()
  copyright <- copyright(2020)
  string <- "javascript:showhide('copyright')"
  
  licence <- pander::pander(glue::glue('<ul>
  <li>[Licensed](https://github.com/kctolli/kctolli.github.io/blob/master/LICENSE) under [GNU Public License v3.0](https://github.com/kctolli/kctolli.github.io/blob/master/site_libs/GNU.txt) and hosted on [Github](https://github.com/kctolli/kctolli.github.io).
  <li>Website is made using [Rstudio](https://rstudio.com/) with [Rmd](https://raw.githubusercontent.com/kctolli/kctolli.github.io/master/{file}.Rmd) and [Yaml](https://raw.githubusercontent.com/kctolli/kctolli.github.io/master/_site.yml) files. </li>
  <li>Website is developed in [R](https://raw.githubusercontent.com/kctolli/kctolli.github.io/master/site_libs/script.R), HTML, [CSS](https://raw.githubusercontent.com/kctolli/kctolli.github.io/master/site_libs/site.css) and [Javascript](https://raw.githubusercontent.com/kctolli/kctolli.github.io/master/site_libs/scripts/site.js). </li>
  </ul>'))
  
  pander::pander(glue::glue('{pagebreak}<footer><div style="padding-left:0px;">
  <span class="tooltipr"><a href={string}><p style="color:blue;">{copyright}</p></a></span>
  <div id="copyright" style="display:none;padding-left:20px;">{licence}</div></div></footer>'))
}