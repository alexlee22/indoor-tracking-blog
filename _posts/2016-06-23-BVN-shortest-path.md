---
layout: post
title: BVN floor plan and Shortest path algorithm 
date: 2016-06-23 09:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Bring on the pain, BVN floorspace shortest path algorithm within grasshopper finished

author: tiara
---

Part of accomiplishing Tast 1, Annisa and I split the work for getting both the BVN and the ARUP floorplans ready for the shortest path algorithm within grasshopper. I drew the short straw and ended up modelling the whole BVN floor. 

After deleting all the shit hatching lines and obstruction lines within the floor plan drawings, the shortest algorithm within the grasshopper file was able to be flow throughout the plan. 

### Grasshopper

Make sure you have the Grasshopper plugin for trialling ***shortest path*** Installed. You can find it at http://www.food4rhino.com/project/shortestwalkgh?ufh

### Bring on the Pain 

There has got to be a better way then how I did it so if you do know a better wya, please comment below. 

Basically, annisa in her last post kind of went over the process for ARUPS office, so I am no going to repeat what she said, all I am doing is showing how it can be implemented into BVN instead. The files are in our Github/ CODE 2016 /Helpers folder titled BVN.shortestPath.gh and BVN_FLOORPLAN_4.rh

The file slook like this 

![BVN-shortest-path]({{ site.baseurl }}/assets/shortestPath_BVN/BVN_shortestPath.png)

The Grasshopper looks like this

![BVN-shortest-path-grasshopper]({{ site.baseurl }}/assets/shortestPath_BVN/Grasshopper_shortestPath_BVN.png)

You can find the actual files at this dropbox link: https://drive.google.com/folderview?id=0B57wYK0849PWaVBrNXVxbGpkZDg&usp=sharing 


