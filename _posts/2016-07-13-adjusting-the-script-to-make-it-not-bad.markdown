---
layout: post
title: Adjusting The Script To Make It Not Bad
date: 2016-07-13 0:00:00
type: post
published: false
status: publish
categories: []
tags: []
description: When the server goes so fat its time for a change in diet
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

- Server has a problem updating\\



  mongoexport -db db -collection c -0 /path/to/exile.dump
  mongo
  use courier-dev
  db.beacondetections.drop()
  db.repairDatabase()
  db.creatCollection("beacondetections", {capped: true, size: whateveroclock})
  exit
