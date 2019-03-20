---
layout: post
author: gregowsley
title: Learning at the 2019 STEM Summit
tags: science technology engineering math 
excerpt: What did we learn at the 2019 STEM Summit?
---

<!-- SEARCH BAR -->
<form id="g-form">
    <input style="height:20px;" type="text" name="search" placeholder="Add word or phrase" tabindex="1">
    <button>+</button>
</form>

<!-- BUBBLES -->
<hr>
<div id="g-chart" width="100%;" style="margin-left: 0%; postion:block;">
    <div class="g-legend" style="position:absolute; width:100%;">
        <div style="position:absolute; width:200px; left:40%" class="g-overview">
            Number of mentions per 1,000 words
            <br>by
            <span class="g-swatch g-democrat"></span>PRE and
            <span class="g-swatch g-republican"></span>POST
        </div>
    </div>
    <div style="margin-left: 0%" class="g-labels"></div>
    <svg style="background: white; margin-left: 5%;" class="g-nodes" width="100%" height="420"></svg>
</div>
<hr>

**<center>“Please write as <u>many things</u> as you can that <u>indicate successful STEM education</u> is happening at a school.”</center>**

<!-- COMMENTS -->
<div class="g-body row">
    <div class="g-mentions g-democrat col-md-6">
        <h3 class="g-head g-hasnt-topic">
            <span class="g-isnt-topic"><br>Language We Brought</span>
            <span class="g-is-topic">
                <span style="padding-left: 0.76em;">Language We Brought</span>
            </span>
        </h3>
        <div class="g-divider"></div>
    </div>
    <div class="g-mentions g-republican col-md-6">
        <h3 class="g-head g-hasnt-topic">
            <span class="g-isnt-topic"><br>Language We Took</span>
            <span class="g-is-topic">
                <span style="padding-left: 0.76em;">Language We Took</span>
            </span>
        </h3>
        <div class="g-divider"></div>
    </div>
    <br clear="all">
    <br>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script src="https://cdn.rawgit.com/JamesWClark/Two-Party-Visualizer/gh-pages/d3.v2.min.js"></script>
<script src="https://cdn.rawgit.com/JamesWClark/Two-Party-Visualizer/gh-pages/topics.js"></script>
<script src="/js/two-party-visualize.js"></script>

<script>
// these sources need to be published on the web for this app to work correctly.
var source1 = 'https://docs.google.com/spreadsheets/d/1r18EHVyqB8m47S8cliQSTAOnb9H5z1w8vUvmlWoZWG0/edit#gid=1847657122';
var source2 = 'https://docs.google.com/spreadsheets/d/1sxcZxHlXjamJjYCukxu7aogH7yxfjqxKOmUsubzySfw/edit#gid=193257641';

var viz = new TwoPartyVisual();
viz.loadPearDeckSheets(source1, source2)
</script>












https://docs.google.com/presentation/d/19oYSVtoHdE4dFI1AnX2S0Z9iR_SztXwbSJKPScZcx2I/edit?usp=sharing


