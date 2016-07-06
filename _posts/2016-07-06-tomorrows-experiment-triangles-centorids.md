---
layout: post
title: Integrate GH, shortest path, triangles and centroids
date: 2016-07-06 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Develop the visualization side of things using RSSI boolean readings. 

author: tiara
---

As requested by Ben, I am going to integrate our plans to experiment with the RSSi tomorrow with the triangle/centroid visualization thingy. As a recap from Ben:

>The next step for this is probably to include the signal shape stuff that Annisa posted about yesterday. We now know quite a lot about how detections work, so we should think about what a detection pattern is likely to look like. if someone moves along a simulated path, what will the base stations pick up?
>
>it'll be like we are working forwards and backwards along the process. We make up a path, then try to make the system behave how we think it will, then we try and reconstruct a path from that data. It's a bit confusing, we can talk about it soon.


If You haven't already read Annisa's Blog form yesterday(Isovist experiment), basically it covers what we plan to do as an experiment for tomorrow to help determine the difference between an RSSI value of a 'close' Beacon, when compared with a 'Far Beacon'. 

The major assumption here is we can tell which RPi's are the three most close to the receiving beacon, however we actually don't know the truth yet. 

My Hypothesis is that the RSSi will not be able to tell the difference between the individuals that are close to one Rpi and those that are far, unless the Rpi's are far enough apart. 

### For example 

When you have Rpi that are too close together, you might get the same RSSi reading from two separate Rpi, so how do you determine which is closer? 

![shitty rssi]({{ site.baseurl }}/assets/CLOSE-RSSI.jpg) 

If you have your Rpi's further way, or at least further from the competing Rpi(baseStation), then you might have a greater chance of getting the correct indication of the closer BaseStation. 

![shitty rssi]({{ site.baseurl }}/assets/FAR-RSSI (1).jpg)

However, lessening the number of Rpi's in the floor Plan layout also decreases the level of accuracy of the positioning system, since there are less sensors to collect minor changes in the position of the Broadcast signal. 

So tomorrows experiment, is suppose to help with just that. It is suppose to help determine some kind of radius for a (close reading) and a (far reading) - kind of like a binary (yes I am here) or a (no I am not near here) and at what point it drops off. 

### MOving Forward

I have made some progress with deferring the centroid to snap to the outskirts of the furniture layout if it lands within the furniture layout, however I don't want to put it up just yet as it needs some more tweeking. I think I can get it working properly by tomorrow arvo so Ill have something substantial for tomorrows blog. 

