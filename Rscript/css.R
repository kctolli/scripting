# CSS

resume_css <- function(top, side, bottom){
  pander::pander(glue::glue('
<style>
# /* Fix Margins */
.pagedjs_page {
    # background: linear-gradient(to left,var(--sidebar-background-color),var(--sidebar-background-color) var(--sidebar-background-width),white var(--sidebar-background-width));
    --pagedjs-margin-top: {top}in;
    --pagedjs-margin-right: {side}in;
    --pagedjs-margin-left: {side}in;
    --pagedjs-margin-bottom: {bottom}in;
    --pagedjs-pagebox-width: 8.5in;
    --pagedjs-pagebox-height: 11in;
}

# /* Avoid the breaking within a section */
.blocks {break-inside: avoid;}

# /* Make font black */
.pagedjs_sheet {background: white; color: black; font-family: "Helvetica";}

.aside {background: white; color: black; font-family: "Helvetica";}
.main {background: white; color: black; font-family: "Helvetica";}

body, p, ul {color: black; font-family: "Helvetica";}

# /* Makes links blue*/
a {color: blue;}
</style>
'))
}

## Libaries
w3css <- function(){pander::pander('<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">')}
bootstrap3 <- function(){pander::pander('<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">')}
bootstrap4 <- function(){pander::pander('<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">')}