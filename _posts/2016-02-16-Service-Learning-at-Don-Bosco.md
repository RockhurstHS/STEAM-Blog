---
layout: post
author: jwclark
title: Service Learning at Don Bosco Center
excerpt: Since 1972, Rockhurst High School’s senior class has been spending the beginning two and a half weeks of January spreading out for their senior service projects. This year we invested some of our effort in a service learning educational approach to one of the projects. Moreover, since this is the year we kicked off our school’s STEAM initiative, we wanted to take on a project that brings technical experience to our students (coding specifically).
---
<div class="flex-wrapper">
  <img src="/img/dbesl.jpg">
</div>

## Background

Since 1972, Rockhurst High School's senior class has been spending the beginning two and a half weeks of January spreading out for their senior service projects. This year we invested some of our effort in a [service learning](https://en.wikipedia.org/wiki/Service-learning) educational approach to one of the projects. Moreover, since this is the year we kicked off our school's STEAM initiative, we wanted to take on a project that brings technical experience to our students (coding specifically).

## An Approach

In a traditional service learning approach, students employ the skills they pick up previously in the classroom. The idea is that they solidify their knowledge by applying their skills to real-world scenarios. In the programming courses offered at our high school, we have up until now focused on the grammar and syntax of specific programming languages (Visual Basic and Java) and the ability to develop reasonable algorithms that solve small and isolated problems. Thus, the courses we offer do not focus on the software development life cycle or systems analysis and design including requirements gathering.

To fill this gap in training, we preceded the application of skill with prerequisite technical training. So, for our students "doing" service learning meant first receiving training in the necessary skills before implementing them. As we trained and developed concurrently, it was helpful to have a couple of mentors for a day: Tim Franzke, senior software engineer at Ascend Learning and Keith Entzeroth, co-founder and CEO of Instin.

## Setup

