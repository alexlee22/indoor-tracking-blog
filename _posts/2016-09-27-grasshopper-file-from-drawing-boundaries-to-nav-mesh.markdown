---
layout: post
title: Grasshopper File from Drawing Boundaries to Nav Mesh
date: 2016-07-20 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: more viz
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

The following files live in this folder, https://github.com/tuksun/BlankMindBlog/tree/gh-pages/helpers/VISUALISATION/VIZ. This post is generally a run down of the steps towards the visualisation of spatial movements. Its a continuation from a lot of previous posts but this time, this is more tidied up and works well! If you're reading this, then note that this post will be updated over the next few days. This post at the current stage is still work in progress.

### GH FILES

01_BOUNDARIES_ACTIVE
02_NAV MESH
03_ISOVIST MODEL
04_SORTING BASESTATIONS & STATES

01_BOUNDARIES_ACTIVE
This GH file maps out the walkable boundaries across the floor plan. There are four main layers that should be paid attention to in the Rhino File.

1. _gh_boundaries_outer_BVN
2. _gh_boundaries_inner_BVN
3. _gh_boundaries_outeroffset_BVN
4. _gh_boundaries_inneroffset_BVN

The ---outer_BVN layer maps out the outer perimeter of the floor plan. This curve is manually drawn in Rhino. It is worth mentioning that 'Outer' does not mean just the property boundary of the office. Outer means excluding walls, columns and fire escapes. This is shown in Fig 1. 

![boundary of outer curve]({{ site.baseurl }}/assets/27-09-2016/outer curve.JPG)

The ---inner_BVN layer maps out the perimeter of the obstacles across the floor plan. As people do not teleport through physical objects, all the workstations, casework and television mounts need to be excluded from the walkable areas of the floor plan. Each obstacle in the Rhino file is individually grouped and referenced back into Grasshopper. The end points of these groups are found where convex hulls are applied to approximately draw a wrapping shape around the specific obstacle group. 

![boundary of obstacles]({{ site.baseurl }}/assets/27-09-2016/inner curve.JPG)

The ---outeroffset_BVN and ---inneroffset_BVN layer maps out a 200mm offset from the ---inner_BVN boundary and ---outer_BVN boundary Rhino layer. As people do not (usually) graze their bodies against physical obstacles, the visualisation tool will need to the same. This means that the regular person in the visualisation will center themselves between the surrounding obstacles. Additionally, as people do not turn into sharp corners (usually) but rather in slight curve, the offset corners are also rounded. 

![offset of obstacles]({{ site.baseurl }}/assets/27-09-2016/inner curve.JPG)

Green line is the boundary of the obstacles, blue line is the offset boundary from the obstacble boundary by 200mm.

02_NAV MESH
This GH file is responsible of setting out the mesh on the floor plan. The each individual curve on the mesh represents a walkable path that a person may take. This part can be manual but the point of this GH file is to remove all the manual processes as much as it can in the initial process. What this file does is using perimeter curve in the ---outeroffset_BVN to randomly generate points. The number of points will determine the flow of the walkable path. The less points you have populated across the floor plan, the sharper a persons path may possibly be. This GH file is currently populated with 24000 points. 

![24000 points]({{ site.baseurl }}/assets/27-09-2016/24000 points.JPG)

Out of the 24000 points, any point that is within the boundaries of the offset obstacles in the ---inneroffset_BVN Rhino layer will be culled out of the points list. These points will be important as it will be used to drive the walkable path mesh that is overlayed on top of the floor plan. This is shown in the Fig below. 

![culled points]({{ site.baseurl }}/assets/27-09-2016/culled points.JPG)

After the points are culled and everything seems correct, a delaunay mesh is applied where it joins the points together with individual curves. Due to the offset around the obstacles, there will be instances where points will be culled that you particular would not want to cull. For instance, as shown in the image below.

![navmesh]({{ site.baseurl }}/assets/27-09-2016/navmesh.JPG)

Therefore, as there are no curves in this part of the area, the visualisation will assume that this is not a walkable path when in reality, it will be.

Therefore, this is where the manual part comes in ... 
In places that are disconnected curves in the mesh, curves are manually drawn back in the Rhino file into the ---navmesh Rhino layer.

03_ISOVIST MODEL
This GH file feeds hand in hand with the 04_SORTING BASESTATIONS & STATES GH file. The Rhino layers that are important is:

1. basestation_points 
2. _gh_circle_isovist_BVN

Points are placed into the basestation_points Rhino layer. The points on this layer will mean there will need to be a basestation at that location. This GH model will determine the signal propagation at certain points. This is important to understand as Bluetooth Low energy signals cannot or find difficulty penetrating physical objects, specifically large structural columns. The isovist boundaries are baked out into Rhino, living in the _gh_boundary_isovist_BVN. 

To see how the draft isovist model looks like lives in this [link](http://where-in.space/2016/bvn-and-arup-isovist)

04_SORTING BASESTATIONS & STATES
This GH file is just a matter of adding a name to a basestation and state and sorting them alphabetically based on a curve. The difference between basestation and state, is that basestation is the deployed raspberry pi on the floor plan (aka. the real thing) and state is intended when driving the fake data. 

image

then its a matter of doing the same for ARUP! 

### RHINO ADDITIONAL STUFF

There are some other additional layers on the Rhino model.

BVN: is just the general baseplan of the building.

STR COLS: is where the curves and surfaces of the structural columns live

sorting curve: this is the curve that sorts the basestations alphabetically