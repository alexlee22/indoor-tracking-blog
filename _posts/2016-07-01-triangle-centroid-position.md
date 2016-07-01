---
layout: post
title: Triangulation, Area and Centroid 
date: 2016-07-01 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Centroid-triangulation method for locating a person indoors
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: tiara
---

Since The RSSi is not really giving a clear indication of an accurate proximity of a person, for example, in this image(credits to annisa for drawing the graph), Rssi at 1m is the same as it is at 4m, we need another way of determining where a perssn is within a space. 

![shitty rssi]({{ site.baseurl }}/assets/{{shitty-rssi.PNG}})

So I began playing with some ideas of triangulation.  A traditional mode is explained in the diagram below, however the lengths(described by the lines within the triangle) are almost impossible to accurately determine based on the rssi values) as explained above. 

![triangle centroid]({{ site.baseurl }}/assets/{{normal-triangulation.PNG}})

So my thoughts are to use a modified version of a triangulation formular, but using an area/centroid calculation to find the point. 

![triangle centroid]({{ site.baseurl }}/assets/{{centroid-triangle.PNG}})

Using the last known three baseStations and their known distances apart, we can map where the person is by the centroid and the exclusion of the furniture, The results would look a little like this. 

![triangle centroid]({{ site.baseurl }}/assets/{{trinagle-centroid.PNG}})

The potential issue with this, however is 1) determining which BaseStations are the closest, and 2) 

### Moving forward

The next step here is to create a grasshopper script which can do this: Find the last three points(closest points) to a position) and then create a triangle where its area is then asked to find the centroid and compare how acurate the results are(pretty much what the image above does). I'll mock something up over the weekend. 
