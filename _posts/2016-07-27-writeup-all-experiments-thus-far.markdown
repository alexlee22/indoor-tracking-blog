---
layout: post
title: Experiment 1
date: 2016-07-27 16:24:00
type: post
published: true
status: publish
categories: []
tags: []
description: Rewrite for experiment 1 because we didnt do it the first time
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: tiara
---


### Introduction

As we are going to be writting up the experiments within our thesis, it is extremly important our experiments are not only valid, reliable, and have a control, but are also are properly reflected apon(what ever that means). Its starting to get to that time where we can finally start to do major steps in our research progress, therefore we can start writing about it. I for one think we need a clearer reflection process of everything we have done which will make our lives easier when doing the write up. I am following this: <b> teachertech.rice.edu/Participants/louviere/lessons/les1.html </b> as prescribed by our good old friend Bendo. This is a good chnace for us all to reflect on our process as we have moved through the project, what we have learnt and how our methods have chnaged based on our findings. This blog post is a document in progress, and all mssing information will eventually be added. 

# Experiment 1

### Purpose

To identify the appropriate location of the Base Station in the z axis for future positioning. 

### Hypothesis

Base Stations positioned up high which are clear from material obstruction(and maintain a clear line of sight will reciever higher numbers of detection and higher rssi value then those that do not). 

### Materials

1. Base Station(Raspberry pi), 

2. Beacon (estimote sticker), 

3. various miscellanious wiring and laptops for recording data(see procedure)

### Procedure

Three Base stations were positioned at different heights, one at ceiling height(2.5m from the floor plate), one at mid height(1m from the floor plate) and one positioned on the ground(0m from the floor plate). 

![experiment 1 set up diagram]({{ site.baseurl }}/assets/exp1/exp1_setup.jpg) 

We recorded at 2 minute intervals for both a moving person and a stationary person for three consecutive tests. We tested with a moving beacon because that effected the broadcast density of the beacon(see http://where-in.space/2016/estimote-sticker-advertising-interval and http://where-in.space/2016/Understanding-RSSI-101). 
 

<b> physical image of set up place here </b>

### Control

Because the IPS is going to be placed within an activity based work environment(ABW) it was descided that the majority of the experiments would be conducted within that same environment to ensure the behaviour of the beacon and the basestations remains constant. 

### Results

For a moving beacon

![experiment 1 results]({{ site.baseurl }}/assets/exp1/Experiment 1 bar graph_moving.png) 

For a stationary beacon 

![experiment 1 results]({{ site.baseurl }}/assets/exp1/exp 1 stationary.png) 

### Observations

In general, experiment 1 gave us a very good indication that placing the Raspberry pi on the ground was the leaste effective in collecting signals. We know this as the amount of detections was nearly half that of the mid height and ceiling height recordings. We found that the stationary beacon was detected more by the ceiling height base station when the beacon was moving, then when it was stationary. The oposite is true if the beacon is stationary, the base station recieved more detections when the beacon was lower on the z axis at mid height.  

### Conclusion

The findings gave an indication(key word here) that if you are moving, your more likely to be picked up by a low flying or 'mid height' base station. On the other hand, if your stationary, then its better to put the base station up high. Therefore when we go to place Rpi's around the office, we might want to think carefully about the type of activity a person might be doing irespective of the xy coordinant position within floor plan. 

