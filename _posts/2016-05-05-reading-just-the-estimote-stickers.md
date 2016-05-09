---
layout: post
title: Reading just the Estimote Stickers
date: 2016-05-05 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Just finding what we want, cause nothing else matters kinda mabee
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

### The Problem

The scans seem to be picking up everything (include Low Energy and core Bluetooth). The problem with this is that we didn't apply the Bluetooth parameters from the [Blog](http://www.switchdoc.com/2014/08/ibeacon-raspberry-pi-scanner-python/). When running with BLE parameters attached, the raw output will look like this:

	----------
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080483f99175cf,6389,1,115,-76
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-76
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401f961f2bf,4832,257,99,-70
	db:2c:99:29:8e:b4,d0d3fa86ca7645ec9bd96af4b0acc487,61435,39432,-65,-71
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080483fa917515,63041,1793,99,-88
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-87
	db:77:f3:c5:bb:b4,d0d3fa86ca7645ec9bd96af4b0acc487,61435,39432,-65,-87
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401fb61b21b,62522,264,115,-91
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-90
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401fb61f219,60988,2,83,-81
	----------

### The Solution

Using the Estimote App and past research and experiments I did, we can take the identical partial UUID codes in which all Estimote Stickers have, the first 20 characters `d0d3fa86ca7645ec9bd9`. We can use these parameters when comparing the string results.

The results from the requested list put all the values into a long string `db:2c:99:29:8e:b4,d0d3fa86ca7645ec9bd96af4b0acc487,61435,39432,-65,-71` in which needs to be split up. Using the `.split(",")` command which splits by comma, it should be broken into a list like so:

	array = [db:2c:99:29:8e:b4, d0d3fa86ca7645ec9bd96af4b0acc487, 61435, 39432, -65, -71]
	
We can now draw certain values like so:

	array[0] = db:2c:99:29:8e:b4
	array[1] = d0d3fa86ca7645ec9bd96af4b0acc487
	array[2] = 61435
	array[3] = 39432
	array[4] = -65
	array[5] = -71

Now we can pick the UUID with `array[1]`, and break of the first 20 characters.

	> checkEstimote = getUUID[:20]
	d0d3fa86ca7645ec9bd9

Then for testing, anything that isn't Estimote Ibeacon is still identified, just labeled or hidden like so:

<div class="image-square-grid">
<div class="image-square-grid-box-half">

![Show all values]({{ site.baseurl }}/assets/reading-just-the-estimote-stickers/not-hidden.png)

</div>
<div class="image-square-grid-box-half">

![Hide non Estimote iBeacon Stickers]({{ site.baseurl }}/assets/reading-just-the-estimote-stickers/hidden.png)

</div>
</div>

Simple huh? Then we just need to run a `if` statement which will check to see if they match. We now only get the beacon IDS we need which are from Estimote ibeacon. It seems to be running at a fast rate, so at this point we may not need to play with the scan parameters.

\#dumpdatahere #nofilter #ripdoge
