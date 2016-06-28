---
layout: post
title: Time lIne Breakdown
date: 2016-06-28 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Time-line breakdown and run-sheet for the rest of the semester 

author: tiara
---

So going further with the explanation of the time-line for the rest of the semester, I quickly wanted to run through a few goals for each step of the process of the project from now until it is due. 

# Experimentation

### Distance vs Accuracy

This is where we are at, finding out to what extent the beacons can accuratly locate a person within a time period. This step needs to be done properly before we can go any further. 

### Trilateration or Triangulation

For this project, it appears to be more viable to use trilateration instead of trilangulation for giving each participant a x,y co-ordinate within space. Wikipedia has a clean-quick explanation of the term:

>In geometry, trilateration is the process of determining absolute or relative locations of points by measurement of distances, using the geometry of circles, spheres or triangles. See diagram. 

![trilateration]({{ site.baseurl }}/assets/trilateration.png)

This mode appears more viable for proximity based tracking which is what we will be using for this project because it uses ratios instead of hard maths. In a perfect world, it would be more suitable to use triangulation. Wikipedia has a clean-quick explanation of the term:

>Triangulation is the tracing and measurement of a series or network of triangles in order to determine the distances and relative positions of points spread over an area, especially by measuring the length of one side of each triangle and deducing its angles and the length of the other two sides by observation from this baseline.

![triangulation]({{ site.baseurl }}/assets/Triangulation.gif)

I think though, just to be sure, we should make two grasshopper script which can give us both based on a series of positions. This will be more tricky than it appears, but at least once we have the data base up and running then we can go straight to gathering information from all our different angles, mine face-to-face interactions, Annisa's visualizations of motion and Alex's (not sure yet, that is the question). 

The Shortest path, will help with any unknowns. 

### Isovist Model

The isovist model will give us a indication as to where we should place the Rpi and how many we will need for a given floor space. We need to take confounding factors such as machine, human occupancy and broadcasting intervals all into consideration when developing this mode. Before we can completely do the isovist model, we need to run more experiments to work out the range of accuracy for the receivership of the RPI and then apply that to a radius. That would determine how many Rpi's we need to cover a workspace and then we can order how many we need, based on the coverage. 

### Manufacture

The ordering of all the parts: Raspberry Pi, estimote Sticker, WiFi Dongle, BLE Dongle, can only happen once we have a clear idea of the isovist model. 

# My angle: Face-to-face interactions within workplaces. 

### Data Collection

I will need: A list of the User's location, their last known direction of view(using the shortest path algorithm we developed and asking the reverse of the last known vector of the user), the time in which the user was recorded at that point and what was the last known baseStation that recorded the user within the space. 

### Analysis 

Once the database us up and running, we will need to run our experiments and then get the information (see above), for completing our projects. To do this I will need to learn more MongoDB and fully understand the data base in a detailed way. To do this  will need to brush up on my coding and do more CodeSchool tutorials, for NODE, MOngoDB and Javascripting. 

### Thesis writing 

The Thesis writing will be quite straight forward, but I have a tendency to write a lot of crap no one cares about or is just crappy in nature. So the sooner we get the experimentation done, the sooner I can start writing, which means the sooner I finish and the sooner I can start editing the whole document. My problem is not writing too little, I write too much, and keeping the document within 8000 words will be a challenge. 

### Presentation

For the presentation of the project, I had a lot of good responses from the mid semester project, however there were a lot of recurring questions about my project that I think a few extra slides can cover. Then I just have to add my findings and a demonstration animation(or what ever I decide to use). 

### Moving forward 

The technology architecture diagram needs a little cleaning up. 
The triangulation and trilateration grasshopper script 
A breakdown of the data base in MongoDB and how it works 
Write up of the experiment using two Rpi and one person moving between 22m. 



