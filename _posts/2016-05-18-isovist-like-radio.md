---
layout: post
title: Isovist like Radio
date: 2016-05-18 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Optimising a space using isovist theory
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

### Why Isovists

For an Indoor Positioning System (IPS) to properly track an individual within an indoor space, we need to use the data collected by access points (RSSI, proximity, TXpower, etc). But past information has show that radio signals can be interrupted through obstructions including walls, floors and bodies of water (humans), which can interrupt the accuracy of an IPS. Indoor spaces have multiple obstructions which make it difficult to create an accurate IPS. We can use the isovists ideology to create an estimated result when using beacons to estimate the approximate coverage on the workspace floorplan.

### Past Experiment

A past University of New South Wales student studied the effects of Bluetooth radio waves within the environment of the office environment (specifically an area within the BVN Architecture's Sydney office). This experiment showed that BLuetooth signals when intercepted by a concrete pillar or results decreased the signal strength (RSSI). Below is an image from his experiment.

![Chris' Grad Project]({{ site.baseurl}}/assets/isovist-like-radio/chris-isovist.png)

We can use an isovist model to identify the approximate area of coverage. In Grasshopper and Rhinoceros, the isovist function generates a lines at assigned degrees, then transforming the lines into a surface to measure area. Using the model, we can generate statistics that will help us decide the justification for placing the Raspberry Pi beacons around.

![Dem Stats Yo]({{ site.baseurl}}/assets/isovist-like-radio/example1.png)

### Simulation

However the isovists theory only take into account satellite collision, it does not include other complications including reflection. Using Grasshopper and Rhinoceros, we can play around with beacon placements to compare the cost to reward benefits. Here are some examples.

![Lots of Examples]({{ site.baseurl}}/assets/isovist-like-radio/example2.png)


The next step will be to play around with finding the amount of RPi's we need after finding the appropriate Bluetooth dongle measurements.