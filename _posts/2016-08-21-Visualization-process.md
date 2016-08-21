---
layout: post
title: AUTOMATED VS VISUAL ANALYTICS
date: 2016-08-21 15:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Data gradients

author: tiara
---

This is where it comes down to why I am doing this project at all(I have to ask myself everyday). Workplaces are good, but they could be better, however finding whats wrong with them isn't always a piece of cake. Basically i want to collect data about human movement within a workplace but there is little or no automated systems available to do this. The systems that are available are pretty shit and require a lot of manual labor and a potential for unacceptable bias(people walking around with clipboards don't work well). So to do this we(our team of honors students) are developing a system that can be scaled using beacons, base stations and servers to access the information we need. 

That information will be used to collect the quantity and location of face-to-face interactions within a workplace, visualize spacial movement and provide data on how people use space. The data is not limited to these three areas but these are just our focus at the end of the day. 

Now for the fun stuff, lets look at some data!

### BACK END

What we start with...

~~~ bash 

{ "uuid" : "d0d3fa86ca7645ec9bd96af497e31b92", "major" : 58437, "minor" : 57905, "rssi" : -88, "agentId" : "RPI002", "time" : 1467101011808 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af459405c0f", "major" : 42746, "minor" : 49413, "rssi" : -61, "agentId" : "RPI002", "time" : 1467101012758 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af487e1f6b6", "major" : 149,   "minor" : 25502, "rssi" : -78, "agentId" : "RPI004", "time" : 1467101657316 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af497e31b92", "major" : 58437, "minor" : 57905, "rssi" : -84, "agentId" : "RPI002", "time" : 1467101915059 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af459405c0f", "major" : 42746, "minor" : 49413, "rssi" : -56, "agentId" : "RPI002", "time" : 1467101922934 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af487e1f6b6", "major" : 149,   "minor" : 25502, "rssi" : -68, "agentId" : "RPI002", "time" : 1467102157526 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af459405c0f", "major" : 42746, "minor" : 49413, "rssi" : -75, "agentId" : "RPI002", "time" : 1467102163137 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af459405c0f", "major" : 42746, "minor" : 49413, "rssi" : -61, "agentId" : "RPI002", "time" : 1467102173493 },
{ "uuid" : "d0d3fa86ca7645ec9bd96af487e1f6b6", "major" : 149,   "minor" : 25502, "rssi" : -69, "agentId" : "RPI002", "time" : 1467102178023 },

~~~ 

### FRONT END 

What we hope it too look like...

<iframe width="560" height="315" src="https://www.youtube.com/embed/8arjqQBc22A" frameborder="0" allowfullscreen></iframe> 

is just finding a process for presenting someone with a process for taking raw, dirty data to visualization and result at the end. The easy part is automating the whole thing (Automating = (hypothetically) There were 5 potential interactions over course of day). However the second part of the problem is visualizing the interaction and how you can draw attention to the event(analyzing the process and effectiveness in communication). 

### Top end start 

Made a start on trying to measure the face-to-face interactions when comparing users paths. Its nothing yet but as I develope more interaction scenarios, working our a code to help identify them will be my next steps. 

![something or other]({{ site.baseurl }}/assets/interaction-script001.png )
