---
layout: post
title: Deployment Plan
date: 2016-07-19 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Plan for getting where in space into ARUP and BVN offices

author: tiara
---

import json file in gh done

load and read json file done

create script that will read the X, Y numbers from the json file and translate it into coordinates that gh can read done

based on the detections json file: create script that will read the json file done

split up the json file into person by person and identify which basestation detected the person in order (based by time)

e.g. Annisa detected by:
 Alpha T12:23:01:232435
 Bravo T12:24:01:232435
done

Reference the basestation detections as the start and end point of the path by Annisa

Complete shortest walk path

Join start and end points at one time frame to another start and end points to make a continuous path.

for points in data
if basestation in data == basestation detection in detections
reference points at basestation in data 
make point A as [0] in list
make B as [1] in list
make C as [1] in list
make D as [2] in list

in theory this will join the lines up

if annisa is picked up by bravo, reference point at bravo XY




# Where in space: Deployment Plan

### Introduction

Where in space is a collective research endeavour aimed at collecting the patterns and movements of individuals within a workplace. Issues of office utilisation, circulation and interaction will be analysed and used as a pilot study to inform future workplace designs. The data is collected with Bluetooth Low Energy tracking tags as part of an indoor positioning system which are worn by a large sample of participants within a workplace. This document is to describe the deployment plan for the indoor positioning system research project within offices ARUP and BVN. 

### Phase 0

1.	Data Base completed: capable of hosting 8000+ detections a day. 

2.	Plan of  Base Station locations be finalised

3.	A simulation/ visualisation demonstration of dummy data ready for presentation. 

4.	Conduct presentation outlining what it will mean to implement an indoor positioning system within the office, the benefits and the costs. 

### Phase 1

1.	Ordering of Hockey Pucks x 100

2.	Ordering of raspberry pi’s x 50

3.	Placing Hockey pucks into cases with personalised item numbers

4.	Placing raspberry pis into cases 

5.	Getting card readers ready

6.	Initial test to make sure broadcasts are being received. 

### Phase 2

1.	Cabling and necessary wiring around workplaces

2.	Issuing out hockey pucks to people, taking their details and assigning a uuid number to each individuals to approximately 30 people

3.	Run a work shop or morning tea with a presentation about what we will be doing and why to get people on board. If people have questions answer all of them. 

### Phase 3: 

1.	Trialling the system for one day. 

2.	Make any changes and check approximate veracity by random video review and comparison with detections. 

3.	Write a report outlining the initial test what issues were uncovered and how we fixed the problem. 

### Phase 4: 

1.	Full office deployment

2.	1 Month of data collection. 

### Phase 5:

1.	Data analysis and conclusions 

2.	Project 
