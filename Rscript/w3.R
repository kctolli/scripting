# W3

## Templates at https://www.w3schools.com/w3css/w3css_templates.asp

w3 <- pander::pander('
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://www.w3schools.com/lib/w3.js"></script>
')

w3css <- pander::pander('
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" crossorigin></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
')

w3js <- pander::pander('
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" crossorigin></script>
  <script src="https://www.w3schools.com/lib/w3.js"></script>                   
')

w3cv <- pander::pander('
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}</style>
')

w3wedding <- function(bgimg1, bgimg2){
  pander:pander(glue::glue('
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
  <style>
    body,h1,h2{font-family: "Raleway", sans-serif}
    body, html {height: 100%}
    p {line-height: 2}
    .bgimg, .bgimg2 {
      min-height: 100%;
      background-position: center;
      background-size: cover;
    }
    .bgimg {background-image: url({bgimg1})}
    .bgimg2 {background-image: url({bgimg2})}
  </style>
'))
}

w3id <- pander::pander('
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
  <style>
    body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
    body {font-size:16px;}
    .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
    .w3-half img:hover{opacity:1}
  </style>
  <script>
    // Script to open and close sidebar
    function w3_open() {
      document.getElementById("mySidebar").style.display = "block";
      document.getElementById("myOverlay").style.display = "block";
    }
     
    function w3_close() {
      document.getElementById("mySidebar").style.display = "none";
      document.getElementById("myOverlay").style.display = "none";
    }
    
    // Modal Image Gallery
    function onClick(element) {
      document.getElementById("img01").src = element.src;
      document.getElementById("modal01").style.display = "block";
      var captionText = document.getElementById("caption");
      captionText.innerHTML = element.alt;
    }
  </script> 
')

w3_form <- pander::pander('
  <!-- Contact Section -->
  <div id="contact" class="w3-container w3-padding-top-32">
  
  <h2 class="w3-border-bottom w3-border-light-grey w3-padding-16">Contact</h2>
  <p>Lets get in touch and talk about your next project</p>
  
  <form action="/action_page.php" target="_blank">
  <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
  <input class="w3-input w3-section w3-border" type="text" placeholder="Email" required name="Email">
  <input class="w3-input w3-section w3-border" type="text" placeholder="Subject" required name="Subject">
  <input class="w3-input w3-section w3-border" type="text" placeholder="Comment" required name="Comment">
  <button class="w3-button w3-black w3-section" type="submit">
  <i class="fa fa-paper-plane"></i> SEND MESSAGE
  </button>
  </form>
  
  </div>
')

w3html_template <- pander::pander('
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>Page Title</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="">
<style>
</style>
<script src=""></script>
<body>

<img src="" alt="" style="width:100%">

<div class="">
 <h1>This is a Heading</h1>
 <p>This is a paragraph.</p>
 <p>This is another paragraph.</p>
</div>

</body>
</html>
')