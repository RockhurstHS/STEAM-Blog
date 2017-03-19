---
layout: post
author: jwclark
title: SensED Design Demo Project Proposals
excerpt: The big demo day is April 13, 2017 at Think Big Partners in downtown KC. I look forward to seeing how students assemble the various pieces of this challenge into final projects.
tags: tech
indicators: st1.1 st1.2 st1.3 st1.4 st1.5 st1.6 st1.7 st1.8 st1.10 st1.11
---
<div class="flex-wrapper">
  <figure>
    <img src="/img/iot.jpg">
    <figcaption>image source: www.thinkbigpartners.com</figcaption>
  </figure>
</div>

This year in AP Computer Science Principles I signed up the entire class for the [SensED 2017 Innovation Challenge](http://www.kcsocialinnovation.org/sensed/). It seems like a good fit for the curriculum as it lends well to teaching about the architecture of the internet and its many systems. The goal is to have every team build a project that addressses one of these categories:

- **LIVE** smart: Create an idea that inspires new, effective and user friendly internet connected technologies that address disabled or elderly people's wellbeing, needs and aspirations.
- **GREEN** smart: Unleash your ideas in the area of sustainability, energy and climate change - creating a way to improve green living, energy consumption, or tap into new ways to help flood areas and flooding, beach erosion, air quality and other climate issues.
- **MOVE** smart: Think about how technology can improve how people and products move about our city. Smartphones, sensors, and open data have enabled new ways of getting from point A to B: from car-sharing services like Zipcar, to taxi services like Uber, or clever transport apps like Citymapper that help people navigate between a bus, a shared bike station, and renting a car.

Each group is equipped with Macbook Pro laptops, [GrovePi starter kits](https://www.dexterindustries.com/GrovePi/get-started-with-the-grovepi/grove-pi-starter-kit/), and we are in awaiting a shipment of [a lot more sensors](https://www.dexterindustries.com/GrovePi/supported-sensors/). On the laptops, we run VirtualBox and Ubuntu Server. Students installed Node.js and MongoDB on their virutal machines. They are hosting apps in Express with Socket.io so it's possible to read sensors from the Raspberry Pi computer through a student managed server and ultimately to a web interface for data visualization. It's very exciting!

If you would like to know more, check out the playlist I use in the classroom:   [https://jameswclark.github.io/IoT-Challenge/Info/](https://jameswclark.github.io/IoT-Challenge/Info/)

If you looked at that link, you'll see the project is broken up into three teams. This provides some nice boundaries for students to contribute their work. It also lends some great opportunities to split the curriculum and run interstitial lessons. I created checkpoints that require teams working in tandom to join forces and complete an objective. I feel really good about the playlist approach to running the class instruction.

The big demo day is April 13, 2017 at Think Big Partners in downtown KC. I look forward to seeing how students assemble the various pieces of this challenge into final projects. Below are the project proposals submitted by each team.

Check back to this post later and I'll have uploaded some photos.

## Project Ideas

### Fast Rides

> Our project is a tool designed to minimize time spent searching for your next form of transportation. Using GPS tracking in cars, buses, and cabs. We can gather data and send this data to our servers. Using your current location we will be able to determine the cheapest and fastest ride to your desired location.

### Smart Cane

> The project will be a seeing-eye cane for vision-impaired people. It will use the Raspberry/Grove Pi board as its brains, with several sensors each designed to monitor a different set of features. THe handle will have a touch sensor imbedded which will provide an operator presence sensor. This will turn on the cane. There will be a rangefinder on board, either a dedicated rangefinder sensor or an ultrasonic sensor. It will be mounted close to contact points. This will be chained to a buzzer and perhaps a red LED to alert the person and his/her assistant of impending contact. The temperatures and humidities will read out to a web server and the status of the cane will as well. Server integration will depend on the post capabilities of the sensor.

### Pothole Reporter

> This idea will allow the user to gather data on where potholes are around the city. The idea will use a rangefinder attached to the bottom a car and a GPS. The car will drive around the city as usual and whenever it senses a drastic change in depth of the street it will flag that location with the GPS onto a map.

### Accident Response

> The purpose is primarily safety. The safety purpose is for if the car gets in a big collision the sensor will emit a signal with the location to emergency services and it would notify them to send 911. This is good for parents and business owners for if their children or employees get in a big enough crash to where they cannot contact anyone the computer will do it with their location. Also, the main admin will be allowed to get alerts if the vehicle goes over a certain speed or if they leave a certain geographic zone the was preset by admin. Also, this will be allowed to sense flames which would notify the emergency services.
