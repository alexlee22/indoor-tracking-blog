---
layout: post
title: Experiment 8 
date: 2016-07-26 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Static beacons to a raspberry pi

author: tiara
---

Experiment 8 was prepared for a number of reasons. The first was to plot how the signals of beacons change as they are detected from different distances. The second was to analyse the shape of the plot between different time intervals. For example, compare how the plot looks like between a 1 minute detection period, compared with a 5 minute detection period. 

### Hypothesis

What we had hopes would happen is that when we compared the different graphs together(30 sec,1 min, 2min) it would become clear at what point the rssi average values become reliable(ish) to actually determine wither someone is closest to one beacon or another. 

### The results at time intervals 30 seconds 

![experiment 8]({{ site.baseurl }}/assets/exp8/newplot.png) 

### The results at time intervals 1 minute

![experiment 8]({{ site.baseurl }}/assets/exp8/newplot (1).png) 

### The results at time intervals 2 minutes 

![experiment 8]({{ site.baseurl }}/assets/exp8/newplot (2).png) 

### The results at time intervals 5 minutes

![experiment 8]({{ site.baseurl }}/assets/exp8/newplot (3).png) 

### The results for the complete hour 

The results plotted for the 0 metres, 1 metre, 2 metre and 3 metre Raspberry Pi over the course of one hour. 

![experiment 8]({{ site.baseurl }}/assets/exp8/0 metres.png) 
![experiment 8]({{ site.baseurl }}/assets/exp8/1 meters.png) 
![experiment 8]({{ site.baseurl }}/assets/exp8/2 metres.png) 
![experiment 8]({{ site.baseurl }}/assets/exp8/3 metres.png) 

### Conclusion

In conclusion, it is hard to say what interval is appropriate to be measuring rssi averages from. However, from the data we get a pretty clear indication as to the spectrum of accuracy that is available too us. If we want to know for sure if someone is within a area, we can use a longer time period, given that the person remains still for the majority of the detection period. However if that same person moves frequently, having a longer period of time to measure rssi values might not be the most accurate method. 












