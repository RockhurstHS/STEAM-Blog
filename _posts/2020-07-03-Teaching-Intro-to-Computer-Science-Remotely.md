---
layout: post
author: jwclark
title: Teams and Project Based Learning in an Online Intro to Computer Science Class
tags: computer-science
---
This summer I had the opportunity to teach 40 incoming freshmen in a completely online version of our Intro to Computer Science course. As the start of class approached, my anxiety levels ticked upward. This was the largest class I ever had to manage, and the completely online format was fraught with uncertainty. I actually had a nightmore the evening before class... a scenario where I was overwhelmed, helpless, surrounded by unhappy and confused students with too many questions to handle all at once. Needless to say, I had a rough night's sleep the day before class started, but I had a plan and I was prepared and to my surprise it all went very smoothly.

Because I had not yet met any of these students, this experience was different compared to last semester when we transitioned online after spring break. I taught this course in real time with teamwork, small groups, adult supervision, and a student assistant while following a structured schedule. In this blog post I want to share how I implemented the program.

## 10 Google Meets

With permission from our IT director, I secured 10 laptops from the campus computer lab for use during the month of June when I taught this course. My idea was to setup 10 Google Meet sessions, one per laptop and assign the students to work in groups of four on most days. Even if I gave an individual task, they were distributed to their virtual spaces and permitted to work together. I wanted to foster relationship building and every few days I would mix the groups. 

<div class="flex-wrapper">
    <img src="{{ site.baseurl }}/img/online-intro-cs.jpg" alt="Online Intro CS class taught through Google Meets on 10 laptops in my dining room.">
</div>

Every week started with a project for four people, followed by another project or assignment for two people, and ended with individual work. Unless I gave a test or quiz, the students were permitted and encouraged to work together. Due to the amount of group work, I had to prepare more work for them to do. It is amazing how much a managed group of individuals can accomplish when given a direction and some time. This group of freshmen seemed capable of taking four hours of my preparation time and reducing it into one or two hours of labor. On the back end of that, it also created two to four more hours of grading.

In the physical classroom last year I would have each student working on an individual assignment because I wanted to free myself to roam about and offer guidance and support. I wanted to follow this same pattern in my online class but my physical coverage and presence are limited by the virtual space. To address this, I created learning activities that centered around the idea students would be there to support each other until I could make myself available. In a two hour class period with 10 groups I was able to rotate through all students about five minutes per group twice per day.

The 10 Google Meets made it possible for them talk to eachother without having to navigate potentially 36 other groups trying to talk. Moreover, the 10 laptops allowed me to virtually walk around my classroom and hear all my students talking simultaneously. Sure, it got quite noisy. Even though I turned down the volume on each laptop, I could still hear conversations, questions, concerns, confusions, but most importantly I had eyes and ears on everything going on. As a precaution and preventative measure, each session was recorded through Google Meet's built-in record feature. Students and their families were made aware of the recordings and their purpose was for security and protection and not for public distribution. The idea was to ward off any ill intentions, offensive speech, and any type of incident that would be destructive to the learning environment we aim to foster. Plus, it provided a means for going back and reviewing a classroom work session if necessary.

## Repl.it

And that brings me to Repl. I was able to keep eyes on student projects because of Repl [https://repl.it/](https://repl.it/) which is quite an impressive online programming environment. I was so impressed in fact that I do believe I will continue to use this into the school year. This platform works like a Google Doc where multiple users can join a shared environment, code together, and see eachothers' cursors while typing. This combined with voice and video chat through Google Meet honestly made this entire course possible. I can't imagine trying to teach teams in a project based learning environment. To facilitate this setup in a smooth way and cut down on transition times between projects and groups, I prepopulated each Repl assignment and invited team members. I created a Google Doc that listed the students, their Google Meets, and their Repl projects. With each assignment I included a document that looked like this: [Groups - Assignment 01](https://docs.google.com/document/d/e/2PACX-1vS7YaXF2LEdBaaDWFyQ8VNTfp9rdCjI48AFXjQm5ZaVQV39woo_K0oi-6OEYenlLysOgAOqmTMc59I6/pub). This also gave my student assistant, Ryan Ficklin, a clean and easy way to jump between groups and join the live coding sessions.

In addition to the 10 groups, I always kept the main class meeting running on my personal laptop. Students were instructed to return to the main classroom meeting and use their microphone there if they required my immediate attention for anything. On this laptop, I kept the volume high.

Here's a Repl embed of one of the assignments we did.

<iframe height="600px" width="100%" src="https://repl.it/@J_W_Clark/DataAnalysis?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe>

<p>&nbsp;</p>

We are a one-to-one high school in which students are required to have an iPad on campus. We do not require a Bluetooth keyboard in addition to the iPad but I strongly recommend it for a programming class and I wrote an email to parents making the suggestion. Moreover, I went further to suggest a laptop or desktop PC with webcam and microphone was preferable. Admittedly, the webcam is not a necessity but as a teacher I do prefer it if I can have students at least see eachother for introductions at least for a short while before they begin working. Repl on an iPad worked decidedly well.

## Assignments

Programming can be incredibly creative and the power to create begins immediately. As soon as a student learns something about programming, they gain the ability to mix it into some creation. The more they learn the more they are able to create. 

To me, it is important to first engage the students and give them feelings of success. For this reason I choose to start teaching about code syntax and indentation while building web pages. While HTML is not actually a programming language (it is a structure language), it is an amazing skill to teach beginner programmers for two reasons: 1) it is probably the most engaging code a beginner can write as it gives immediate visual feedback, and 2) it is incredibly resilient when it comes to improper code and formatting. Even if students make a lot of mistakes, web browsers are pretty good at rendering invalid syntax. Finally, in later classes I will continue to teach web development. I never really focus on web design, but teaching web technologies early lets me focus on more advanced software application topics later.

I transition to Python pretty quickly. We circle back around to HTML when we get into JavaScript and I talk about the document object model that makes up every web page. A freshman will see HTML, CSS, Python, then JavaScript. Following are the first four assignments I used in groups... three that kick off lessons in HTML and CSS, and one at the end that marks our introduction to Python.

* [Assignment 01 - Haiku](https://docs.google.com/document/d/e/2PACX-1vSHyztneIpP1q-4f6zToWlzWA1Fz427f4YWrccY4xzHpmWfK1HBkon0Q_6vUJoiCAvvDxet-66_nPau/pub)
* [Assignment 02 - Colorful Haiku](https://docs.google.com/document/d/e/2PACX-1vQsW11Y4FRO378jTLbrf-Dc-4Mwu8bXhjq1BI_2dMzlFxkZE5UkMXbvgX3fnVUACpMZ8r7f_LjNl70d/pub)
* [Assignment 03 - Perfect Recipe](https://docs.google.com/presentation/d/e/2PACX-1vTpESJl5MdcZc6ADAnnqpDMe9eWJiagKpEBni2QOIb2GPur5MABEvJ3TfehtuCWPoifjeIuO12GxSr7/pub?slide=id.p)
* [Assignment 04 - Traveling Functions](https://docs.google.com/document/d/e/2PACX-1vTbEpk-VDugnslAAhaCIlGlFdfwY36a_csSVHhoO-KvDL-ayb6O7JK3YoSVWLa-gNnxM5-gPZt6-kFY/pub)

## Student Assistance

I want to thank my student assistant, Ryan Ficklin, an incoming Junior at the high school and an accomplished programmer. He helped me manage the 10 groups as we would rotate through the morning jumping from one Meet to the next. I would start on group one and Ryan would start on group six.

