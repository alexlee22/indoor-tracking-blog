---
layout: post
title: Triangulation through Python
date: 2016-06-28 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: briefing of triangulation and a python script to locate things in space.  

author: tiara
---

I started consulting a few blogs that discussed doing triangulation. I chose python as a scripting tool because it is built into grasshopper and can easily be translated to be used within the Rpi or database. That didn't stop me from looking into other coding directions, but I came across more python than anything else which was convenient. 

### Triangulation 

As defined by: http://www.maplesoft.com/support/help/maple/view.aspx?path=MathApps%2FTriangulation

> Triangulation is the process of pinpointing a certain object or location by taking bearings to it from two remote points.

In ancient times, it could be difficult to determine distances, especially for unreachable areas. For example, observers standing on a dock would have difficulty determining the distance to a ship. However with the application of trigonometry they were able to determine how far away the ship was. 

![triangulation boat]({{ site.baseurl }}/assets/triangulation.boat.png)

> The two observers stood at a set distance d=d1+d2 from each other. They then used their instruments to measure the angles θ1 and θ2 to the boat. Now, the tangent of an angle in a right triangle is the ratio of the length of the opposite side to the length of the adjacent side, in this case:
>
> Therefore we know that d = Ltan θ1+Ltan θ2, or solving for L and simplifying,  L=d⋅sin θ1⋅sin θ2sin (θ1+θ2).

So how do we put this into something we can use, directing data straight from a source into any floor plan with any positions of receivers? 

I found these guys:

> http://code.activestate.com/recipes/579021-delaunay-triangulation/ who used a process from *** S-hull: a fast radial sweep-hull routine for Delaunay triangulation *** which can be found at: http://www.s-hull.org/paper/s_hull.pdf.   
 
### Moving forward

Applying this to a Grasshopper script which can plug and play any floor plan, any location of receivers(beacons: closest three, and then give us a location). Little steps!!




