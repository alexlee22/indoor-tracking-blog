---
layout: post
title: Updating some changes to the Javascript
date: 2016-06-09 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Attempting to fix the stuff
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Getting the Time and Last Agent Known to Show

Heres what I did to fix this stuff and make it online kinda. There was just some changes to the `detectionDatabase`, moved some files stuff around and brake it till I made it. There was some stupid stuff with not paying attention (ie. agentId didnt have a capital D).

	return BeaconDetection
		.find()
		.sort({time: -1})
		.limit(1)
		//FIND THE VALUES TO DOUBLE CHECK
		.select('uuid agentId time rssi')
		.exec()
		.then(d => {
			//USED THIS TO FIND OUT IT COMES OUT AS A LIST
			console.log(d);
			//TAKE OUT OF LIST TO APPLY STUFF
			var outoflist = d[0];
			//APPLY THESE VALUES TO THE BEACON LIST
			beacon.latest.agent = outoflist.agentId;
			beacon.latest.time = outoflist.time;
			return beacon
		})

Changed the model to include the `Date` and `String` for the time and agentId.

    latest: {
        time: Date,
        agent: String
    },

Lastly I changed the startup files in the `config` folder to see if we can track each other, didn't get time to test the stuff due to the testing of rssi/detections.

### Whats left to do

The current script uses a `.map` function which does a similar effect to the for loop, but it looks like the script isnt designed properly. When assigning the `beacon.last.agent` and `beacon.lastest.time` it is not applied to the proper format. I want to try and apply a `for` loop or try reassigning diffrent values.

	for (var x = 0; x < beacons.length; x++){
	console.log(beacons[x].uuid);
	}

Then apply this type of stuff

	.find({'uuid': beacons[i].uuid})

Need to play around with some more stuff and read some more JS stuff.