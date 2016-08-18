---
layout: post
title: Work with time
date: 2016-08-18 11:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Time as a variable and effective communication
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: tiara
---

In Einstein's theory of relativity time is a literal fourth dimension of spacetime in the sense that spacetime has a natural distance measure that blends time and the three dimensions of space. 

<p><a href="https://commons.wikimedia.org/wiki/File:8-cell-simple.gif#/media/File:8-cell-simple.gif"><img src="https://upload.wikimedia.org/wikipedia/commons/5/55/8-cell-simple.gif" alt="8-cell-simple.gif"></a><br> Check out 3D projection of a tesseract undergoing a simple rotation in four dimensional space. In plain words, time is a human construct used to determine change. For many, time appears to 'stand still' when nothing happens. By <a href="https://en.wikipedia.org/wiki/User:JasonHise" class="extiw" title="wikipedia:User:JasonHise">JasonHise</a> at <a href="https://en.wikipedia.org/wiki/" class="extiw" title="wikipedia:">English Wikipedia</a></br> 


### Potential ways of conveying time 

1. Segements (and Ill come back to this with a later post) but essentially it is dividing up the program into 

### Potential problems with conveying time 


### Early work using time





In response to experiment 8, we realised we needed to take the average a period of time in order to get a better indication of the rssi 
With much pursuit 

~~~ bash 

{ "time" : "2016-07-12T09:52:30.021353" , "rssi" : -61 },
{ "time" : "2016-07-12T09:52:31.852827" , "rssi" : -69 },
{ "time" : "2016-07-12T09:52:32.893738" , "rssi" : -61 },
{ "time" : "2016-07-12T09:52:33.852827" , "rssi" : -73 },
{ "time" : "2016-07-12T09:52:34.893738" , "rssi" : -76 },
{ "time" : "2016-07-12T09:52:35.117117" , "rssi" : -69 },
{ "time" : "2016-07-12T09:52:36.344178" , "rssi" : -78 },
{ "time" : "2016-07-12T09:52:37.117117" , "rssi" : -65 },
{ "time" : "2016-07-12T09:52:38.344178" , "rssi" : -69 },
{ "time" : "2016-07-12T09:52:39.021353" , "rssi" : -70 },
{ "time" : "2016-07-12T09:52:40.852827" , "rssi" : -70 },
{ "time" : "2016-07-12T09:52:41.021353" , "rssi" : -87 },
{ "time" : "2016-07-12T09:52:42.852827" , "rssi" : -94 },
{ "time" : "2016-07-12T09:52:43.893738" , "rssi" : -97 },
{ "time" : "2016-07-12T09:52:44.852827" , "rssi" : -71 },
{ "time" : "2016-07-12T09:52:45.893738" , "rssi" : -72 },
{ "time" : "2016-07-12T09:52:46.852827" , "rssi" : -40 },
{ "time" : "2016-07-12T09:52:47.117117" , "rssi" : -54 },
{ "time" : "2016-07-12T09:52:48.344178" , "rssi" : -85 },
{ "time" : "2016-07-12T09:52:49.117117" , "rssi" : -42 },
{ "time" : "2016-07-12T09:52:50.344178" , "rssi" : -99 },
{ "time" : "2016-07-12T09:52:51.021353" , "rssi" : -54 },
{ "time" : "2016-07-12T09:52:52.852827" , "rssi" : -85 },

~~~


The first step was importing the json file into the grasshopper script so the python can read the file. Was simple enough:

![snapshot1]({{ site.baseurl }}/assets/time/Q:\Users\tdobbs\Documents\BlankMindBlog\assets\time\time_import.png)


### Cull Index 

The next step was not really necessary but helpful to sort all the low rssi detections from the most useful higher rssi values. 

![snapshot1]({{ site.baseurl }}/assets/time/Q:\Users\tdobbs\Documents\BlankMindBlog\assets\time\cull_low_rssi.png) 


### Average all detections within a 30 second time period 

![snapshot1]({{ site.baseurl }}/assets/time/Q:\Users\tdobbs\Documents\BlankMindBlog\assets\time\average_rssi.png) 


~~~ Bash

import Rhino
import scriptcontext
import datetime

## Find me the index that is >=
## to the time difference of the first index

def StringToDateTime(string):
    return datetime.datetime.strptime(string, '%Y-%m-%dT%H:%M:%S.%f')# the GH needs the formatting for the new datetime

times = [StringToDateTime(time) for time in timeList] # input is a list of strings (for whatever reason) so convert them to a datetime
rssi = rssiList
instance = 0
firstTime = times[0]
currentTimePeriodEnd = firstTime + datetime.timedelta(0,timeDifference)
avgList = []

chunk = []

# while the index of f is within the range of rssiList, do something
for index, time in enumerate(times):
    # emumerate(takes a number of things(within a range) and mentions them one by one. This was used to gather all detections within a time period which is then sent to be averaged. 
    if time <= currentTimePeriodEnd:
        chunk.append(int(rssi[index])) # the input is a list of strings for what ever reason so convert to int.
    else:
        avg = sum(chunk)/len(chunk)
        avgList.append(avg)
        chunk = []
        currentTimePeriodEnd = currentTimePeriodEnd + datetime.timedelta(0,timeDifference)
# take the first time period and then the last time period(plus 30 seconds) and then average all the detections within that time period. 


~~~

### Moving forwards 




