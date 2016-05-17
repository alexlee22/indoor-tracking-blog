---
layout: post
title: Hardening the hell up!
date: 2016-05-16 01:01:59
type: post
published: true
status: publish
categories: [MongoDB,Database]
tags: [query questions, workplace zones ]
description: Getting over my hate for stupid things

author: tiara
---

Mongo = 2

Tiara = 1

I'm just going to come out and say that I don't know a lot about MongoDB(yet), however as I am on a steep learning curve I felt fit to outline what I intend to implement once I have learnt enough to get things coded up. To do this I'll need to clearly outline what the heck I am going to code and what I want the whole thing to look like. 

# Project summary

I think it's important to state this now as the query questions I will be asking from the database, will relate directly to what I want to achieve from the whole project. 

### The aim

To make observations about how a workplace is used by its employees. These observations will help to inform designers and enable them to design better workplaces. 

### Focusing the study

To make observations about how a workplace is used by its employees' can mean a wide variety of things. Specifically within my thesis I am more interested in  looking directly at the physical world in which the user inhabits(the workplace itself) and the social/psychological implications of that physical world (particularly face to face interactions). 

### The motivation

By understanding how a workplace is used by its employees, it may help designers design better workplaces in the future which respond to the contemporary needs of the users. 

Now lets look at exploding the aim and identifying the queries to gather the information we need. 

Queries

The following queries are not hard and fast ideals, however they are what I envision at the moment that the web front server might feedback to me when I look for specific data sets. The queries might include: 

0. Is (person) in office today/available/unavailable
1. Find someone's location in near real time. 
2. Inform a (person), that (another person) is looking for them
3. Where was (person) last seen. 
4. Finding the occupancy within a given zone at a specific time.
5. Find how many people have used (state room/zone type) between (state start time) to (finish time).
6. How many face-to-face interactions did you have today? Who with? How long did they go for?

### Recognising that the tracker is broadcasting via an actual person. 

This step is pretty straightforward: The main idea is that when the person with the tracker enters the facility and sit down at their desk, a prompt comes up on their screen asking them if they have entered the office and are available. This is triggered by the proximity of the tracker to a near-by beacon and makes the assumption that the first thing the person might do is go to their desk and drop their things. 

The message could look a little like this. 

***"yo dude, are you in today?"***

and 

***"are you taking visitors today or do you not want to be bothered?"***

This would tell the server that (person) is in today = status = at work and is available/ unavailable. Now we are in the buildings and people can find us, let's find a person!

### Finding people in near real time. 

Now we can try and apply specifics and try and get the exactly location of people from the data in ***real time***, however we are going to run into some problems with this. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_beacon_range.jpg)

Here we have the blue squares representing a hypothetical location of a beacon location which receives information from the trackers. The orange representing the range of the tracker. some of the ranges 'overlap' while others fail to cover specific areas within the space, shown by the white space within the plan. 
The issue here is that the individual being tracker may step into this 'unmonitored territory' and then go off the grid completely. A way of overcoming this is searching for individuals, but doing it in a ***near-real time*** basis. This structure assumes that the tracker may at some point be out of range of the reciever, so best to design for worste case scenario. 

The floor plan could then be divided into a grid which could represent zones within the floor plan. The grid might look a little like this. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_colouredzones.jpg)

This would mean we could search for ***the last recorded positioning*** of a specific person. For example, If we want to find someone in near-real time, we can hit a item in the webfront interface named "find me a person". It opens a prompt tool bar and says ***"who do you want to find?"*** which is when the user would enter the name of the person they wish to find = (Johnny Derp). This would return last received zone output to the searcher. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_redzone.jpg)

The output might look a little like: ***Johnny Derp*** was last seen in the ***Red Zone*** now ***alert Johnny derp*** that ***Matty blair*** is looking for him. 

Separating the different spaces of the office into zones can also work for some of the other queries
such as Finding the occupancy within a given zone at a specific time. (as the location of everyone is recorded throughout the day) or to find how many people have used (state room/zone type) between (state start time) to (finish time).

These all require prompt inputs. 

# Defining face to face interactions

This is a tricky one, howeve if it is possible to identify who has face-to-face interactions, how long they last for and who with might be very interesting to the user and for statistical analysis. This kinda is the crux of my thesis so I really want to nail this part. The way I see it playing out, you have two people. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_people_interactions.jpg)

I think the best way of this working is that the user wears the tracker around their neck, is it can deter which side is the stronger signal(looking out) or the weaker signal(going through the persons body). That would 

The parameters:
1. The direction of the tracker in association to the other
2. The distance between the tracker to the other
3. The duration of time spent in interaction
4. The person in which the interaction happened. 

# Moving forward

The next phase for me is going to be sitting down with MongoDB open, playing with the thingys and tutorials and trying to implement some code. Probably talk to Jorke about it as well as he seems to be the only one who knows what's going on. 

### Some things to think about: Duck debugging

![alt text]({{ site.baseurl}}/assets/duck_debugging.jpe)

This saying comes in different forms: "Teach your dog", or “explain it to a fifth grader" but basically the term 'Duck debugging" refers to specifically when you are coding something and or writing commands for your program, you are too 'teach your rubber duck all your lines of code!!! By doing this you are suppose to further understand what the heck you are talking about.  
