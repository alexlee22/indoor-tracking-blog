---
layout: post
title: Preliminary Data collection and Data Filtering
date: 2016-07-05 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: What can we gain from this data?
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

I ran some preliminary tests and extracted some results. I designed a python script which takes the uploaded packet time and tells you how far apart each packet is. The experiment was designed and done at Arup using 3 Rpi v3 and some Estimote stickers near each Rpi. The purpose of this experiment and data collection was to test the wi-fi connection as there were some reports of packet gaps.

![Diagram]({{ site.baseurl }}/assets/preliminary-data-collection-and-data-filtering/diagram.png)

There are some issues with the experiment:

- It was still a preliminary experiment to test wifi, so its not that viable for analysing location/distance data.
- Some hardware had some issues with connection
- Experiment was not done within a controlled environment

![Graph]({{ site.baseurl }}/assets/preliminary-data-collection-and-data-filtering/graph.png)

The results showed large percentages of downtimes within the large gaps (measured by more than 1 minute, the currently query scan for real-time[ish]). Two RPi have around about 30% downtime and one of them had up to 70% downtime, more likely caused by hardware or isolated issues. The majority is stabled around the 1-10 second bracket with an adverage of about 6-7 seconds. We used this to calculate the data upload amount in yesteradys post.

I also checked the upload rate of the Beacons. As expected the further away it is from each, the less it is found.
