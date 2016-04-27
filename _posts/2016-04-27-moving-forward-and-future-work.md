---
layout: post
title: Moving forward and future work
date: 2016-04-27 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Scanning with AirBeacon and a checklist for the site
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

### AirBeacon Scan

Extending from what we learned last Thursday, I wanted to test an iBeacon scanner script to see if it can just pick up the iBeacon signals from the Estimote stickers. The tutorial and documentation is here in [Blog](http://www.switchdoc.com/2014/08/ibeacon-raspberry-pi-scanner-python/) and [GitHub](https://github.com/switchdoclabs/iBeacon-Scanner-). I ran the scan for the doge and here are some of the results:

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
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080483fb91750d,63552,2,115,-81
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-81
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401fb61f20a,64066,2,99,-80
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-79
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080483fb917514,63549,258,83,-82
	db:5c:f5:37:7c:b4,010401b47c,14325,23771,0,-81
	db:23:07:a7:1c:b4,d0d3fa86ca7645ec9bd96af4b0acc487,61435,39432,-65,-81
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401fb61b215,63294,2,115,-80
	db:78:50:d9:e1:b4,0101b0acc487effb9a080483fb913516,62781,2,115,-80
	db:5c:f5:37:7c:b4,0101b0acc487effb9a080401fb61b214,62780,2,83,-81
	----------

I compared the results with the Estimote app to check the results and filter the correct scans. 

	Scan Results:
		db:2c:99:29:8e:b4,d0d3fa86ca7645ec9bd96af4b0acc487,61435,39432,-65,-71

		MAC Address:		db:2c:99:29:8e:b4
	UUID:				d0d3fa86ca7645ec9bd96af4b0acc487
	Major:				61435
	Minor:				39432
	TX Power at 1m:		-65
	RSSI:				-71

The `MAC Address` may keep changing, but the `UUID`, `Major` and `Minor` is stable. We can split them into a list (by comma) and run a conditional statement to check the `UUID` first 20 digits or by setting our own `Major`.

### Groundwork for the site

The site needs some fixing to allow more options. Some of these include:

- More options for classes such as: box positioning, colors, etc
- Collapsible divs
- Look into some nice Javascript eg. Masonry 
- Multi-author accessability
- Fixing the logo
