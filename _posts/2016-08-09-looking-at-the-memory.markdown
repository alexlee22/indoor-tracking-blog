---
layout: post
title: Looking at the memory
date: 2016-08-09 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Why is it so big in here
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

I finally got to look at some heap snapshots and took a quick look to see if I can identify the problem. It’s a massive cluster of what is this even. It’s currently a screen shot from my computer running a local build.

![snapshot1]({{ site.baseurl }}/assets/heap2.png)

There’s a couple of things we can see from this:

- The objects displayed in the browser are printed in the console below, meaning we can try and find them.
- Objects and Arrays take up the bulk of the memory, both contain elements of JS which may not be needed to clean
- The values jump high from the start (1) to after the results are processed (2) and settle with (3) but still have a large amount of size.

 The local build is disappointing as it can't even handle a small number of detections before crashing. Can only handle less than 100,000 documents.
 
 ![snapshot1]({{ site.baseurl }}/assets/mongo.png)
 
 I’m gonna try use an additional program to read the snapshots in context with the server, to see if I can find the actual leak. I believe it is a problem with the garbage-collector in JavaScript. I have read problems with it being lazy in Node, so we might need to call a manual dump of the data after results are collected. The values look like they are not being wiped as seen below.
 
 ![snapshot1]({{ site.baseurl }}/assets/garbigecollectornotworking.png)
