---
layout: post
title: Triangle and Centroid Video
date: 2016-07-05 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Triangles, centroid and a video, plus steps to development

author: tiara
---

As requested by Ben, I have copied in a screen capture video of the triangle moving across the floor plan. 

<iframe width="420" height="315" src="https://www.youtube.com/embed/zxLTKdGi32Y" frameborder="0" allowfullscreen></iframe>

I've realized for this to work, we will have to put Beacons in the corners of all the rooms, in order for the triangle to form even on the outskirts of the floor plan, a BaseStation needs to be in every corner of the layout. The following image shows what happens to the position of the centroid when the BaseStations stop before the corner of the floor plan. 

![shitty rssi]({{ site.baseurl }}/assets/Capture.PNG)

This second image shows how it can be made more accurate by moving a baseStation into the corners of the floorPlan. 

![shitty rssi]({{ site.baseurl }}/assets/diff.PNG)








