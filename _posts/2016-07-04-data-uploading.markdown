---
layout: post
title: Data Uploading
date: 2016-07-04 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: What and how much are we pushing to mongoDB
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Uploaded information

With the database structured well enough, we can start to consider how much information is being uploaded to the database. Lets look at the standard packet:

	{	
		"major": 58437,	
		"uuid": "d0d3fa86ca7645ec9bd96af497e31b92",	
		"tx": -65,	
		"rssi": -88,	
		"agentId": "RPi 2",
		"minor": 57905,	
		"time": { "$date": 1467101011808 },	
		"_id": { "$oid":	"57722f532efabfd7045d31f0" },	
		"__v" : 0 
	}

Some simple things are uploaded but necessary such as: major, minor, uuid, rssi, agentId, time. The time is done in millisecond from `January 1, 1970`. From this we can analyse how much data is being uploaded a second. 

MongoDB reported an average of 148 Bytes a file. From analysis the experiments, we can measure an estimate of about a detection every 10 seconds at best at, 6 detections a minute. Using these results its approximately 500 bytes a minute and 29600 bytes a hour. This is about 710KB a day for 1 RPi and 1 Estimote sticker. If we want to use 100 stickers at 1 RPi, its approx 71MB. At worst case scenario, with 100 users and 100 RPi in the same room at the same detection rate (never gonna happen) will be 7.1 Gigs. A more realistic situation is at 100 users in 20 RPis, is about 1.4 Gigs.

![ImageStuff]({{ site.baseurl }}/assets/preliminary-data-collection-and-data-filtering/stats.png)

### Current MongoDB

I had some issues with maintaining the current database. It was capped at only 100 documents and replaced the last collection. I tried to remove the cap but some JS stomped it from progressing, I'll have to take a look at it later. I move the DB to 30 gigs and it seems to be quite stable for a few days. Its still filling at a large amount.