---
layout: post
title: How to read the data and what does it mean?
date: 2016-08-03 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Oh look colours
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

Last Thursday data was gathered from individuals within the Aurp Sydney’s Activity Based Work environment. Over the past day and abit, I started developing a way to visualise the data so that we can actually see what the data is actually telling us.

### The raw flesh

So why can’t we read it by itself? Well because it literally comes out as a huge block of text, literally:

        [{ "major" : 3, "uuid" : "d0d3fa86ca7645ec9bd96af400000003", "tx" : -58, "time" : { "$date" : 1469661913825 }, "rssi" : -60, "agentId" : "RPi 1", "minor" : 3, "_id" : { "$oid" : "5799432d1f48c1fa048043ab" }, "__v" : 0 },{ "major" : 9, "uuid" : "d0d3fa86ca7645ec9bd96af400000009", "tx" : -58, "time" : { "$date" : 1469661996480 }, "rssi" : -83, "agentId" : "RPi 2", "minor" : 9, "_id" : { "$oid" : "5799432d1f48c1fa048043ac" }, "__v" : 0 },{ "major" : 9, "uuid" : "d0d3fa86ca7645ec9bd96af400000009", "tx" : -58, "time" : { "$date" : 1469661996492 }, "rssi" : -84, "agentId" : "RPi 6", "minor" : 9, "_id" : { "$oid" : "5799432d1f48c1fa048043ad" }, "__v" : 0 },{ "major" : 16, "uuid" : "d0d3fa86ca7645ec9bd96af400000010", "tx" : -58, "time" : { "$date" : 1469661911529 }, "rssi" : -72, "agentId" : "RPi 4", "minor" : 16, "_id" : { "$oid" : "5799432d1f48c1fa048043ae" }, "__v" : 0 },{ "major" : 7, "uuid" : "d0d3fa86ca7645ec9bd96af400000007", "tx" : -58, "time" : { "$date" : 1469661997566 }, "rssi" : -67, "agentId" : "RPi 3", "minor" : 7, "_id" : { "$oid" : "5799432d1f48c1fa048043af" }, "__v" : 0 },{ "major" : 0, "uuid" : "d0d3fa86ca7645ec9bd96af000000000", "tx" : -58, "time" : { "$date" : 1469661911131 }, "rssi" : -74, "agentId" : "RPi 6", "minor" : 0, "_id" : { "$oid" : "5799432d1f48c1fa048043b0" }, "__v" : 0 },{ "major" : 5, "uuid" : "d0d3fa86ca7645ec9bd96af400000005", "tx" : -58, "time" : { "$date" : 1469661997746 }, "rssi" : -41, "agentId" : "RPi 1", "minor" : 5, "_id" : { "$oid" : "5799432d1f48c1fa048043b1" }, "__v" : 0 },{ "major" : 1, "uuid" : "d0d3fa86ca7645ec9bd96af400000001", "tx" : -58, "time" : { "$date" : 1469661913987 }, "rssi" : -48, "agentId" : "RPi 2", "minor" : 1, "_id" : { "$oid" : "5799432d1f48c1fa048043b2" }, "__v" : 0 },{ "major" : 6, "uuid" : "d0d3fa86ca7645ec9bd96af400000006", "tx" : -58, "time" : { "$date" : 1469661912477 }, "rssi" : -93, "agentId" : "RPi 3", "minor" : 6, "_id" : { "$oid" : "5799432e1f48c1fa048043b3" }, "__v" : 0 },{ "major" : 4, "uuid" : "d0d3fa86ca7645ec9bd96af400000004", "tx" : -58, "time" : { "$date" : 1469661914349 }, "rssi" : -48, "agentId" : "RPi 1", "minor" : 4, "_id" : { "$oid" : "5799432e1f48c1fa048043b4" }, "__v" : 0 },{ "major" : 1, "uuid" : "d0d3fa86ca7645ec9bd96af400000001", "tx" : -58, "time" : { "$date" : 1469661997990 }, "rssi" : -84, "agentId" : "RPi 6", "minor" : 1, "_id" : { "$oid" : "5799432e1f48c1fa048043b5" }, "__v" : 0 },{ "major" : 16, "uuid" : "d0d3fa86ca7645ec9bd96af400000010", "tx" : -58, "time" : { "$date" : 1469661998130 }, "rssi" : -66, "agentId" : "RPi 3", "minor" : 16, "_id" : { "$oid" : "5799432e1f48c1fa048043b6" }, "__v" : 0 }, ... ]

Its abit hard to read that without context? Visual diagrams are the easiest way to transfer a message across to an audience (and of course, a picture is one thousand words). Also what designer wants to read just that text block? What a nerd

The batch I used was a sample MetaData where I removed some useless fields not needed now to save space in the Javascript and converted the time into ISO via a Python script.

### Oh look pretty pictures

Enough talk! Here’s the stuff (the good stuff!) :

![wowcoolwoo]( https://i.gyazo.com/98b37cc2d6804c9f5588dce90c5a8a2c.gif)

*#wowcoolwow!!?!* That’s a lot of information and flashing lights. Well first what does it mean? Basically its showing all detentions over time of all beacons that were been identified with the beacons. It doesn’t really tell you much about how they are using the area at all, so let’s dig deeper.

### Not just a pretty face

Let’s talk a look at the beacon `uuid 3` AKA Anniza. She didn’t pick up her beacon till about 11am that day, which means it was sitting at me on the kids table. The beacon detections look like this from 10am onwards. 

![Just Anniza](https://i.gyazo.com/4608bdb5d8448b032423e7134b3ade3f.gif)

Notice how jumpy they are all over the place? This confirms two things: (1) the system is actually working for once and (2) There’s quite a lot of detections within large ranges. If we were relying on the last detection made, It would be all over the place. Like this:

![Constant wipe]()

This is not what we want! As it is so inaccurate for a stationary beacon. So with some witchcraft we can display the RSSI’s to see what’s up:

![With RSSI](https://i.gyazo.com/546018e0e22efe757072b4b1c113770d.gif)

As you ca see we want to display only accurate information. Without putting them into sections (ie every 5 minutes) we can do a quick monitoring to show only values with stronger signal strengths. Lets see detections above ‘-50’

![Greater than -50 RSSI](https://i.gyazo.com/99f0363dd95317e6d4bd89083f62eab6.gif)

There we go! Now we can find the kids table where she would be most likely around (ish).

### But wait there’s more!

Want to view it online? [Well now you can!]( https://tuksun.github.io/Test-Vis/) Thanks to the magic of JavaScript, Processing (P5.JS) and the web. Click a colour to individually <del>stalk</del> track individuals within a space. To view all again just click on the map.

### You require additional pylons

Its currently still looking really raw, the purpose was to see how the raw tracking data can be visualised without the use of Metadata. Some more features I would love to include are:
- Slider bar over time
- Group by time analysis
- Overall location based heatmap
- Memory performance improvements (Got an error for “Out of memory at ImageData creation” within the `p5.js` file but was fine on my own laptop, needs further looking, its probably just because loading the same image over and over again)
- Grouping and colour options for individuals and teams
- Bugz


