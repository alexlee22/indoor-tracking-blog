---
layout: post
title: BVN and ARUP isovist
date: 2016-07-06 00:10:00
type: post
published: true
status: publish
categories: []
tags: []
description: Laying it out 
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

So, aimed to finish the isovist off to provide us a rough indication of how many Raspberry Pi's we may need for each environment and extracting the xy coordinates to be able to start visualising information. 

The script is starting from Alex's existing one living in [here](https://drive.google.com/drive/folders/0B_fWHTWz69HfTXFsbmNlUXJqQnM). Started by placing some sample points throughout each office. The computing part takes a while depending on how many points there are, so I did a rough test by using those points and adding circles with a radius of 8000m and guessing by eye where the the isovist will start to take shape. 

Made sure that there is some overlap in the radius to make sure that all areas are covered. The radius of the isovist is at 8m as the results from the last experiment seen [here](http://where-in.space/2016/rssi-experiment) can still be detected. Can also assume that results start to get further lower by 10m. Although just still to 8m for now. 

Once I got a rough indication, let it run for a good 30 mins or so for each environment. Also, just an additional note, the furniture is not part of the isovist, only the immediate boundaries like walls, columns etc. 

Starting at the BVN office, images say we needed around 27 base stations. Can argue that if we add more, it may mean better accuracy, better results etc. 

![BVN Base Stations]({{ site.baseurl }}/assets/isovist/ISOVIST_BVN_FURN.PNG)

Based off the isovist script, ARUP will need 34 base stations. ARUP has many nooks and crannies in the office, so again, can also argue for more basestations. 
 
![ARUP base stations]({{ site.baseurl }}/assets/isovist/ISOVIST_ARUP_FURN.PNG)

The next part was extracing the XY coordinates. This is part of a simulation/animation that BD had started to brew up. Coordinates of BVN and ARUP can be found on github right [here](https://github.com/ArupAus/code2016/tree/master/helpers).