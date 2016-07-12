---
layout: post
title: Experiment 8 Determining closest Beacon
date: 2016-07-12 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Finding out what the minimum time is to have a stable average of the rssi value as you approach a Rpi
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: tiara
---

Annisa and I have been brainstorming today how we can determine which Base Station is the closest one. As part of the process of realizing the positioning method explained in Assisa's last post <b> (see http://where-in.space/2016/closest-beacon-visualization) </b> we will conduct experiment 8 to test what is the minimum time period to collect rssi values to gather a stable average for the 'Closest Base station.'

### Experiment 8 set up

![experiment 8]({{ site.baseurl }}/assets/exp8_setup.jpg) 

Basically, the aim is to get the lowest time period possible for a relatively stable average for the rssi. You see in the first blue box, within 30 seconds, the average rssi value jumps between -60, and -57 between 1,2,3,4 meters. However hypothetically if the same experiment was conducted again but for a longer period of time, more rssi values would be received and therefore a more stable account of the average for that base station. 

![experiment 8]({{ site.baseurl }}/assets/exp8_room1.jpg) 

![experiment 8]({{ site.baseurl }}/assets/exp8_room2.jpg) 

### Analysis: Theoretcial saturation

What we are going to do is take the first 5 seconds, 10 sec, 15 seconds, 30 seconds, 1 minute, 5min, 10 minutes, etc.. We will start graphing the first time period (5 seconds) and continute incremementing the time amount (to 10 seconds, 15 etc..), however when we start to plot a consistency of rssi that when we know we are getting close to the right point. It all depends on how much time we want to spend graphing this. If we reach theoretcial saturation then it might not be necessary to keep plotting the average rssi for a great amount if time periods. 

The trick is to get the lowest amount of time to higher the level of accuracy of tracking. For example, the longer you wait to say this person is in a specific place, but then wait another hour before you say they are in another place, it isn't really accurate as a person can move around quite a lot during that time. 

Part of it is deciding at what point you are happy with the time difference and allow shortest path algorithms and approximate speed inputs to fill in the gaps. 

If anything is unclear please let me know. Hopefully we will have some results to post for tomorrow's blog. 





