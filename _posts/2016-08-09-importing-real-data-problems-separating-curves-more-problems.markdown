---
layout: post
title: importing real data, problems, separating curves, more problems
date: 2016-08-09 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: more viz
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

alright lets start off with importing real data.

So the previous visualisation used a fake data json file which looked a little like this:

~~~
[
  { "name": "annisa", "basestation": "Kilo",     "time": "2016-07-12T09:52:24.021353"  },
  { "name": "annisa", "basestation": "Zoo",      "time": "2016-07-12T09:52:29.852827"  },
  { "name": "annisa", "basestation": "Echo",     "time": "2016-07-12T09:52:34.021353"  },
  { "name": "annisa", "basestation": "Charlie",  "time": "2016-07-12T09:52:45.852827"  }
]
~~~

### Importing Real (but still fake) Data

This meant the viz would move from basestation to basestation based on the consecutive detection. 

![1]({{ site.baseurl }}/assets/moreviz01/1.jpg) 

but in reality, the data would change slightly as it contains information like uuid, major, minor etc to determine an individual without actually identifying their names. 

So the real data looks a little something like this:

~~~
[
  { "uuid" : "d0d3fa86ca7645ec9bd96af497e31b92", "major" : 58437, "minor" : 57905, "rssi" : -88, "agentId" : "RPI002", "time" : 1467101011808 },
  { "uuid" : "d0d3fa86ca7645ec9bd96af459405c0f", "major" : 42746, "minor" : 49413, "rssi" : -61, "agentId" : "RPI004", "time" : 1467101012758 },
  { "uuid" : "d0d3fa86ca7645ec9bd96af487e1f6b6", "major" : 149,   "minor" : 25502, "rssi" : -78, "agentId" : "RPI003", "time" : 1467101657316 },
  { "uuid" : "d0d3fa86ca7645ec9bd96af497e31b92", "major" : 58437, "minor" : 57905, "rssi" : -84, "agentId" : "RPI002", "time" : 1467101915059 }
]
~~~

This data can be found in the BlankMindBlog/helpers/gh_visualisation/json_detection data >>>>> dumpdata.json. At the moment, this data is collecting information from only 3 basestations with 3 estimote beacons. I've culled this dumpdata json file into 50ish detections as a test. As theres only a small amount of basestations and beacons, the point of this exercise was just to see how it would react. And it did what it was expected, go back and forth between BS to BS.

Also, from the GH file, you'll be able to tell that the list of points are all random. Reason being is that when i placed the points of the basestations onto the map for the isovist, I probably added and removed some to places where it seemed fit by eye so yaa...So i sorted the basestation points based on the location of the points - ascending to descending. This basestation sorting is still abit iffy as there should be a better way of sorting these points. Possibly left to right, then up and down , like the image below, suggestions? Sorting the basestations is important as it can save us managing the basestations with the server and in real life, faulties, placing the points on the viz etc. 

![2]({{ site.baseurl }}/assets/moreviz01/2.JPG)

Reason being that the lines go back and forth between basestation to basestation is because:

1. Each beacon was getting picked up by all three basestations

2. Because theres only 3 basestations theres not many places it can go to so the shortest path of beaconA could be the same path as beaconB etc.

3. Fluctuation of points at each detection

4. RSSI isnt really a factor yet, etc etc. 

![10]({{ site.baseurl }}/assets/moreviz01/10.JPG)

### Trying to separate the curves
<b>Alright so based on the exercise above and the previous viz, going back and forth between basestation to basestation is a really big problem.</b> You can see what path the person may be taking, but you cant see how many people are taking that path, or have a clear indication of what is going on because for example, you may have 100 people taking the same route, but the viz only shows this as a singular line. Theres no overlap, just one singular curve representing 100 people. The most that this script does at the moment is tell you whether people are going in both directions from a vector arrow, but still, these arrows may still show up once but it wont tell you how many people are taking that route. 

![3]({{ site.baseurl }}/assets/moreviz01/3.jpg

![5]({{ site.baseurl }}/assets/moreviz01/5.JPG)

So i tried a few things.

Removing duplicate lines:
So also tried doing this, I didn't necessarily want to remove them but i wanted to find where they are overlapping one another and rather than removing, id shift them perpendicular to the original curve location, so the overlapping curves wouldn't be overlapping anymore but rather sitting next to each other. But GH didn't recognise this is overlapping curves as yet again, its counted as still only one curve. 
![9]({{ site.baseurl }}/assets/moreviz01/9.JPG)

Opacity:
Changing opacity could possibly help with this as it can give you somewhat an indication of how many people are treading along that path. similar thing to what density maps do. Something like this [link](http://3.bp.blogspot.com/-c1gS1YIJDpw/VL5oNJJWePI/AAAAAAAADFY/nhCNtpVOgJ4/s1600/mt_map_033.PNG). It does show darker points of opacity with different people, as a new curve is made for a new person so theres an overlap of geometry. I haven't tried doing a full loop, so to see once people go back the same way they started, will it change opacity? - possibly not, but will try.
![7]({{ site.baseurl }}/assets/moreviz01/7.JPG)

Colour:
So i tried changing each curve to a different colour, but it still represents one curve, can see the different people better but cant see the density of the people moving as you cant control opacity.
![4]({{ site.baseurl }}/assets/moreviz01/4.JPG)

Swarm intelligence:
This was just a test, heh. I figured why not try seeing as the other stuff didnt work. What i tried doing was generate an agent with 'quelea' within a pipe. The pipe was the obstruction so the agent could move anywhere outside the boundary. Was thinking that it could create a random path along the pipe. Doesn't work as well as expected possibly because I didn;t play around with it too much. The plugin is pretty cool though.

![8]({{ site.baseurl }}/assets/moreviz01/8.JPG)

### Other ideas:

* Make a script that says, if (basestation001) also shows up in the same list AGAIN, possibly shift the point perpendicular to the original point location.

Thingss to think about ahead:
Whilst opacity or colour could help in the long run, it still comes across a few challenges, once you start plotting curves for 100+ people over a period of an entire day, week etc, curves will overlap and will get lost under all that. Have to find a way to separate them out.
