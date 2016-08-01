---
layout: post
title: Working with REAL Data
date: 2016-08-01 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: But just a one day sample
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Enter the test phase

I managed to get some tracking data from last Friday and started to take a look at it. The data extracted from it is approximately a 24 run on Thursday to Friday. Throughout the working day, I monitored individuals to see if the tracking system was correctly picking up the location. The search time parameter was lowered to 30 seconds to compensate for the hockey puck beacons broadcast rate, when compared to Estimote stickers. Thanks to all from Arup Digital and Friends which helped with the tracking test run :D #youdarealmvp

Random observation, beacons attached to necklaces are great for people without pockets! ( Then again why would someone have no pockets >:[ )

### The Data

The tracking data collection is exported as a JSON file. The total size of the documents is `262.099 MB` which contains `1219099` detections. That’s quite a bit for only 10 beacons and 5 Raspberry Pis. So can we reduce this size?

The MongoDB collection is exported as a JSON array of detections. Each index looks like this:

	{
		"major" : 6,
		"uuid" : "d0d3fa86ca7645ec9bd96af400000006",
		"tx" : -58,
		"time" : { "$date" : 1468371446397 },
		"rssi" : -53,
		"agentId" : "RPi 1",
		"minor" : 6,
		"_id" : {
			"$oid" : "578591f4412cbee208c8d816" },
		"__v" : 0 
	}

There is a couple of useless fields in the data which we currently do not need:

- TX Power: This would only really matter if we are using different beacons. All the default beacons are currently using the same power.
- _id: MongoDB requires all documents to have some sort of unique field in which to name each document, so duplicated can be stored in the collection. This is the Mongo default and is not necessary.
- __v: Part of the old active detection protocol. Currently does not work.

By removing these fields by a Python script `transformToNew.py`, the JSON file reduces the size to `160.900 MB` with the same amount of detections (duh). It approximately reduced the size to 39%.

The second problem was to reduce the amount of detections to the ones I wanted. Therefore I put in a simple condition in the python script:

	if x["time"]["$date"] > 1469664000000 and x["time"]["$date"] < 1469692800000:

The numbers are simply drawn from an [ISO to millisecond calculator](http://www.ruddwire.com/handy-code/date-to-millisecond-calculators/#.V59KqjXFjps). The ISO value is what we need for the visualisations in both GH and JS. With the `time` constraints, we can reduce the original file size to `69.832 MB` for `355955` detections. With **BOTH** methods we can reduce the file size to `46.888 MB` for `355955` detections, approximately 17% of its original size. Without converted time (into ISO) the total result is `46.888 MB` with `355955` detections, only a little bit less.

### Why did I do this?

One word, JavaScript. Processing for JS (P5.JS) seems to have alot of issues with loading JSON files due to JavaScripts nature to achieve the best fastest speed (I both love and hate this LOOKING AT YOU PROMISES). It also makes it alot easier to find the data we need, aka Metadata. The results show that it might be better to filter the data then let program sort through the original, at least for an offline visualisation without MongoDB. Stay tuned for tomorrow of how we can visualise some of these detections!
