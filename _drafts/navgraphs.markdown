---
layout: post
title: Navgraphs
date: 2016-07-20 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Downlow of whats happening
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

This is just an progress post about some things that are happening inside rhino/gh model about the navgraph to keep people up to speed.

1. Creating the nav graph

First step is populating the workplace floor plan with a whole lot of points. These points are being used as the platform to apply a mesh ontop that will be used for our shortest path or any path of a person for that matter. Increasing the number of points populated on the floor plan will mean that the paths of the person can be more smoother/natural and less dramatic as shown in the images below. 

image of small amounts of points

image of large amonounts of points

2. Maximising the points on the floor plan

Something to take note of in the image is that there is only so much you can do when populating the floor plan. There is no alarming threshold or error message when you add 'X' amount of points in grasshopper, but it seems there is no big difference when doing *for example* 200000 and 300000 points. At the moment, the grasshopper script contains 220000 points. It is likely not to change either at this stage.

3. Inclusion and Exclusion
As people do not walk through tables or columns etc, have to make sure that the points exclude physical obstacles to make the paths more believable and replicate what can happen in reality as shown in the image below.

image

4. Applying the nav mesh

So the navgraph is being created with a delaunay. As you can see in the image, not all the points in the excluded area (which is where the obstacles are) as I believe you need these points to make a successful delaunay or could be another reason. Thats my suspected reason anyway. This means that parts of the delaunay curves overlap the obstacle area which further means that there is a possibility in the viz that you can walk through a table or column etc.

image

5. Dealing with funky curves

Theres also alot of funky curves around the perimeter of the floor plan which means that some of the paths of people are walking shoulder against a wall, which probably doesn't happen. This is where some of the delaunay curves get pretty funky as it can get very dense and weird.

image

6. Manual fix

What needs to be done to fix part #4 and #5, is that will need to do manual delete/fix of problem areas where some of lines go through walls, furniture and any other obstacles and weird lines. This will ensure that the paths of people resemble more of reality and less of ghost people teleporting through a wall or shoulder against a wall. This manual fix is done <i>after</i> the navmesh has been baked out of gh and into rhino. So this is also why increasing the points will not change. 

7. Update

So alot of the curves have been deleted from the rhino model in the BVN file (just for testing atm). As this is a manual process, I have not gone and deleted absolutely everything as there will be some things that my naked eye can't catch unless I really sit down and spend maybe 5 years doing. This will be an ongoing process that I hope everyone can do if they catch some lines being funky in the model. 