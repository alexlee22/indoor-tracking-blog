---
layout: post
title: Isovist Experiment
date: 2016-07-04 00:10:00
type: post
published: true
status: publish
categories: []
tags: []
description: Experiment to determine the isovist shape
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

This is a write up of the next experiment - very rough, open for discussion! Also, the drawings are not meant to be an exact representation!!!!

This experiment aims to help inform the isovist model, which hopes to give a rough indication of where the signals from the receiver can reach.
Previously, the existing isovist model used a radius to determine the range of the receiver. However, given that our previous experiment suggested that signals from the estimote sticker cannot be picked up by the receiver through human bodies, we must perform an experiment to put this problem into play and determine how much this actually affects the results and put it into the isovist. The results of the experiment will hope to inform the placement of the Raspberry Pi’s throughout the environment. 

![1]({{ site.baseurl }}/assets/isovist/1.png)

Previously, our isovist model looked like this, however, this isn’t very likely and will more likely look like 

![2]({{ site.baseurl }}/assets/isovist/2.png)

Won’t look like this exactly, but just indicating that there will be a stronger signal received when the orientation from the receiver is facing towards the incoming estimote and will more likely reduce in signal strength and facing away. 

![3]({{ site.baseurl }}/assets/isovist/3.png)

Or possibly like the grey area instead of the round red circle

Method:

Map out a radius of circle, 1 m away of where the Raspberry Pi would be placed. 

Option 1:
Around the circumference of the circle, divide the circle into 10 parts and just like the previous experiment at BVN, hang estimote stickers from the ceiling at chest height at equal distances - say 10cm. Run testble.py script and run for 1 hour.

![4]({{ site.baseurl }}/assets/isovist/4.png)

Arrow in the centre of blue dot indicates that the RPI bluetooth dongle will be faced in that direction.

Option 2:
Walk around the circumference of the circle at slow walking speed with the estimote sticker always facing the estimote sticker - so the user is not to stand facing away from the receiver - e.g. side stepping. However, this way is less controlled as it can be difficult to determine at what point the signal was detected. This can be better with video however, still needs to be heavily thought of as it can be difficult to determine the location of a person around the radius with video. 

![5]({{ site.baseurl }}/assets/isovist/5.png)