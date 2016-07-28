---
layout: post
title: Heatmap Visualisation
date: 2016-07-28 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Super Hot Fire
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---
### Data Visualisation Concept

My research involves looking at how people utilise the space with indoor tracking data. It becomes incredibly hard to understand how people use a space without being a stalker looking over their shoulder 24/7. Not to mention its impossible to personally monitor 100 people constantly throughout the day. An indoor positioning tool can help simplify the problem by periodically and passively monitoring their approximate location within a space. While we cannot understand exactly what they are doing, we can make assumptions based on the scenario and small observations.

I aim to use statically analysis is to assist in understanding what areas are used and what affect does that particular area have on individuals. A heatmap is envisioned for a visually and easy comparison of different spaces. Individual designed areas will also be looked at with hot-desking environments. There are endless possibilities for understanding how people use the space with tracking data, however how will this be executed. Here is some [examples](http://dataspaces.truthlabs.com/) that Anniza found.

I have used Processing in the past for quick, easy and great visualisations. However the limitations of processing made me go look for other alternatives. My next goal was to find a suitable representation tool for my thesis to display the results I want.

### Processing

[Processing](http://processing.org/) is an easy visualisation tool originally based on Java (includes Python) that uses a visual library to help represent programing language by using shapes and colours. Commonly used for interaction and visualisation purposes within architecture, processing is an easy representation tool which is commonly delivered as a run `.exe` package.

Processing however does not let you deploy the package as a web or easy access application, making the level of accessibility quite low. It would become very hard to generate the visuals with live data. It is much better for low to medium level programing and especially works well with hardcoded data. The style in processing is quite similar to JavaScript (as most programing languages) so I decided to look for some JavaScript libraries.

### D3.js Javascript

[Data-Driven Documents](https://d3js.org/) allows creation of data visualisation using JavaScript and D3 library. Similarly to processing, it is a visual library which allows use to use new functions that is quite similar. It can be used to generate graphs, tables or diagrams which all are impacted by an automated data style.

Best of all, it can possibly be merged with the current server which can open possibilities for a smooth new server. The dream would be to get the visualisation working in real-time, but one step at a time.
