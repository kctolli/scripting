print_contact <- function(file){
  
  if (file == "resume"){info <- dplyr::filter(contact, in_resume)}
  else if (file == "index"){info <- dplyr::filter(contact, in_index)}
  else {info <- contact}
  
  print(glue::glue_data(info, "<i class='fa fa-{icon}'></i> [{contact}]({link}) \n\n"))
}
print_skills <- function(){print(glue::glue_data(skills, "- {skill} \n"))}