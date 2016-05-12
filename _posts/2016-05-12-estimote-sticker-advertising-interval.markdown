---
layout: post
title: Estimote Sticker Advertising Interval
date: 2016-05-12 12:15:00
type: post
published: true
status: publish
categories: []
tags: []
description: Breaking Estimotes
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Discussion on the broadcast and recieving intervals of information. Estimote stickers were set to advertise 5000ms ~ (when moving), 10000ms ~ (still). Raspberry Pi were set to scan 5000ms ~ as well. The likelyhood of the advertise and scan to match and synchonise need to be experimented with. 

![estimote_iOS]({{ site.baseurl }}/assets/estimote_advertise.jpg)

Me and Alex attempted to change the advertising interval of an estimote sticker. This can easily be done on the Estimote app on iOS, Android not so much. All we had to do was connect and move the slider. The slider is not snapped nor moving at certain increments so if we happen to decide to change this again, need to make sure the advertising intervals for each estimote sticker are the same as the other for consistency. 

Previously, we managed to break the shopping bag estimote by modifying the settings on the Estimote app. Breaking meaning the shopping bag does not scan or show up anymore on the app or the Raspberry Pi. Had a feeling that the same thing might happen to the modified interval estimote sticker. And to not my surprise...sort of broke. 

The estimote sticker was advertising its packets every 200ms~, 100%. However, a few minutes - will need to retest if this is reoccuring everytime - it stopped displaying the estimote on the raspberry pi terminal, then scanned every now and then. 

Will post pictures soon. 

Tried to change and revert the settings back on iOS. Could not get this to work on the app as it would drop when trying to connect the app settings and estimote stickers. When trying to scan the estimote sticker on the app, it detected every so often even though the advertising interval was at 100%. 

Getting an image might require me to repeat the experiment, which may mean I might need to break a new estimote sticker. 

