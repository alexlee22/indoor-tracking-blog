---
layout: post
title: GH visualisation
date: 2016-07-20 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Connecting up the json file with GH
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

So this is post is just fluff for the moment, was just writing some fluff whilst trying to gather my thoughts, will do this post properly first thing tomorrow morning.

Brief Process:

import json file in gh 

load and read json file

create script that will read the X, Y numbers from the json file and translate it into coordinates that gh can read 

based on the detections json file: create script that will read the json file 

split up the json file into person by person and identify which basestation detected the person in order (based by time)

e.g. Annisa detected by:

 Alpha T12:23:01:232435

 Bravo T12:24:01:232435

or just:

Alpha

Bravo

if person["name"] is picked up by specific basestation, reference point at XY coord of basestation
e.g. if annisa is picked up by bravo, reference point at bravo XY

Reference the basestation detections as the start and end point of the path by Annisa

Complete shortest walk path

Join start and end points at one time frame to another start and end points to make a continuous path.

Something I want to acheive of if there are other ways (the mapping thing): 

if basestation in data (BS json file) == basestation detection in detections (fakedata json file) , rather than splitting up python script, reference both json files into one

rs.add point (check if there is a 'reference' or something rather to reference points from the BS python script)

Coordinate the index so that: 

* make point A as [0] in detection list

* make B as [1] in detection list

* make C as [1] in detection list

* make D as [2] in detection list

in theory this will join the lines up

latest code and files live in github



