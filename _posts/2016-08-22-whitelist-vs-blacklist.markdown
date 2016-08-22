---
layout: post
title: Whitelist VS Blacklist filtering methords
date: 2016-08-22 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Thats racist!
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

Ben and I came across a discussion regarding the process of how the RPi filters the data find only the beacons assigned. Ben became fussy with the details of testing a blacklist and whitelist method. The different between whitelist and blacklist can get really technical, so the easiest explanation I found which helps explain it to people was from stack overflow 

*For example, consider automatically rejecting incoming phone calls. You could have a black list of marketing companies, so everyone but them would be able to call you. Or you could have white list containing your friends' numbers, so only they would be able to call you.*

If that’s still not clear, a while list is a drivers licence or identification for getting into a bar, without one you cannot enter because your likely underage. While a blacklist is a known list of troublemakers which need to be kept out of the club.

### Whitelisting for scanning

Whitelisting is the current method in which we are using to scan the beacons. It checks the UUID against a certain know UUID which gives access. Because the scanning is done on the RPi and the sorting is also done before upload, any other found data would be destroyed before given the chance of storage. This currently means that extra processing power is constantly used for scanning other BLE devices such as TV remotes. While this is not disruptive now, it can become a problem later when scaling to an extremely large size later when the process struggles.

### Blacklisting for scanning

Blacklisting is the alternative method for filtering scans. Using machine learning, if it is rejected by the server we can therefore put it on the blacklist to possibly reduce scanning ranges. However this becomes a bother when maintaining multiple lists. For example, RPi 001 could pick up a TV remote, learn it and then blacklist it, however RPi 002 doesn’t not pick it up and therefore doesn’t record it, what happens when we swap the locations of the two? This process takes extra work but could potentially save time? There is still the problem of generating a large blacklist only to check each UUID against it. Blacklisting is less restricting meaning we could get more potential surrounding data in.

### So which is better?

Well, its not that simple. At this moment we are favouring whitelisting, because we are using all the same UUID. However that doesn’t mean we will exclude the idea of blacklisting. We would obviously need to test the time and processing power against a high stress load to see even the smallest results. Simply something to look at down the road


