---
layout: post
title: W.e progress First attempt at GH for locating via centroid
date: 2016-07-04 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: First attempt at a GH for locating a person via the centroid of a triangle

author: tiara
---

So over the weekend I made a mock grasshopper script that uses the closest three BaseStations(points on a surface area) to try and pinpoint where the actual position of a person is. 

![shitty rssi]({{ site.baseurl }}/assets/centroid-triangle-grasshopper.PNG)

The coding to do this is really quite simple. 

![shitty rssi]({{ site.baseurl }}/assets/centroid-triangle-grasshopper1.PNG)

### The issue

The more oblique/close the BaseStations were, the more accurately the centroid of the triangle was in comparison to ther actual position of the person. However, if the triangle is made more equilateral, then the centroid of the triangle is closer to the centroid of the triangle, no necessarily where the actual person is really standing. 

![shitty rssi]({{ site.baseurl }}/assets/centroid-triangle-grasshopper-moved-corner.PNG)

### Moving Forward

I think I am going to use the grasshopper script of the shortest path algorithm to try to include furniture as points where not to place the points, if that makes sense. The idea is still being refined. I am open to suggestions. 





