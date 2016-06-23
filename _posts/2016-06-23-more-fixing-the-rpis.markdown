---
layout: post
title: More Fixing the RPis
date: 2016-06-23 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Ready for testing! Kinda.
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

Spend the day at Arup hammering out the some small problems to get it ready for tomorrow. We can start some preliminary testing to see how it works.

### Web server

Most of the web server was set up on Tuesday. Today I just played around and see what to improve. It was originally scanning by Major, because it would not pick up any UUIDs. Turns out this was a conversion problem, When breaking up the packet (of all info: Major, Minor, UUID, RSSI, etc.) they were all strings. String vs unknown data type (letters and numbers), could not search.

Also added some more Estimote Sticker properties which will help assist in tracking some more people.

### Raspberry Pis'

I spent alot of time trying to figure out how to get the static IP. There were a few issues here:

- Couldn't get via `/etc/network/interfaces`. It seems to be using Inet6 instead of Inet4 but still SSH via Inet4, different structure. [Heres the tutorial I followed, there were several like this.](http://www.modmypi.com/blog/tutorial-how-to-give-your-raspberry-pi-a-static-ip-address)
- Got it to show when using `ifconfig` but not actually. I could still SSH into the old IP
- Might be a network setting, in which the IT people wont help us there T_T

I also changed the script to upload the IP address, I also chained it to work with taking the last number and uploading it as the RPi ID. Temporarily set it off because couldn't set a static IP.

The python script now boots on startup, there were a lot of fails, kill and stop codes (mostly connection errors) which was why it was originally not working via `crontab`. Used a `try` to repeat the process until connection was established

### B5 Tomorrow

5 RPis are set up at Arup tonight which will help us get a good idea of how it will react within the environment. I would like to test some of the distances in the seating location.

I also need to wipe the databases in preparation for tomorrow so we can get a good idea of the tracking data.
