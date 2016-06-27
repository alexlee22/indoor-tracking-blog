---
layout: post
title: Some problems with the beacon detection uploads
date: 2016-06-27 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: WiFi mysteries from the weekend
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

The RPis seem to be uploading at inconstant rates. They appear to be disconnecting and reconnecting properly, however the time in which they are offline, are for long periods which can effect the usage of a real-time tracking device.

There are currently 2 set up RPis that are set up in Arup at the moment which were set up and running over the weekend (Was 5: Isn't picking up wifi, doesn't have power and took down to try and fix this problem). RPi 3 and RPi 4 are constantly appearing offline and online.

There are some things which could be the cause of the problem:

- Script delays
- RPi3 wifi is weak?
- Something else

It is possible to check the consistency in which is online through mongoDB search, then provide the statistic. I'll look into it tomorrow.

While this will not concern the problems with analysis the data later, it certainly diminishes the use of the real-time tracking tool. Its simple to store all the detections not uploaded for later, but assigning the time is more difficult due to the random times on the RPi (Doesn't seem to like syncing sometimes)

Would also have to add the storage later >.< I'll do more tomorrow.