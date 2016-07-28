---
layout: post
title: Putting real data into viz
date: 2016-07-28 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Just to see how it would react so far...
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

So from continuation from this [post](http://where-in.space/2016/basestation-layout)....imported the dump file into the gh visualisation. It did what it was expected which is freak out and jump back and forth between basestation to basestation. The dump data is an old file and only has detections from three active basestations at the time with four estimote beacons, so there isn't much path dynamics going on at the moment. 

As the viz was currently working with a bunch of wild names and the dump data was using numeric naming convention, updated the basestation names in json files of both ARUP and BVN to do the same. Now the RPI basestation names are for example, 'RPI001'. This is what the basestation naming convention is like for the active basestations currently and will be like in the future so it would make sense to update it to do just that. 

And coming from the results of the viz, the four beacons just jumped between those three basestations - occasionally doing nothing when the start and end points were also stemming off the same basestation. Although, this had also brought up a few things to think about:
	
* Advancements of time - as the start and end points could be stemming off the same basestation, would it be easy enough to determine stops and go's? The dump data is also exporting the time into milliseconds - and as actual numbers which is probably better to work out sliding time windows. 

* Because the detections are jumping back and forth, how will I know which direction are they going? Arrows on top of arrow on top of arrows could look messy - consider density lines or another visualisation technique?

* Does RSSI still matter?

Next steps is make a viz using sim data instead of real real data. 

Will include images in the morning. 