---
layout: post
title: Catching Up
date: 2016-06-07 3:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Back from the dead?
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

Long time no see! We seem to be slowing down with the assessments coming across, had an assessment presentation today and got thesis due next week. So heres some quick post up.

### University Stuff

The university semester is coming to an end an the assessments are stacking up. These include:

- Presentation draft
- Presentation assessment
- Thesis

### Live Push

Tom and Jorka adjusted the file `courierbeacons/Courier/server/dao/beacon.dao.js` when attempting to push live, the results that were using showed the details of the beacons. It was referencing the wrong collection (accessed the beacon files instead of detections). I did a small adjustment and now it shows up the JSON:

~~~ json
	{
		time: '2016-05-08T08:34:40.249Z',
		minor: 25502,
		agentId: '12346',
		rssi: -86,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af487e1f6b6',
		major: 149,
		_id: 572efa20747345af0512ea51 
	}
~~~

I just need to run a `find()` to sort the `agentID`. I might need to make a Javascript function to sort the time. Got to push it further a bit to get it running, also need to remove sample uploads

---

More updates coming soon!