Eight brave (and very bright) students stepped up to the challenge to work on digitizing a student records process for [The Don Bosco English as a Second Language Center](http://donbosco.org/the-don-bosco-english-as-a-second-language-school/).

<div class="flex-wrapper">
  <img src="{{ site.baseurl }}/img/team-of-eight.jpg">
</div>

Because the Don Bosco ESL Center was scheduled to be closed during the first week of senior service projects, the only way this service partnership could work is if the seniors spent the first week serving off site. This was actually a perfectly convenient circumstance for our "instruction first, application later" service learning approach as it gave us a week-long training and development schedule during which time we built a prototype student records system.

Interestingly, only one of the students brought programming experience from one of our school's courses. Nevertheless, the amount of work this team of eight was able to produce was truly astounding. We owe a big thanks to [Think Big Partners](http://thinkbigpartners.com/) who agreed to host the team in their coworking space for six days of development time.

## Preparation

An important part of the planning phase is requirements gathering. A well-defined project serves a clear target at which to aim  development efforts. The seniors spent a day in October on site at Don Bosco ESL Center observing classrooms and processes. It was determined during the initial October visit that a database for tracking students would be helpful in writing grants for the Mexican Consulate. This objective was actually given to us by Don Bosco staff. Moreover, it was suggested that a Microsoft Access database would be a good place to start. That task would have been achievable in less than two days.

## The Things that Challenged Us

In spite of an early October day spent observing the agency and its processes, the outlined scope of the project remained unclear. The objective to build a database for grant writing may seem clear, but the details that surround such an implementation were lacking. Any documentation that would have been helpful in designing the system was not permitted to leave the building, so in a sense we were developing blindly without a feedback loop from the end-user. This left us guessing what information may or not be relevant in the database design.

Two other major factors overcomplicated this project.

Before we gathered on day one, I sent an email to the team getting a count of the laptops and tablets we would have available. Five laptops, three tablets - that's eight computers, enough to figure this database thing out and keep everyone working in a divide and conquer fashion.

<div class="flex bottom">
  <div class="x1">
    <div><img src="/img/osx.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/osx.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/osx.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/osx.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/ubuntu.jpg" alt=""></div>
    <div class="center">Linux</div>
  </div>
  <div class="x1">
    <div><img src="/img/ios.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/ios.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
  <div class="x1">
    <div><img src="/img/ios.jpg" alt=""></div>
    <div class="center">Apple</div>
  </div>
</div>
<p>&nbsp;</p>

You read the part about <strong>Microsoft Access</strong> right? That software doesn't exist for the Apple version of Microsoft Office. See that Linux computer? It actually has a Windows partition too - now that's something! We could all gather around that one single computer, but the whole point of this project was to serve Don Bosco ESL Center while teaching coding skills to the project team. Eight people standing around a laptop would not be a productive experience. Okay, that's one impediment, but that turned out not to be such a big deal because of the second impediment:

The internet infrastructure at Don Bosco ESL Center was supported by a [wireless ad hoc network](https://en.wikipedia.org/wiki/Wireless_ad_hoc_network). There were these puck looking devices made by or owned by Sprint that basically provided isolated islands of internet connectivity throughout the building. It was possible for teachers to connect to the internet but not necessarily directly to each other or to a centralized storage area such as you might see on an enterprise network or similar to what we use here at the high school. However, don't get caught up too much in those technical details. Here's the real part of the problem - 

The teachers in distributed fashion were all entering data (on paper) needed by the student records database we were to design. For our system to be maximally effective, it had to be accessible by anyone relatively anywhere in the building. Securing a cloud ready system doubles massively increases the workload. For one thing, we would have to introduce authorization and authentication (user logins, password recovery, that sort of thing) and this of course has to occur on the secure socket layer (encryption) or else we're passing around sensitive student data which I believe actually has some regulation under the (Family Educational Rights and Privacy Act (FERPA))[http://www2.ed.gov/policy/gen/guid/fpco/ferpa/index.html].

## The Things that Worked

Facing the above obstacles, I really had to think on my toes. Getting around the lack of Windows computers wasn't such a big deal. [SQLite](https://www.sqlite.org/) like MS Access is a standalone portable database file with the added advantage that it crosses platforms nicely. Even the iPad has an app for managing a SQLite database, so we set out identifying potential data objects and created their entity relationship diagram.

<div class="flex-wrapper">
  <img src="/img/erd.png" alt="Rough Draft - Entity Relationship Diagram">
</div>

Entity relationship diagram in hand, the team had a premise on which to actually code this thing so we moved on to structured query language (SQL). And [code it](https://github.com/RockhurstHS/DonBosco2015/blob/master/DBProgram/NewDatabase1.sql) they did. I didn't direct them to pair off in twos as in the picture below; they just naturally did it.

<div class="flex-wrapper">
  <img src="/img/dbeslt2.jpg" alt="Teams of Two Formed Naturally">
</div>

Next, the challenge became how to build a user interface around SQLite. For this task, I introduced HTML, CSS, and JavaScript. Since we were short on time, it seemed like a good idea to jump straight into Node.js as our web server technology to begin approaching this problem of connecting teachers through the cloud.

After the database design phase, the iPads were of little use.

## Scaling Forward

Adequate computing resources are necessary. Students without a laptop are really hindered in what they can do, and the whole project loses a degree of manpower as a result.

More preparation time is necessary. The project felt too rushed. This could be alleviated by more appropriate training in the classroom.

A better idea of exactly what to create would have been a major key to successful completion.

<div class="flex-wrapper">
  <img src="/img/majorkey.jpg" alt="Major Key">
</div>

We can agree requirements gathering was the greatest problem in understanding the overall process we were trying to digitize.


<!--
some background / inherent interest

starting before the project w/ mandatory training/classes
apply for projects like this in the future
half day wasted on HTML

For each teacher at the Don Bosco ESL Center, this amounts to roughly ten hours of data entry time saved weekly. Or, that is the goal anyway... more on that later.

https://github.com/RockhurstHS/DonBosco2015
-->
