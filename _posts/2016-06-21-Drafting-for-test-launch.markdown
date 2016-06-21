---
layout: post
title: Drafting for Test Launch
date: 2016-06-21 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: PS. I still don't get how to organise promises T_T
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

With the pressure of the thesis of us we can finally concentrate on purely the setup so we can start playing with data. Today at Arup, I spent the time to get the ABW server up it should be up... And its almost up!

![wow.cool.wow]({{ site.baseurl }}/assets/drafting-for-test-launch/almost-there.png)

As a summary form the existing work in which Tom had setup on offline mode, there were a couple of tweaks needed:

- **Need to assign to the correct database.** Currently assigned to the actual `beacon detections` and not the `beacons` database.
- Played with formating the query outputs (By testing every output value)
- Changed the format of the schema. Didn't have the detections.
- Played with the Estimote Sticker values.
- Small tweaks to referencing files.

In the end reset to Tom's original query-function and made the tweaks I learned from the past when messing around. Below is some more details on whats the haps-haps.

### Fail-safe though process

The query logic is the same:

1. Find all beacon IDS
2. Scan for closeness (lowest RSSI)
3. Report that value

The execution however... took some time to get it flying. When that was executed, I had to make sure that it would run without errors. quite simply the idea flow would go like this:

	return query( { For each ID => find the one closest detection by this ID } )
		.then( { give the details of the RPi + time to the database document } )

	;)

This would run for each ID, and report the RPi and time to each dedicated document, however lets say we had an asshole trouble maker in which would mess up the flow by not having a detection, in which the second ID could not be found within the time period:

	return query( { For each ID => find the one closest detection by this ID} )
		.then( { Can't find detection??? I'm telling you its blank. Trying to assign man!!! 
		STOP YELLING AT ME >:( I'LL KILL YOU #$%&^@|*~$@! } )

	X.X

Doesn't look pretty doesn't it? The output would kinda turn up like this:

	Run Query 01
	SUCESS
	Run Query 02
	ERROR - STOP

Because it doesn't finnish the final return, it won't run and it stops half way. Ain't matter if IDs 4, 10 or 1000 have detections, it won't find them.

So how do we staph this? Assign fail-saves can assist in stopping the process. While not the optimal option (work in progress don't hassel me!) it will be a make do solution to make sure it works. Quite simply we can use a checking phase to see if its there, and then respond appropriately:

	return query( { For each ID => find the one closest detection by this ID } ). then(){
		if( check if it has found a detection ) {
			[ give the details of the RPi + time to the database document ]
		}

		else( worth a shot, lets fix it ) {
			[ report detection cannot be found ]
		}

	:|

Not the best but it works! We can make it better by find the latest detection found even if its like weeks old. But thats for another day.

### Whats Left?

Theres still some stuff to do this Thursday, such as:

- Setting the correct time zone with moment.js
- Assigning all the beacons to the database so we can test the stress load and detection ranges
- Find the best time and assign it to the search parameters

I'm quite sure we can do some test deployment later this week or early next week!