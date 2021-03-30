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

section <- function(cv, section_id, glue_template){print(glue_data(filter(cv, section == section_id), glue_template))}

print_tutor <- function(){
  pander(glue('
  ### Computer Science Tutor

  April 2018 - August 2018 --- Rexburg, ID

  <ul><div style="padding-left:0px;">
  <span class="tooltipr"><a href="javascript:showhide(\'tutor\')"><li>Tutored many classes</li></a></span>
  <div id="tutor" style="display:none;padding-left:20px;">

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
  <img src="https://secure.meetupstatic.com/photos/event/d/7/4/b/600_482695115.jpeg" 
  alt="Data Science Image" class="img"></a></span>
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
  pander('## Moorpark High School \n\n\n
  <div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'hs\')">I was able to take some 
  advanced and college level courses in the process of getting my High School Diploma.</a>
  <span class="tooltipRtext"><strong>2017 Graduate</strong></span></span><div id="hs" style="display:none;padding-left:20px;">')
}

print_byuiwork <- function(){
  pander('\n\n\n
  ## Brigham Young University - Idaho \n\n\n 
  #### Part-Time \n\n\n
  ### Teaching Assistant {.tabset .tabset-fade} \n\n\n')
}

print_compe <- function(){
  pander::pander('
## Computer Engineering

### Embedded Systems {.tabset .tabset-fade}  
  
#### Technologies

##### Programming

<ul><div style="padding-left:0px;"><span class="tooltipr">
<a href="javascript:showhide(\'C\')"><li style="color:gray;">C/C++</li></a>
<span class="tooltipRtext"><ul style="color:white;">
<li>Embedded</li><li>Register-level</li></ul></span></span></div>
<li>Python</li><li>Simulink</li></ul>

##### Embedded OS

<ul><li>ROS (Robot Operating System)</li><li>VxWorks</li>
<li>FreeRTOS</li><li>Windows IOT</li><div style="padding-left:0px;">
<span class="tooltipr"><a href="javascript:showhide(\'linux\')">
<li style="color:gray;">Linux</li></a><span class="tooltipRtext">
<ul style="color:white;"><li>Real-Time</li><li>Embedded</li>
<li>Raspberry OS</li></ul></span></span></div></ul>

#### Tools

##### Environments
  
* Code Composer Studio
* SoftConsole
* MATLAB
* Energia
* Arduino IDE
  
##### Microcontrollers

* Intel Galileo
* Raspberry Pi
* LattePanda
* ESP 8266
* MSP 432
* Arduino

#### Data Transfer

##### Communication Protocols

<ul><div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'uart\')">
<li style="color:gray;">UART</li></a><span class="tooltipRtext"><ul style="color:white;">
<li>Differential Signaling</li><li>Full-Duplex</li></ul></span></span></div>
<li>I2C</li><li>SPI</li><li>GPIO</li><li>USB</li><li>eUSCI</li>
<div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'wifi\')">
<li style="color:gray;">Wireless</li></a><span class="tooltipRtext"><ul style="color:white;">
<li>Wifi (WLAN)</li><li>Bluetooth</li><li>Zigbee</li><li>RFID</li><li>GSM and GPS</li>
</ul></span></span></div><div style="padding-left:0px;"><span class="tooltipr">
<a href="javascript:showhide(\'uart\')"><li style="color:gray;">Mixed-Signals</li></a>
<span class="tooltipRtext"><ul style="color:white;"><li>Analog</li><li>Digital</li>
<li>ADCs and DACs</li></ul></span></span></div></ul>

##### Internet of Things

* Communications
* Information
* Fourier Series and Transform
* Filters
* Networking    

### Digital Systems {.tabset .tabset-fade}

#### FPGAs and HDLs

<ul><div style="padding-left:0px;"><span class="tooltipr">
<a href="javascript:showhide(\'verilog\')"><li style="color:gray;">Verilog</li></a>
<span class="tooltipRtext">Developed using: Vivado <br/> on a Artix 7 and Kintex 7</span></span></div>
<ul><li>Behavioral</li><li>Dataflow</li><li>Structural</li><li>System</li></ul>
<div style="padding-left:0px;"><span class="tooltipr">
<a href="javascript:showhide(\'vhdl\')"><li style="color:gray;">VHDL</li></a>
<span class="tooltipRtext">Developed using: Libero <br/> on a PolarFire</span></span></div></ul>
  
#### Simulation and Testing

<ul><li>Verilog Test Bench</li><li>Logisim</li><li>Waveform</li><div style="padding-left:0px;">
<span class="tooltipr"><a href="javascript:showhide(\'IC\')"><li style="color:gray;">Logic Integrated Circuits</li></a>
<span class="tooltipRtext"><ul style="color:white;"><li>TTL (7400-Series)</li><li>CMOS</li></ul></span></span></div></ul>

### Computer Systems {.tabset .tabset-fade}

#### Computer Organization

* Memory Hierarchy 
* Computer Arithmetic
* Machine Optimization
* System Drivers
* Concurrency
* Parallelism

#### Processor Design

* Instruction Architecture
* Machine Level Instructions
* Control Unit Design
* Reduced Instruction Set 
* Triple Modular Redundancy

### Engineering Fundamentals {.tabset .tabset-fade}

#### Circuit Analysis

<ul><div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'spice\')">
<li style="color:gray;">Spice Software</li></a><span class="tooltipRtext"><ul style="color:white;">
<li>LTSpice</li><li>EasyEDA</li></ul></span></span></div><div style="padding-left:0px;">
<span class="tooltipr"><a href="javascript:showhide(\'op\')">
<li style="color:gray;">Transistors, Diodes, and Op-Amps</li></a>
<span class="tooltipRtext"><ul style="color:white;">
<li>MOSFETS</li><li>BJT</li></ul></span></span></div>
<div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'BC\')">
<li>Basic Circuits</li></a></span><div id="BC" style="display:none;padding-left:20px;">
<p>Methods and Techniques:</p><ul><li>Nodal</li><li>Mesh</li><li>Kirchhoff\'s Laws</li> 
<li>Thevenin\'s Theorem</li><li>Norton\'s Theorem</li></ul></div></div><ul><li>Inductors</li> 
<li>Capacitors</li><li>Resistors</li></ul></ul>

#### Engineering Basics

<ul><li>Design and Communication</li><li>Ethics and Economics</li><li>Drawings and Draftings</li>
<div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'EM\')">
<li style="color:gray;">Parameters Based Systems</li></a><span class="tooltipRtext">
<ul style="color:white;"><li>Length</li><li>Time</li><li>Mass</li><li>Force</li>
<li>Temperature</li><li>Energy and Power</li></ul></span></span></div></ul>

#### Science {.tabset .tabset-pills}

##### Physics

<ul><li>Mechanics</li><ul><li>Newtonian</li><li>Fluid</li><li>Kinematics</li><li>Statics</li><li>Dynamics</li></ul>
<div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'MM\')">
<li style="color:gray;">Motion and Momentum</li></a><span class="tooltipRtext"><ul style="color:white;">
<li>Circular</li><li>Harmonic</li><li>Rotational (Torque)</li></ul></span></span></div><li>Waves and Sound</li>
<div style="padding-left:0px;"><span class="tooltipr"><a href="javascript:showhide(\'EM\')">
<li style="color:gray;">Electricity and Magnetism</li></a><span class="tooltipRtext"><ul style="color:white;">
<li>Electrical Systems, Fields and Forces</li><li>Magnetic Systems, Fields and Forces</li>
<li>Electromagnetic Forces and Optics</li></ul></span></span></div><div style="padding-left:0px;">
<span class="tooltipr"><a href="javascript:showhide(\'MP\')"><li style="color:gray;">Modern Physics</li></a>
<span class="tooltipRtext"><ul style="color:white;"><li>Quantum</li><li>Atomic</li><li>Nuclear</li><li>Relativity</li>
</ul></span></span></div><li>Astro Physics</li></ul> 

##### Chemistry

* Strengths and Materials 
* Molecular and Ionic Compounds
* Intermoleular Forces
* Reactions, Kinetics and Equilibrium
* Acids and Bases

##### Thermodynamics

* Thermodynamic Systems and Entropy
* Heat Transfer and Thermal Equilibrium
* Endothermic and Exothermic Processes
* Energy of Phase Changes and Transfer
* Enthalpy of Formation and Reaction
* Hess’s Law and Ideal Gas Law
* Laws of Thermodynamics
')
}

print_industry <- function(){
  pander::pander('
## Industry Knowledge

### Interpersonal Skills

* Technical Communication
* Lifelong Learning
* Human Relations
* Problem Solving
* Teaching
* Leadership
* Organization
* Finance
* Ethics

### Research

* Scientific 
* Computational
* Security
* Market 
* Data               
')
}