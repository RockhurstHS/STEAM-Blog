---
layout: post
author: gregowsley
title: The Words We Use
excerpt: The Words We Use
---

<style>
    #g-chart {
        display: block;
        margin: auto;
        overflow: hidden;
        position: relative;
    }

    #g-form {
        /*font: 16px sans-serif;*/
        text-align: center;
    }

    #g-form input {
        border-right: none;
        border-radius: 3px 0 0 3px;
        border: solid 1px #ccc;
        /*font: inherit;*/
        padding: 4px 8px;
        width: 223px;
    }

    #g-form button {
        background: #004276;
        border: none;
        border-radius: 0 3px 3px 0;
        color: #fff;
        /*font: inherit;
        font-weight: bold;*/
        padding: 5px 8px;
        position: relative;
        top: 1px;
        width: 30px;
    }

    .g-label {
        /*margin-left: 5%;*/
    }

    .g-legend {
        color: #999;
        /*font: 11px/1.3em sans-serif;*/
        height: 30px;
        /*margin-top: 15px;*/
        position: relative;
        text-align: center;
    }

    .g-arrow {
        position: absolute;
        /*width: 100px;*/
    }

    .g-arrow:before {
        position: absolute;
        /*font-size: 15px;*/
        /*font-style: normal;*/
        /*top: 7px;*/
    }

    .g-democrat.g-arrow {
        /*left: 170px;*/
        /*padding-left: 40px;*/
    }

    .g-arrow.g-democrat:before {
        /*content: "<";*/
        /*right: 100px;*/
    }

    .g-republican.g-arrow {
        /*right: 170px;*/
        /*padding-right: 40px;*/
    }

    .g-arrow.g-republican:before {
        /*content: ">";*/
        /*left: 100px;*/
    }

    .g-legend .g-pointer {
        /*width: 150px;*/
    }

    .g-overview {
        position: absolute;
        /*left: 360px;*/
        text-align: center;
        /*width: 250px;*/
    }

    .g-legend .g-democrat.g-pointer {
        position: absolute;
        /*left: 314px;*/
        text-align: right;
        /*padding-right: 20px;*/
    }

    .g-swatch {
        /*width: 6px;*/
        height: 8px;
        display: inline-block;
        position: relative;
        top: 1px;
        margin: 0 3px;
    }

    .g-republican.g-swatch {
        background-color: #f9caca;
        border-radius: 0 4px 4px 0;
    }

    .g-democrat.g-swatch {
        background-color: #c5d7ea;
        border-radius: 4px 0 0 4px;
    }

    .g-republican.g-swatch {
        background-color: #f9caca;
    }

    .g-notes {
        /*font: 11px/1.3em sans-serif;*/
        height: 100px;
        position: absolute;
        /*top: 430px;*/
    }

    .g-note {
        color: #999;
        position: absolute;
        /*width: 212px;*/
    }

    .g-note b {
        color: #333;
        text-transform: uppercase;
    }

    .g-note-arrow {
        fill: none;
        stroke: #aaa;
        stroke-dasharray: 2, 2;
        stroke-width: 1.5px;
        -webkit-transition: stroke-opacity 250ms ease;
        -moz-transition: stroke-opacity 250ms ease;
        -ms-transition: stroke-opacity 250ms ease;
        -o-transition: stroke-opacity 250ms ease;
        transition: stroke-opacity 250ms ease;
    }

    .g-error {
        background: #ffa;
        border: solid 1px #ccc;
        /*font-size: 16px;*/
        line-height: 1.2em;
        /*margin: 10px;*/
        /*padding: 10px;*/
    }

    .g-node .g-democrat {
        fill: #c5d7ea;
    }

    .g-node.g-hover .g-democrat {
        fill: #d1172b;
        fill: #acbed1;
    }

    .g-node.g-selected .g-democrat {
        fill: #99c0e5;
        stroke: #6081a3;
        stroke-width: 1.5px;
    }

    .g-node .g-republican {
        fill: #f9caca;
    }

    .g-node.g-hover .g-republican {
        fill: #dfb1b1;
    }

    .g-node.g-selected .g-republican {
        fill: #fda4a7;
        stroke: #af5e61;
        stroke-width: 1.5px;
    }

    .g-node .g-split {
        stroke: #000;
        stroke-opacity: .18;
        shape-rendering: crispEdges;
    }

    a.g-label {
        color: inherit;
        cursor: pointer;
        display: block;
        text-align: center;
        text-decoration: none;
        line-height: 1em;
        position: absolute;
    }

    .g-label .g-value {
        /*font: 11px sans-serif;*/
        white-space: nowrap;
    }

    .g-overlay,
    .g-node,
    .g-label {
        -webkit-tap-highlight-color: transparent;
    }

    .g-overlay {
        fill: none;
        pointer-events: all;
    }

    .g-body {
        min-height: 700px;
    }

    .g-has-topic .g-isnt-topic,
    .g-hasnt-topic .g-is-topic {
        display: none;
    }

    .g-body h3 {
        /*font-size: 18px;*/
        line-height: 1.4em;
        /*font-family: Georgia;
        font-weight: normal;*/
        /*margin-bottom: 0.9em;*/
    }

    .g-mentions {
        /*width: 445px;*/
    }

    .g-mentions h3 {
        text-align: center;
    }

    .g-mentions.g-democrat h3 {
        /*margin-left: 140px;*/
    }

    .g-mentions.g-republican h3 {
        /*margin-right: 140px;*/
    }

    .g-divider,
    .g-mention,
    .g-truncated {
        border-top: solid 1px #ccc;
    }

    .g-mentions.g-democrat {
        /*margin: 0 0 0 20px;*/
        /*float: left;*/
    }

    .g-mentions.g-republican {
        /*margin: 0 20px 0 0;*/
        /*float: right;*/
    }

    .g-head a {
        border-radius: 3px;
        /*padding: 3px 3px;*/
        white-space: nowrap;
    }

    .g-mention {
        /*clear: both;*/
        /*margin: -1px 0 1.5em 0;*/
    }

    .g-mention p {
        color: #444;
        /*font-family: Georgia;*/
        /*font-size: 1.3em;*/
        line-height: 1.40em;
    }

    .g-democrat .g-mention p {
        /*margin: 1.5em 0 1.5em 160px;*/
    }

    .g-republican .g-mention p {
        /*margin: 1.5em 140px 1.5em 20px;*/
    }

    .g-mention a {
        border-radius: 3px;
        /*padding: 1px 3px;*/
        text-decoration: none;
    }

    .g-democrat a {
        background-color: #c5d7ea;
        color: #4a5783;
    }

    .g-republican a {
        background-color: #fbdedf;
        color: #734143;
    }

    .g-mention p:before,
    .g-mention p:after {
        color: #ddd;
        /*font-family: sans-serif;*/
        /*font-size: 36px;*/
        position: absolute;
    }

    .g-mention p::before {
        content: "“";
        /*margin: 0.25em 0 0 -10px;*/
    }

    .g-mention p::after {
        content: "”";
        /*margin: 0.25em 0 0 0.1em;*/
    }

    .g-speaker {
        /*font: bold 13px sans-serif;*/
        /*margin: 1.5em 0 0.15em 0;*/
        text-transform: uppercase;
        /*width: 125px;*/
    }

    .g-speaker-title {
        /*clear: both;*/
        color: #aaa;
        /*font: 11px sans-serif;*/
        /*margin-bottom: 1em;*/
        /*width: 125px;*/
    }

    .g-democrat .g-speaker,
    .g-democrat .g-speaker-title {
        /*float: left;*/
        text-align: left;
    }

    .g-republican .g-speaker,
    .g-republican .g-speaker-title {
        /*float: right;*/
        text-align: right;
    }

    .g-truncated {
        border-top-style: dashed;
        color: #aaa;
        display: none;
        /*font: 11px sans-serif;*/
        /*padding-top: 1em;*/
        text-align: center;
    }


    /* Scoop Fixes */

    .storySummary,
    .storyHeader h1 {
        display: block;
        /*margin: 5px auto;*/
        padding: 0;
        text-align: center;
        /*width: 640px;*/
    }

    #interactiveFooter {
        border-top: 1px solid #ddd;
        /*margin-top: 10px;*/
        /*padding-top: 12px;*/
    }

    #main .storyHeader h1 {
        /*font-size: 26px;*/
        /*margin: 25px auto 4px auto;*/
    }

