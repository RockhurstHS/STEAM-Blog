---
layout: post
authors: 
- marvingrilliot
- jwclark
title: Coding with Hurtados
excerpt: Given a set of parameters and some basic rules to follow, every student is capable of producing a computational artifact. Check out what the Hurtado Scholars can code. We can't wait to see what they'll come up with next year.
---
This summer we had the pleasure of coding for two weeks with the Hurtado Scholars. The [Hurtado Scholars Program](https://www.rockhursths.edu/pages/about-us/about-us---hurtado-scholars-program) is a middle school mentoring program that works with 6th, 7th, and 8th grade boys from three urban Catholic schools.  Looking ahead to high school, we felt that coding would not only prepare them but also connect with their creative side.  The Hurtado Program focuses a lot on math and language arts but many of the students express an interest and enthusiasm for computer programming.  Coding is an essential skill looking forward and this opportunity provides exposure to a world often underrepresented by students of color.  The Scholars enjoyed the experience and it provided a chance for them to shine and express themselves in a unique way.  Many demonstrated a natural aptitude.  

A good number of these students will attend the high school in years to follow, so we thought it a good idea to introduce our lesson plans from the Intro to Computer Science course.

<div class="flex-wrapper">
  <img src="/img/hurtados_code.jpg">
</div>

At the high school, we use [Processing](https://processing.org/) to teach our students how to code. In fact, all 9th graders are required to take this course. The novelty of teaching with Processing is its graphical output.

That is to say, students write code...

<pre><code>void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(0, 255, 0);
  stroke(189, 0, -2);
  translate(width/2, height/2, 0);
  rotateX(mouseY*0.05);
  rotateY(mouseX*0.05);
  fill(mouseX*0, 0, 0);
  sphereDetail(mouseX/5);
  sphere(200);
  fill(mouseX*255, 0, 0);
  ellipse(-128, 151, 150, 150);
  fill(mouseX*255, 0, 0);
  ellipse(150, 150, 150, 150);
  ellipse(10, 203, 150, 150);
}</code></pre>

... and visuals are the result. Try rolling your mouse or tapping your phone screen over this sketch:

<style>
  #hurtado-allande-sketch {
    width: 50%;
  }
  .hurtado-gallery-thumb {
    width: 100%;
    max-width: 100%;
  }
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/processing.js/1.6.6/processing.min.js"></script>
<canvas id="hurtado-allande-sketch" data-processing-sources="/assets/pde/allande/allande.pde"></canvas>

We find that students frequently arrive with preconceived notions that they are not good with computers, math, or coding. Some of them will even audibly express their feelings toward computing. Of course there are also those students who express their excitement about the subject as well. In either case, it is our goal to break down any barriers to learning, instill a growth mindset, and tap into their creativity and self expression.

Given a set of parameters and some basic rules to follow, every student is capable of producing a computational artifact. Check out the Hurtados Code in the gallery below. Each of these sketches is a final project from one of the Hurtado Scholars in their two week summer coding class. We can't wait to see what they'll come up with after a completing a semester long class.

<div class="flex-wrapper">
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/black_and_white/black_and_white.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/long_fish/long_fish.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/rocket_car/rocket_car.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/sponge_bob/sponge_bob.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/rodriguez/rodriguez.pde"></canvas>
  </div>
</div>

<div class="flex-wrapper">
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/carmona/carmona.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/angel/angel.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/vega/vega.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/dragon/dragon.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/nevels2/nevels2.pde"></canvas>
  </div>
</div>

<div class="flex-wrapper">
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/fernando/fernando.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/khoa/khoa.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/pendergraft/pendergraft.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/cabrera/cabrera.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/victor/victor.pde"></canvas>
  </div>
</div>

<div class="flex-wrapper">
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/gonzales/gonzales.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/guerra/guerra.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/murphy/murphy.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/gumball_machine/gumball_machine.pde"></canvas>
  </div>
  <div class="x1">
    <canvas class="hurtado-gallery-thumb" data-processing-sources="/assets/pde/devon/devon.pde"></canvas>
  </div>
</div>
