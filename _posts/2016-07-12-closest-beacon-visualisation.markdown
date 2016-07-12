---
layout: post
title: Closest Beacon vs. Area Visualisation
date: 2016-07-12 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Another way of trying to visualise the data
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

### H3CLOSEST BEACON

So one thing that we wanted to achieve but have not fully tackled it in terms of the visualisation is pulling the closest base station to a beacon - I'm trying to minimise the error margin and uncertainty. Whilst uncertainty may be good as it can open up more questions and things to build up upon, I wanted to create this visualisation as a way of finding proximity rather than exact location. 

Based on the experiment found [here](http://where-in.space/2016/rssi-experiment), drawing the RSSI as a way of determining exactly how far a person is away from a particular base station can be quite challenging as the RSSI values fluctuate too much.

So rather than deciding to create a visualisation that relies upon the distance of a beacon to a base station with the RSSI, 

![1]({{ site.baseurl }}/assets/closest beacon vis/1.png) 

...create a visualisation that finds the closest base station to a beacon. Based on that [experiment]( ), what it has sort of showed was that it can pick up the closest beacon to a particular base station to some degree. Whilst the results may fluctuate, the further away you are from a base station, the lower the signal gets. 

What the basic methodology would look like:
NOTE: Also this methodology is looking at extracting one particular beacon...for now, then I'll scale up once it works. 

So...

- Extract the beacon detections from the database: find all the base stations that has detected the particular beacon.

image

- Timeframe of detection: As mentioned, the RSSI value fluctuates per detection. So one second, the beacon can be closest to base station 1, but the following second, the beacon could be closest to beacon 2 when the person wearing the tracker has not moved. This would mean the person could as well be jumping and bouncing between one basestation to another in one second. 

image

From the last [experiment]( ) the base station picks up a ibks beacon has around 2 detections say for 5 seconds. As the RSSI fluctuates per detection, suggesting to average the RSSI for those 5 seconds. So rather than having the RSSI fluctuate between -50 to -80 within a few seconds, we can average and get a reading of say -60. But how do I know that averaging the values for 5 seconds is sufficient? or 10 seconds? etc Tiara says to do an experiment. 

- So after that, extract the highest average RSSI value between all basestations for those 5 seconds - then determine which is the closest base station to a beacon. Then find the second set of 5 second intervals and implement the shortest path algorithm to determine its path. 

image



