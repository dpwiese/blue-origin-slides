---
title: "Blue Origin Interview"
author: Daniel Wiese
date: "March 7, 2023"
duration: 75
published: false
slideNumber: true
theme: dan
width: 1600
height: 1000
transition: fade
---

# About Me

<div class="col-container">
<div class="col">

- Test
- More Stuff

</div>
<div class="col">
<img class="image-border" src="../img/headshot-square-small.jpg" width="500"/>
</div>
</div>

# Significant Accomplishments

<div class="col-container">
<div class="col" style="flex-grow:2;">

<ul>
<li class="fragment" data-fragment-index="1" style="font-weight: bold; margin-bottom: 30px;">Completing a PhD in mechanical engineering at MIT</li>
<ul>
<li class="fragment" data-fragment-index="2">Learned fundamental skills to think deeply, solve difficult problems, and communicate</li>
</ul>
<li class="fragment" data-fragment-index="3" style="font-weight: bold; margin-bottom: 30px; margin-top: 30px;">Founding and selling Humon</li>
<ul>
<li class="fragment" data-fragment-index="4">Learned a career's worth of skills in 3.5 years</li>
<li class="fragment" data-fragment-index="5">Hardware/software engineering, manufacturing, fundraising, IP</li>
</ul>
<li class="fragment" data-fragment-index="6" style="font-weight: bold; margin-top: 30px;">Leading R&D at Whoop</li>
<ul>
<li class="fragment" data-fragment-index="7">Hired and led a team of outstanding engineers and scientists</li>
<li class="fragment" data-fragment-index="8">Produced excellent outcomes and maintained great eNPS</li>
</ul>
</ul>

</div>
<div class="col">

<img class="fragment" data-fragment-index="1" src="../img/mit-logo.png" width="300" style="margin-bottom: 150px;"/>
<img class="fragment" data-fragment-index="3" src="../img/humon-logo.png" width="500"/>
<img class="fragment" data-fragment-index="6" src="../img/whoop-logo.png" width="450" style="margin-top: 150px;"/>

</div>
</div>

# Airbreathing Hypersonic Vehicles: Control Challenges

<div class="col-container">
<div class="col" style="flex-grow:2;">

<ul>
<li class="fragment" data-fragment-index="2" style="font-weight: bold; margin-bottom: 30px;">Highly open-loop unstable</li>
<li class="fragment" data-fragment-index="3" style="font-weight: bold; margin-bottom: 30px;">Difficult to model</li>
<ul>
<li class="fragment" data-fragment-index="4">Poor CFD models</li>
<li class="fragment" data-fragment-index="5">Limited wind tunnel data</li>
<li class="fragment" data-fragment-index="6">Complex shock interactions</li>
</ul>
<li class="fragment" data-fragment-index="7" style="font-weight: bold; margin-bottom: 30px; margin-top: 30px;">Must operate over a large flight envelope</li>
<ul>
<li class="fragment" data-fragment-index="8">Largely varying dynamic pressure</li>
</ul>
<li class="fragment" data-fragment-index="9" style="font-weight: bold; margin-bottom: 30px; margin-top: 30px;">Aerodynamic and propulsive coupling</li>
<ul>
<li class="fragment" data-fragment-index="10">Unstart can create abrupt changes to moments</li>
</ul>
<li class="fragment" data-fragment-index="11" style="font-weight: bold; margin-bottom: 30px; margin-top: 30px;">Unable to accurately obtain incidence angle measurements</li>
</ul>

</div>
<div class="col">

<!-- https://blog.pointwise.com/2018/06/15/this-week-in-cfd-317/ -->
<img class="fragment" data-fragment-index="4" src="../img/x51-cfd.jpg" width="500"/>
<img class="fragment" data-fragment-index="7" src="../img/flight-envelope.png" width="500"/>

</div>
</div>

# Problem Statement

<p style="display: flex;">Design a controller for a hypersonic vehicle that can</p>

<ul>
<li class="fragment" data-fragment-index="2" style="margin-bottom: 30px;">Accommodate high levels of <b>model uncertainty</b></li>
<li class="fragment" data-fragment-index="3" style="margin-bottom: 30px;">Be <b>robust</b> to delays and unmodeled dynamics</li>
<li class="fragment" data-fragment-index="4" style="margin-bottom: 30px;">Enable <b>agressive maneuvering</b></li>
<li class="fragment" data-fragment-index="5" style="margin-bottom: 30px;"><b>Avoid unstart</b></li>
<li class="fragment" data-fragment-index="6" style="margin-bottom: 30px;">Ensure satisfactory <b>command tracking</b></li>
</ul>

# Plant Overview

<img class="fragment" data-fragment-index="7" src="../img/hifire6.png" width="500"/>





# Testing Math Stuff

- A first item with some equation $x^2$
- A second item with some other equation $$(a+b)^2=a^2+b^2$$

# Another Heading

\begin{equation*}
  \begin{bmatrix}
    \dot{u} \\\\
    \dot{w} \\\\
    \dot{q} \\\\
    \dot{\theta} \\\\
    \dot{h}
  \end{bmatrix}=
  \begin{bmatrix}
    X_{u} & X_{w} & 0 & -g & 0 \\\\
    Z_{u} & Z_{w} & u_{\text{eq}} & 0 & 0 \\\\
    M_{u}+M_{\dot{w}}Z_{u} & M_{w}+M_{\dot{w}}Z_{w} & M_{q}+M_{\dot{w}}u_{\text{eq}} & 0 & 0 \\\\
    0 & 0 & 1 & 0 & 0 \\\\
    0 & -1 & 0 & u_{\text{eq}} & 0
  \end{bmatrix}
  \begin{bmatrix}
     u \\\\
     w \\\\
     q \\\\
    \theta \\\\
    h
  \end{bmatrix}+
  \begin{bmatrix}
    X_{\delta_{\text{th}}} & X_{\delta_{e}} \\\\
    Z_{\delta_{\text{th}}} & Z_{\delta_{e}} \\\\
    M_{\delta_{\text{th}}}+M_{\dot{w}}Z_{\delta_{\text{th}}} & M_{\delta_{e}}+M_{\dot{w}}Z_{\delta_{e}} \\\\
    0 & 0 \\\\
    0 & 0
  \end{bmatrix}
  \begin{bmatrix}
    \delta_{\text{th}} \\\\
    \delta_{e}
  \end{bmatrix}
\end{equation*}
