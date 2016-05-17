---
layout: post
title: Query with Mongoose!
date: 2016-05-06 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Assuming I don't die from sickness
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

### Querys

After the setup I want to work more on using the Queries with Mongoose to get the data we need. The first step was to use past "dump" data to filter out the information. This dump was collected on my computer using Ubuntu, so the `RSSI` is kinda crap.

We needed to find out how to find the proximity using the data. When called, the data dump will look like this:

-

The plan I set out of the plan was to `each 'major' tagged -> 'sort' by major -> descending 'RSSI' -> take 'first' -> 'return' value.`

So I looked up some of the Mongo commands within Mongoose. It was difficult finding some of them to use in Javascript.

- `distinct` find the unique IDs within the value
- `find({})` find whatever is within the criteria of the curvey brackets
- `sort` arranges by ascending or descending based on +/-
- `limit` only shows x number of results

When using `distinct` the results from the dump `[149, 51843, 42746, 133, 23131, 58437]`. I managed to make the own variable to find what I needed. By adding this order in I managed to get these results:

	var findUniqueMajors = Book.find().distinct('major', function(error, ids) {
	    
		//Loop for every distinct unique major
		for (var i = 0; i < ids.length; i++){

		  	Book.find({major: ids[i]}).sort({'rssi': -1}).limit(1).exec(function(err, kittens) {
		  		//Print result
		    	console.log(kittens);
		  	
		  	});
	  	};
	};

Which prints:

	[ { time: '2016-05-08T08:35:13.920Z',
		minor: 25502,
		agentId: '12346',
		rssi: -50,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af487e1f6b6',
		major: 149,
		_id: 572efa41747345af0512ea79 } ]
	[ { time: '2016-05-08T08:36:08.317Z',
		minor: 7901,
		agentId: '12346',
		rssi: -46,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af4a83fb1f2',
		major: 51843,
		_id: 572efa78747345af0512eac2 } ]
	[ { time: '2016-05-08T08:35:36.728Z',
		minor: 49413,
		agentId: '12346',
		rssi: -54,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af459405c0f',
		major: 42746,
		_id: 572efa58747345af0512eaa0 } ]
	[ { time: '2016-05-08T08:35:10.337Z',
		minor: 32246,
		agentId: '12346',
		rssi: -53,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af4898da6a8',
		major: 133,
		_id: 572efa3e747345af0512ea70 } ]
	[ { time: '2016-05-08T08:35:12.034Z',
		minor: 58814,
		agentId: '12346',
		rssi: -52,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af4a444443f',
		major: 23131,
		_id: 572efa40747345af0512ea73 } ]
	[ { time: '2016-05-08T08:35:10.490Z',
		minor: 57905,
		agentId: '12346',
		rssi: -49,
		tx: -65,
		uuid: 'd0d3fa86ca7645ec9bd96af497e31b92',
		major: 58437,
		_id: 572efa3e747345af0512ea72 } ]

### Where to go from here

I haven't been able to apply it to a live webpage. It currently only goes onto console. My next step will be printing attaching to ExpressJS.