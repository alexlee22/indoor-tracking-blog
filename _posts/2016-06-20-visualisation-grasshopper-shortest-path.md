---
layout: post
title: Shortest path and visualization
date: 2016-06-20 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Tasks to completing a shortest path algorithm using json and Grasshopper

author: tiara
---

This morning, we had a short meeting with Ben and basically ran over where we were at with the visualization of the positions and movements of users within the space. There are a number of issues we went over. Here was the agenda for the morning. 

### Agenda 

In Ben's words

Simulated data: I'll Explain its purpose, explain how it works and explain GH section. The data will be FAR cleaner than the data you'll get, but it'll get you started. There's always the opportunity to add more complexity once we've got started.

Should we build a simple system that they can understand end to end?
The current system is great, but has LOTS of moving parts. How do you all feel about making a simpler system that you can actually fully understand?

Status of technology map: Where are we? What's still to do?

Time line for the remaining time: What you all plan to do. This isn't to lock you in, it's to make sure that we can get rid of anything that you don't need to do and will just be a distraction.

Experiments with 1d tracking: Fill me in on how they are going. Are you ready to do the data processing yet? 

### Moving forward

After discussing where we each were in our projects, how our presentations went last Friday and what we need to do next, we worked out a series of tasks to complete from now and until we meet again. 

Using Ben's shortest path visualization map: https://notionparallax.co.uk/assets/16/paths.html

And the shortest path algorithm using grasshopper:

![tx table]({{ site.baseurl }}/assets/grasshopper-shortest-path.png)

It was clear what needed to be done. 

### Job A

Draw a timeline and mark on it for each week for how long it is going to take to write a thesis (eg: 1 month) as well as the experimentation and hacking. Then you'll know how long you have got to get all this stuff done. 

### Questions to ask the goals you have set

Are they realist expectations?
Are they missing anything?
Do they have all University imposed deadline on there?
Are the outcomes clear?


### Task 1

Get a plan of ARUP and of BVN with all of the furniture and columns and other obstacles and all the none obstacles taken off. (makes sure all the walk-able and none walkabout spaces as closed poly-lines). 

### Task 2

Define what is acceptable coverage! Then make a workable layout that has an acceptable coverage of baseStations over both ARUP and BVN plans. Acceptable coverage(for example): baseStations within 5 m of each other. Maybe start to think about applying more or less BaseStations at critical points in a user's path such as a hallway or kitchen area. 

### Task 3

Transcribe the X, Y co-ordinant of the baseStation layouts for ARUP and BVN(use GH because transcribing BS by hand is a pain). 
Then using the base.json(swap the x,y co-ordinations) to match the values in the model.  or even to produce bases.json. If you need more than 26 BS, make up some creative original names. 

### Task 4

(Ben will help with this)Generate new data based on the layout. Going from one bast station to the other is only feasible because we know the special layout.

### Task 5

Create a walking mesh(NAV-mesh) for BVN and ARUP. only on the nodes you can walk to. (Make sure there is only traversable edges in areas you can walk to) Read Ben's and Dan's squat paper that will explain what a NAV-mesh does. A traversal graph(Dan can help). Create a mesh of places you can walk to in BVN. Tuning to change the density of the plan, but doesn't cut anywhere off  by accident. 

Think about maybe needing to bake in Rhino and then bring back into GH to get rid of any computational problems.

### Task 6

To work out how to define the paths using the shortest path mechanism and the data produced by the simulator. Importing some json and then drawing paths from one node to the next(there is a lot of unknown in it).

### Task 7

Do an analysis of this process and list out the problems as we go or at the end.

### Task 8

Go through the Heruku tutorial, to make sure we know about all the moving parts 
https://notionparallax.co.uk/2016/mongo

### Task 9

Get your hacking dialed and check out Ben's blog: 
https://notionparallax.co.uk/2016/a-thinking-trick-for-beginner-programmers
