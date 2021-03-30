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