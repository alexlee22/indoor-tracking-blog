---
layout: post
title: Experiment 6: Polar Pattern and detection averages
date: 2016-07-08 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Write up of experiment 6, some issues and steps for progression

author: tiara
---

Yesterday at BVN Annisa and myself conducted an experiment where we measured the Rssi values from an estimote and a Hockey Puck. We compared the values of the rissi as I rotated on a point every 16 degrees between 20 second intervals. Each Test took around 8 minutes and we measured the recieved rssi values at 1m, 2m, 3m and 4m.

### Average detection rate

![shitty rssi]({{ site.baseurl }}/assets/exp6-detectionAverage.PNG) 


We found that the Hockey puck was recieved almost 2 times more than the etimote. We also found that the results between the estimote and the hockey puck were quite similar. 


![shitty rssi]({{ site.baseurl }}/assets/estimote-polar-pattern.PNG) 

![shitty rssi]({{ site.baseurl }}/assets/hockey-puck-polar-pattern.PNG)

### Experimental critisism

Our first look at the results, we noticed there was something strange about the diagraMS. We later realised that the overlay of the rssi values at the measured meters were offset because of the starting angle in which we measured from. To fix this, we need to breakdown the filtered data sheets and figure out at what point I was facing a specific direction and get that angle. 

Another thing we noticed, is that the bluetooth maybe skewed as we do not know exactly where the broadcasting signal is coming from the new rpi 3. 

# Moving forward

1. Rewrite experiment 6 and figure out where the angles overlap on the Polar Pattern diagrams. 

2. I also need to produce the last json file for arup for ben for all the locations of the beacons so we can implmenet it into his visualisation thingy he has going. e.g. https://github.com/ArupAus/code2016/blob/master/helpers/movement_data_baseStations_ARUP.json

3. We should also take a look into alternative scientific computing platforms other than google sheets(lel). Ben made a good suggestion for using 'Pandas ipython notebook' which I will give a crack at when I redo these results from experiment 6. 

4. It might be worthwhile to repeat experiment 6 however, turning arounf 5 times and seeing if the pattern or 'hump' recurrs at that specific spot or is consistently inconsistent, either findings will be interesting or helpful. 

5. I need to write up more about the triangles and centroids idea and experiment with using some possible problems and solutions that might come out of it. For example, the corner issue which I talked about in my last post. 

6. I need to write up about the Beacon detection thingy options which I have been nulling over with Ben for a while. 

7. Read this article: https://www.autodeskresearch.com/publications/personas and have a go at the Visual Motion thingy that Oasis did an demonstration for us yesterday at BVN. I want to see how it will take a series of positions and then translate that into an animation, however this is very expeimental and I am not sure what exactly we will get or what we are looking for. 

