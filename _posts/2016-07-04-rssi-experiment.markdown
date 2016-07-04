---
layout: post
title: RSSI experiment
date: 2016-07-04 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: RPI2 vs RPI3, Testing stability of RSSI
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Last Thurs, an experiment was conducted at BVN. The write out of the experiment lives [here](https://docs.google.com/document/d/1YinAsD2N56cFMge53XMncbp50QZECwIqkA5I-ptZ2r0/edit). Just to make it easier, this is what the experiment aims to do:

Aims to determine the stability of the RSSI, what point do these values start to fluctate and become unreliable? The amount of detections and determine whether the RPI2 was superior to the RPI3 - and vice versa.

This was conducted near BVN's hug chair. 

![environment]({{ site.baseurl }}/assets/experiment/environment.png)

* There were 4 RPI's in play - 2 RPI2, and 2 RPI3 - however, one of the RPI2's died prior so technically were only 3 RPI's in play. 

* One RPI2 and one RPI3 were placed at mid height, and the other RPI3 was placed at high height.

* There were 8 estimote stickers in play - they were hung from the ceiling, making sure that were hung at the same height every time at around chest height. They were distanced 1m apart from one another starting from 0m to 7m.

![hanging]({{ site.baseurl }}/assets/experiment/hanging.png)

* Experiment ran for an hour. 

What was concluded about the RSSI is that the average RSSI at each metre fluctuates considerably even when in line of sight to the reciever stationary. It also shows from the graph that at 0m, the average RSSI is the same when at 4m (highlighted by the circles). Although it can also be shown that finding the closest estimote sticker to the reciever can be determined when close enough. Although it will fluctuate and drop considerably throughout. 

![rssi1]({{ site.baseurl }}/assets/experiment/rssi1.png)

The RPI3 at mid height had moments of downtime - 6 to be exact that ranged from 1-7mins about 20%. Not too sure why, think it was the internet connection however the others ran smoothly. As a general note, the Raspberry Pi3 performs better, collects stronger RSSI results and more detections when placed at high height in comparison to the RPI's placed at mid height. However, when comparing between one another at mid height, the RPI2 collects stronger results. It can be assumed that the RPI2 will perform better than the RPI3 at high height. 

![detections1]({{ site.baseurl }}/assets/experiment/detections1.png)
![detections2]({{ site.baseurl }}/assets/experiment/detections2.png)

From these results, we can start to gather an indication of how we can do the later parts of the project - isovist model, scaling up, possible triangulation etc. 