</style>

<!--<link rel="stylesheet" href="https://static01.nyt.com/newsgraphics/2012/09/04/convention-speeches/ac823b240e99920e91945dbec49f35b268c09c38/index.css">-->

<!-- SEARCH BAR -->
<form id="g-form">
    <input style="height:20px;" type="text" name="search" placeholder="Add word or phrase" tabindex="1">
    <button>+</button>
</form>

<hr>

<!-- VISUAL -->
<div id="g-chart" width="100%;" style="margin-left: 0%; postion:block;">
    <div class="g-legend" style="position:absolute; width:100%;">
        <div style="left:0; width:150px;" class="g-democrat g-arrow">
            Words favored
            <br>before coming to Rockhurst
        </div>
        <div style="position:absolute; width:200px; left:40%" class="g-overview">
            Number of mentions
            <br>by
            <span class="g-swatch g-democrat"></span>PRE and
            <span class="g-swatch g-republican"></span>POST
        </div>
        <div style="left:85%; width:150px; position: relative;" class="g-republican g-arrow">
            Words favored
            <br>after coming to Rockhurst
        </div>
    </div>
    <div style="margin-left: 0%" class="g-labels"></div>
    <svg style="background: white; margin-left: 5%;" class="g-nodes" width="100%" height="400"></svg>
</div>

<hr>

<!-- COMMENTS -->
<div class="g-body container-fluid">
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
<script src="https://cdn.rawgit.com/JamesWClark/Two-Party-Visualizer/gh-pages/two-party-visualize.js"></script>
<script src="https://cdn.rawgit.com/JamesWClark/Two-Party-Visualizer/gh-pages/index.js"></script>