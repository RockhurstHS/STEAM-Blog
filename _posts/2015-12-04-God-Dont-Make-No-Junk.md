---
layout: post
author: franklyngar
title: God Don't Make No Junk
excerpt: The algebra, geometry, trigonometry, and calculus skills taught in the Math Department are the tools that programmers, scientists, and engineers use to describe the wondrous world our God has created. As an instructor steeped in the Jesuit tradition, I constantly remind our young sons of Ignatius to see God’s presence in all things, “God don’t make no junk.”
tags: math, tech
indicators: st1.2 st1.4
---
<blockquote>
  <strong>Job 12:7-9</strong>
  <span class="biblical-verse">
    <br>
    7&nbsp;&nbsp;"But ask the animals, and they will teach you,
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or the birds in the sky, and they will tell you;
    <br>8&nbsp;&nbsp;or speak to the earth, and it will instruct you,
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or let the fish in the sea inform you.
    <br>9&nbsp;&nbsp;Which of all these does not know
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;that the hand of the Lord has done this?
  </span>
</blockquote>

The algebra, geometry, trigonometry, and calculus skills taught in the Math Department are the tools that programmers, scientists, and engineers use to describe the wondrous world our God has created.  As an instructor steeped in the Jesuit tradition, I constantly remind our young sons of Ignatius to see God’s presence in all things, “God don’t make no junk.”

Teachers often earn extra money to supplement their income.  For the past 41 years, I have designed, planted, and maintained residential and commercial landscapes.  The branching pattern of trees and bushes is a great example of the mathematical nature of God’s creation.  Recognizing patterns and describing those patterns recursively lays the foundation for all coding courses. The recursive definition of sequence is the heart of building an Excel spreadsheet.  The following problem demonstrates our STEAM initiative. 

<hr>

<p class="center"><strong>From Biology to Algebra to Programming to Computer Applications</strong></p>

<p><strong>Recognizing Patterns.</strong> A new tree starts as a single branch. It sprouts three branches from the end of its growth from the previous year. A picture of the tree's branching pattern over the first three years of its life is shown below. Fill in the table over 8 years of tree growth.</p>

<br>

<style>
  #fractal-tree-table td, #fractal-tree-table th {
    border: solid black 1px;
    padding: 2px 5px 15px 5px;
  }
</style>

<div>
  <div style="display: inline-block; vertical-align: top; width: 35%;">
    <table id="fractal-tree-table">
      <tr><th>Age of the tree</th><th>Total Branches</th></tr>
      <tr><td>0</td><td>1</td></tr>
      <tr><td>1</td><td>4</td></tr>
      <tr><td>2</td><td>13</td></tr>
      <tr><td>3</td><td>40</td></tr>
      <tr><td>4</td><td>&nbsp;</td></tr>
      <tr><td>5</td><td>&nbsp;</td></tr>
      <tr><td>6</td><td>&nbsp;</td></tr>
      <tr><td>7</td><td>&nbsp;</td></tr>
      <tr><td>8</td><td>&nbsp;</td></tr>
    </table>
  </div>
  <div style="display: inline-block; vertical-align: top; width: 60%;">
    <img src="/img/fractal-tree.png" style="width: 90%; margin-left: 2%;" />
  </div>
</div>


<br><br>Code

1. A=0
2. B=1
3. Increase A by 1
4. new B=old B + 3^A
5. If A&lt;8 go to line 3
6. STOP

<style>
  #fractal-spreadsheet td {
    padding: 2px;
    text-align: right;
    width: 75px;
  }
</style>

<br>Excel Spreadsheet

<table id="fractal-spreadsheet">
  <tr><th>Age</td><th>Branches</td></tr>
  <tr><td>0</td><td>1</td></tr>
  <tr><td>1</td><td>4</td></tr>
  <tr><td>2</td><td>13</td></tr>
  <tr><td>3</td><td>40</td></tr>
  <tr><td>4</td><td>121</td></tr>
  <tr><td>5</td><td>364</td></tr>
  <tr><td>6</td><td>1093</td></tr>
  <tr><td>7</td><td>3280</td></tr>
  <tr><td>8</td><td>9841</td></tr>
</table>
