---
layout: post
title: Catching up on blogposts
date: 2016-07-26 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Doing some housekeeping
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Lack of blog posts recently, sorry! But in case anyone was wondering, I'm still alive. So was told that combining the script all in one uses unnecessary computing power so break it up into steps. Theres 4 different files and one big one. 

## Cleaning up floor plans
Been doing some housekeeping on the Rhino floor plans of both BVN and ARUP. This involved just getting alot of the junk - e.g. random lines to make the floor plan down to its nice bare bones and into some layers. Not all of them are in layers though, mainly just the baked GH curves, the basestation points, str columns and the furniture. 

## Isovist - Basestation Layout

### ARUP 
Theres some basestation's laid out in ARUP already on some cabled pillars that stem on some of the workstations in the office. It also seems that these basestations are not very apart from each other which is great if we want to see who is closest to what basestation. 

image

Unfortunately couldn't put the rest of the basestations on cabled pillars as there weren't really any in other areas. But tried to follow the same idea with the rest of the ARUP floor plan by putting them in places that are not very apart from each other but within reach of power sockets. As you can see from the image below, it doesn't cover the entire floor plan - especially in the workshop area. According to the Rhino file theres 35 basestations - Can add more but questioning if we really need it (Open for discussion).

image

### BVN 

As ARUP's basestations were not that far apart from each other, increased the density of the basestations at BVN - would also make for better results as they were originally around 7m apart from one another. At the moment they are still in the middle of workstations, I can move it to the end if its better. Can also question to add more. According to the Rhino file, there's 38 basestations - can add more too (open for discussion).

### Files
These files live in > helpers/gh_visualisation/visualisation with almost everything/01_Isovist_basestationLayout.gh<
If you look at the Rhino file, you should be able to see _gh_boundary_isovist and _gh_boundary_outer boundary layers. These layers are different as I had to use a separate curve for the isovist to get the outer most boundary for the isovist. The '_gh_boundary_outer' layer also gets the outer most boundary but also includes some furniture to reduce the amount of convex hulls later in the process. 

## Obstacles - Inner Boundary

Cleaned these files out. Traced out the outer boundary with some furniture if they were close enough to each other, so it did reduce the amount of the convex hulls but there is still a few in there in the files. These files live in >helpers/gh_visualisation/visualisation with almost everything/02_InnerBoundaries.gh<

BVN
image

ARUP 
image

## Nav-mesh/Delaunay

Because the floor plan wasn't dense enough with 8000 or so points, there was the occasional gap in the line where the edge of the line couldn't meet up with the rest of the mesh which meant that area wasn't really a walkable path. 

image

Increased the point density to 18000 points - this definately made sure it was pretty walkable everywhere - however, as you can see from the image below, there were instances where the mesh would spill over the obstacles, there wasn't this problem with ARUP. 

BVN
image

ARUP
image

These files live in >helpers/gh_visualisation/visualisation with almost everything/03_navGraph.gh<

## Basestation to Basestation

So this is stemming off my previous fluff post (I'll still put diagrams on that page dont you worry). This is just a starting point to each of our angles - whether it may be closest beacon or triangles and centroids. What this script does is that it firstly finds the XY coordinates of each basestation that was layed out at 'Isovist Basestation Layout' - right now these basestations are named. These XY coords are driven by a json file that has these basestations and their coordinates. 

And with a separate file (which will be the json detections file, also the script is just using a fake detections json file),

~~~
snippet of fake detections file

~~~

use the basestation that detected the person as a point in space of where they are - then maps a path between basestation A to basestation B, then also maps from basestation B to basestation C etc to make one continuous path. However, should be noted that it does not look at time nor rssi at this point in time. Also thanks to the people who helped (you the MVP). 

Expected Path
image

With Boundaries
image