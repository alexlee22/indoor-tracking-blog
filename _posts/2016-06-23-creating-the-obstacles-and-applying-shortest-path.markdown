---
layout: post
title: Creating the Obstacles and Applying Shortest Path
date: 2016-06-23 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: 
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Attempted to create the boundaries/obstacles of ARUP in GH to generate a shortest path algorithm when we go off and do our own angles. T offered to do BVN ;)

image

Imported dwg. files into Rhino at 1:100, so tis' scaled properly. However, it imported as blocks which meant i had to explode it all into its all separate curves and group them back together into its respectable furniture groups to make it easier to select. 

Then i referenced it back in gh and used convex hull to shape the boundaries. Worked well for the ones that were in more box shapes. But for the funkier looking shapes, I had to divide the curves into more points in order to wrap around the funkier geometry.

image

Had problems with the wall where it would not want to create the boundaries, so I traced around it and worked fine.

Final shape:
image

So afterwards, BD had went along and tested out the shortest path plugin and alas!
image

Considering it takes a while to compute, will consider about reducing the delaunay mesh as we go along and refine the access point locations.