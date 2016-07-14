---
layout: post
title: Seeing a pattern
date: 2016-07-14 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Results from exp 7
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---
## Summary

So coming from this experiment found [here](http://where-in.space/2016/exp7-others), generally what should be seen from the results is a somewhat consistent pattern of curves when turning around 5 times in 15 degree incremements with 4 RPI's placed at different lengths. When directly facing a RPI, in theory it would show stronger signal strength results. 

Used the .json detection file to plot points into matplotlib and jupyter....and its actually kinda cool. Har-har i like it. Would probably use it from now on in replacement of any other. The code and raw files of the following graphs are also found [here](https://github.com/tuksun/BlankMindBlog/tree/gh-pages/helpers/experiments/exp7/raw_json). 

## Results:

So the first image represents all the detections that are detected within this time period with both the esimote sticker and ikbs105. Theres around 6000 more or less points in this graph. 

The reason that there is a gap towards the start of the graph is because we let the script run for a few minutes before we actually started. There is a slight buffer period from when you press start on the python script (testble.py that records detections) to when it actually records its first detection. We officially started recording controlled results at 03:20:00 to 03:40:00. 

![1]({{ site.baseurl }}/assets/exp7 results/1.png) 

What can be seen is a pattern or 'peak' in the graph. It takes exactly 4 minutes to go in a full turn once and at the 4 minute mark when you are facing directly the RPI is when you get the strongest signal strength results. 

What can also be seen is that the RSSI for every RPI fluctates very signicantly at each second throughout the experiment. So this ties hand in hand with this [post](http://where-in.space/2016/rewrite-exp8) that questions - well how many detections do we need to get a stable RSSI? as this question will need to be answered at a later stage when needing to develop our research angles. 

The first image is quite hard to understand, so the following images are broken apart into its own sections. 

![2]({{ site.baseurl }}/assets/exp7 results/2.png) 

![3]({{ site.baseurl }}/assets/exp7 results/3.png) 

![4]({{ site.baseurl }}/assets/exp7 results/4.png) 

![5]({{ site.baseurl }}/assets/exp7 results/5.png) 

What can be seen from the 1m (red) and 2 (orange) graphs is that the curves are much steeper in comparison to 3 and 4m. So when you've turned away from the RPI, it experiences a stronger signal loss with a much noticable pattern. At metres 3 and 4,  the results can be difficult to read as there is even more fluctuation. 

The following graphs break this down even more to its own beacon builds - estimote sticker and ibks105. Well obviously the estimote is much more stronger than the ibks105 and has far more detections at a steady rate. At 4m, the estimote stickers are pretty bad as the detection rssi is very sporadic. SO IBKS it is. 

![6]({{ site.baseurl }}/assets/exp7 results/6.png) 

![7]({{ site.baseurl }}/assets/exp7 results/7.png) 

![8]({{ site.baseurl }}/assets/exp7 results/8.png) 

![9]({{ site.baseurl }}/assets/exp7 results/9.png) 

Now trying to get a polar graph out of this information, then we can really tell the shape of how this looks and might be able to give us a clearer understanding of how this can feed into our visualisation.