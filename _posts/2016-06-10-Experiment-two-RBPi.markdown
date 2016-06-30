---
layout: post
title: "Experiment: Approaching Two RBPi"
date: 2016-06-09 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: "Experiment: Approaching Raspberry pi, two raspberry pi's "
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: tiara
---

The experiment aimed at defining the difference in RSSI as a person walks between two Rpi. 

### Variables

Person moving(Tiara and walking speed)
Height of the beacon on moving person
Height of the RPI (ceiling or mid height)

### Set up 

![experiment 5 set up]({{ site.baseurl }}/assets/{{exp5_setup.PNG}})

2 different heights: mid height (...m) and just below ceiling (2.55m)
-+ 10m, regular walking speed

Estimote sticker worn as a necklace from same person (tiara) 
Walking back and forth: towards Raspberry Pi and faced away from Raspberry Pi
Start scan and finish scan when finished walking
Make sure to have direct line of sight between transmitter and receiver

Roughly 25-27s walking 22m, so roughly 50-52s walking +- 22m.

### The Expected Results

![expected results]({{ site.baseurl }}/assets/{{expected_results.PNG}})

### The actual Results 

![results graphed]({{ site.baseurl }}/assets/{{results_graphed.PNG}})


### Problem with this outcome. 

We can;t identify any differentiation between the rssi value from 1m away from the base Station and 22 Meters. Therefore we need to develope or further experiment with other methods of identifying how far away someone is from the reciever, not based on their RSSI value. 

https://docs.google.com/spreadsheets/d/1bh-310DGWTSS14-cGxiMH5_MBGXbdRZiTsTeiGbu6II/edit?usp=sharing