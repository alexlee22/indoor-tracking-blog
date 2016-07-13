---
layout: post
title: Adjusting The Script To Make It Not Bad
date: 2016-07-13 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: When the server goes so fat its time for a change in diet
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

The server is still having trouble with the size. I tested the past query with a fresh small database and it still performs fine. I dumped the data aside so we can test the next query to see if there are any issues

### The new query

In progress. It is currently being developed to decrease the workload. The problem with the old query, it was searching through the 800k documents. This would be troublesome when an increase of beacons or detections are occurred. So I am in the process of designing a new query to reduce the load. It should flow something like this.

  > Find all unique UUIDs
  > Find all detections within X time (at the moment it is 5 minutes or so)
  > For each unique UUID => find all matching detections within the time
  > Limit to one detection (ie. higher the RSSI the closer to beacon)
  > Assign appropriate detections to the beacon

There are some odd rules with how Mongoose can group objects in comparison to plain MongoDB querying which needs to be sorted. Hopefully this is the only step left for deployment. 

### The next case scenario

There are some clear problems with the size of the database. Therefore if there are no appropriate fixes, we should plan to extract the data when it becomes too big. How do we detect if it is full? No idea, mabee a timer for an appropriate detection limit, on crash detection do XYZ? Needs to be outlined and explored further.

A script to extract the database is a good idea for the logetivity and health of the query and data management. The problem is with capped collections and creating an automated system. It is possible to create a JavaScript/Shell script which could be run everyday using `crontab` to extract the data. The script might look like this if run in the terminal:

  > stop server
  > mongoexport -db db -collection c -0 /path/to/exile.dump
  > mongo //Runs the following in the Mongo terminal
  > use courier-dev
  > db.beacondetections.drop()
  > db.repairDatabase()
  > db.creatCollection("beacondetections", {capped: true, size: whateveroclock})
  > exit //leaves the mongo terminal
  > start server

The reason for entering the mongo terminal, is to remove the database (it cannot be wiped clean due to the caped nature #annoying). There is still an issue of the dropped collection to be solved.
