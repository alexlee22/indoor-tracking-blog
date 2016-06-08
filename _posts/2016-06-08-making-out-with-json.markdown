---
layout: post
title: Making out with JSON
date: 2016-06-08 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: It's not a boy, I promise...
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### JavaScript Object Notation (JSON)

A data format that is more **human readable**. Usually data format can't be changed easily but with JSON, we can import and export data easily using `angular.js` or MongoDB libraries (such as `mongoose` or `monk`).

Think of JSON as a document file that has several values, there are `keys` and `values`. The items on the left are keys and the items on the right are values. Make sure you don't repeat any values or it will mess itself up. If you are still confused, think of it as describing a car, so it should look like this:

	{
		manufacturer: "Toyota",
		color: "blue",
		year: 2015,
		wheels: 4,
		retailstore: ("Surry Hills", "New South Wales", "Australia"),
		features: {
			airconditioning: true,
			reversecamera: false
		}
	}

Hopefully that makes it more understandable?!?



### JSON to Database Tables

JSON can be converted into a table if multiple documents are combined together, same values are stacked together.

![Movin JSON to Tables]({{ site.baseurl}}/assets/Making-out-with-JSON/json-to-table.jpg)

Documents are collapsed into one file, any `keys` that are the same are stacked together. MongoDB won't freakout if theres a missing field, unlike SQL. It will simply write the field as null and be done with it!



### Data Storage Types

JSON can have multiple types of data storage, these include:

| **Data Storage** | **Description** | **Example** |
| Array | List of values (strings, numbers, boolean, etc.) | [ "fish", "cake", "pineapple" ] |
| Boolean | True or false, only one of the two values | true |
| Number | Integer | 101 |
| Object | An associative array of key/value pairs | { "key":"value", "another_key" : "another_value" } |
| String | Words or strings | "fishcakebowl" |

