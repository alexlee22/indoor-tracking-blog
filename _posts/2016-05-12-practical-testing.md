---
layout: post
title: Practical testing
date: 2016-05-12 00:00:00
type: post
published: false
status: publish
categories: []
tags: []
description: Settin up with multiple Pies
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---
### Setting up

On thusday morning I set up the 3 RPi's to all run the same python script which scans for Estimote iBeacon stickers an uploads them into a mongoDB. It was already mostly setup, just needed to `git pull` change the `ip` and `agent id' for each through SSH. The information is being dumped on the ![test server](http://52.63.188.123:9000/beacon_detections). The setup is to help test and see how the Estimote stickers and RPi's opperate within the Activity Based Workplace.

### Observations

We need to consider how people are doing to wear the tracking tags, so using the makeshift necklace I constructed with electrical tape I did some overvations to consider the possibilities of using devices

- When the beacon was in my pocket, it had slightly reduced RSSI. The singal strength dropped further when placed next to a mobile phone.
- When I faced away from the RPi (tag infront of me, now facing away) the RSSI reduced. THis is more or lokely signals not being able to move through bodies of water. Consider the factors of when people rotate on chairs + rpi placements.
- The estimote sticker was being picked up by two beacons with almost identical RSSIs

The beacon sticker seemed to work well as an pendent, not to mention they are already so stylish. The problems above need to be considered when designing how people are going to wear them
