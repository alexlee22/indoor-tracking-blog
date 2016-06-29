---
layout: post
title: First real test dump
date: 2016-06-29 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: DumpDumpDumpDump!
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

The Raspberry Pi's (RPis) seem to have alot of toruble with keeping a stable connection to the wifi router. I did some testing for about 24 hours and created a dump data of 3 RPi's and 3 Estimote stickers to test: WiFi connection percentage/time, Beacon pickup intivals (using a python script I made), and how well RPis 3 are. Theres a dump of the data over the duration in the Github folder! I'll throw a full trial analysis tomorrow after I do a better test aswell #nerdchills.

These are some things that I found about from simply viewing the website through out my work day:

- RPi 4 was the most stable throught the day identified from requent visits. It is also the closest to the wifi, and
- RPi 2 was the most unstable. It had minimal connections, RPi 3 was mostly in its place.
- RPi 3 was not that great, worked most of the time though.

How should we minimise the dissconnections based from this quick observation? The easiest answer wouild be to hardwire eithernet cables to each RPi. Oviously that would be a much complicated task, convincing people that we need to tear-up their office to place mini computers everwhere. The second would be to increase the WiFi routers around the ABW. Currently, only us and some digital staff are on it (when their normal one gets too slow :]) The wifi signals seem to be quite bad since the router is placed on the table, on the roof might increase the results.

The test I did with this data, cannot beasue the beacon detection periods due to a script error (forgot to uncomment something :[). I am currently running another test to collect this data.

/#soon
