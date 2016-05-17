---
layout: post
title: Hardening the #@%$ up!
date: 2016-05-16 01:01:59
type: post
published: true
status: publish
categories: [MongoDB,Database]
tags: [ThesisWritting]
description: Getting over my hate for stupid things

author: tiara
---

Mongo = 2
Tiara = 1

It is coming to the time when we are getting ready to organise the query questions for our database. To do this I have to think very carefully as mine may not be exactly the same as my partners Alex and Annisa. To do this I will need to explore my thesis question and aim very carefully.

# Project summary

I think it's important to state this now as the querie questions I will be asking from the database, will relate directly to what I want to achieve from the whole project. 

### The aim

To make observations about how a workplace is used by its employees. These observations will help to inform designers and enable them to design better workplaces. 

### Focusing the study

'To Make observations about how a workplace is used by its employees' can mean a wide variety of things. Specifically within my thesis I am more interested in  looking directly at the physical world in which the user enhabits(the workplace itself) and the social/phycological implications of that physical world (partciularly face to face interactions). 

### The motivation

By understanding how a workplace is used by its employees, it may help designers design better workplaces in the future which responde to the contemporary needs of the users. 

Right.. now that I have that out of the way, lets look at exploding the aim and identifying the queryies to gather the information we need. 

Queries

The following queries are not hard and fast ideals, however they are what I invision at the moment that the web front server might feedback to me when I look for specific data sets. The queries might include: 

0. Is (person) in office today/available/unavailable
1. Find someone's location in near real time. 
2. Inform a (person), that (another person) is looking for them
3. Where was (person) last seen. 
4. Finding the occupancy within a given zone at a specific time.
5. Find how many people have used (state room/zone type) between (state start time) to (finish time).

### Recognising that the tracker is broadcasting via an actual person. 

This step is pretty straight forward: The main idea is that when the person with the tracker enters the facility and sit down at their desk, a prompt comes up on their screen asking them if they have entered the office and are available. This is triggered by the proximity of the tracker to a near-by beacon and makes the assumption that the first thing the person might do is go to their desk and drop their things. 

The message could look a little like this. 

*** 1. "yo dude, are you in today?"
*** 2. "are you taking visitors today or do you not want to be bothered?"

This would tell the server that (person) is in today = ~~~ bash status = at work ~~~ and is ~~~ bash available/ unavailable~~~ . Now we are in the buildings and people can find us, let's find a person!

### Finding people in near real time. 

We can now start to querie finding people within a floor plan. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan.jpg)

Now we can try and apply specifics and try and get the exactly location of people from the data in *** real time***, however we are going to run into some problems with this. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_beacon_range.jpg)

Here we have the blue squares representing a hypothethical location of a beacon location which recieves information from the trackers. The orange representing the range of the tracker. some of the ranges 'overlap' while others fail to cover specific areas within the space, shown by the white space within the plan. 
The issue here is that the individual being tracker may step into this 'unmonitored territory' and then go off the grid completely. A way of overcoming this is searching for individuals, but doing it in a *** near-real time*** basis. 

The floor plan could then be divided into a grid which could represent zones within the floor plan. The grid might look a little like this. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_colouredzones.jpg)

This would mean we could search for *** the last recorded positioning*** of a specific person. For example, If we want to find someone in near-real time, we can hit a item in the webfront interface named "find me a person". It open's a promp tool bar and says ***"who do you want to find?"*** which is when the user would enter the name of the person they wish to find = (Johnny Derp). This would return last recieved zone output to the searcher. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/floorplan_redzone.jpg)

*** Johnny Derp was last seen in the 'Red Zone'.*** Now ***alert*** Johnny derp that *** Matty blair*** is looking for him. 

Seperating the different spaces of the office into zones can also work for some of the other queries
such as Finding the occupancy within a given zone at a specific time. (as the location of everyone is recorded throughout the day) or to find how many people have used (state room/zone type) between (state start time) to (finish time).

These all require prompt inputs. 

# Moving forward

The next phase for me is going to be sitting down with MongoDB open, playing with the thingys and tutorials and trying to implemenet some code. Probably talk to Jorke about it as well as he seems to be the only one who knows whats going on. 

### Some things to think about: Duck debugging


![alt text]({{ site.baseurl}}/assets/duck_debugging.jpe)

This saying somes in many different forms: "teach your doge", "say it as if your explaining it too a fifth grader" but basically the term 'Duck debugging" refers to specifically when you are coding something and or writing commands for your program, you are too 'teach your rubber duck all your lines of code!!! By doing this you are suppose to further understand what the heck you are talking about.  


