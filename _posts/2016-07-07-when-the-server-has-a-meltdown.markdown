---
layout: post
title: When the Server has a Meltdown
date: 2016-07-07 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Must be hearbroken 
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Why me :[

On Tuesday I ran the server with some new hock-pucks (aka iBKS105 by Accent Systems) to collect some data, however because nothing ever goes to plan in my lyfe, the database exploded when collecting data and stopped after 10 hours. At first I was confused with why this happened but then I remember the same error happened on Monday as well. Time wasted aside, I though it was a server connection problem, so I reran the server start command and it was really slow, turns out it needed a reboot. After the reboot the same problem occurred after a short while:

	<--- Last few GCs --->

	2165625 ms: Mark=-sweep 20.7 (61.3) -> 20.7 (61.3) MB, 8.3 / 0 ms (+ 16.1 ms in 4 steps since start of marking, biggest step 8.1 ms) [GC interrupt] [GC in old space requested].
	2165616 ms: Mark=-sweep 20.7 (61.3) -> 20.7 (61.3) MB, 6.3 / 0 ms (+ 20.2 ms in 4 steps since start of marking, biggest step 12.1 ms) [GC interrupt] [GC in old space requested].

	<--- JS stacktrace --->

	FATAL ERROR: Committing semi space failed. Allocation failed - process out of memory.

This error actually happened as well on Monday when I connected and attempted to upload weekend data, it only lasted to about 2 days on the Estimote stickers. 

I tried to pull some assumptions from this error which may be the cause:

- The extended limit on MongoDB may be causing the overload (previously 100 docs)
- The rate of upload is too high when comparing it against Estimote
- The AWS server crashed because I input the server command wrong w/o the screen function
- I didn't turn off the on the server properly
- I messed with the Javascript?

I swang by Jorke and Ben and they said it could be a geometry leak issue or just not enough memory in general to handle the large flow of data. It was unlikely this happened with just Estimote stickers or the old database which limited the size to 100 documents.

### Break it again!

To hopefully fix this, I expanded the Amazon Web Server's instance size from a `t2.micro` to a `t2.large` which expands it from `0.5 gig memory` to `8 gig memory` #ripmoneyz. `t2` is also a burst performance instance, it may be worth transferring to a more balanced server like`m3`. There are also a lot more specific optimised types under: Compute, Memory, GPU, Dense-storage or High storage.

I am currently attempting to break the server by using 3 RpiV3 with the iBKS105 and Estimote sticker beacons. Hopefully tomorrow (if it hasn't crashed) will tell us if it is till possible to run on this type of server. I expect that it will be enough but may require daily reboots.

The server load for 10 beacons is stressfull, will 100 be too much? If the experiment works, we should be able to derive a step-forward or something.

![iBKS Beacon in Style!]({{ site.baseurl }}/assets/when-the-server-has-a-meltdown/stylish.jpg)