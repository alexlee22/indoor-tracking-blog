---
layout: post
title: When the meltdown has a downmelt
date: 2016-07-12 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Nothing goes my way, does it?
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Melting the meltdown

Ok to the server seems to have a hard time formatting the tracking data into location information. It wasn't having this issue before so what has changed. There were some changes to the layout and server size/properties, but the server basically was fine for the past 2 weeks, so some testing was done.

I initially though it was a MongoDB problem due to the original script using a maxed size database. Another issue could be that it was not deleting the files when assigning into the database. But how come this issue didn't occurs before when I left the server on for a week? Could the extended size be an issue? I investigated the web to find out how it could be solve.

Today Jorke help in finding out the problem with some tests. After playing around with the script, packaging format and mongoDB, it was found that it has trouble loading the **WHOLE*** past collection of beacon detections which made the server crash. That was about 800k documents! The query design could also be optimise, since it was doing the search x times where `x = number of beacons IDs * document size`. Some other things were also tested to check a few problems with Javascript loading, but nothing too unusual to the main crash.

So the resulting decisions can be split into multiple options: 

- Check to see if the collection size is the issue then do some of the following…
- Apply a mongo timeout/limit function for query searching  (First case scenario)
- Fix the script to reduce document load via format or query design
- *Some other tweaks which I can’t remember atm*
- Apply a daily dump which resets the server size (Last case scenario)

### On the other hand...

I think I managed to fix the RPi Wi-Fi disconnect situation following this [tutorial](http://alexba.in/blog/2015/01/14/automatically-reconnecting-wifi-on-a-raspberrypi/). It automatically checks every 5 if the internet has been disconnected and attempts to reconnect to the access point. It turns out that using `sudo crontab -e` and editing the `/etc/crontab` are very different to getting it to work, go figure...
