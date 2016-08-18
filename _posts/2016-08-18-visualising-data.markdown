---
layout: post
title: Visualising data
date: 2016-07-20 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: continuation from slicing data blog post
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Visualising the data is really important for all of our angles. This post is basically a rehash as well as a more deeper continuation from the last post linked [here](http://where-in.space/2016/slicing-data) and [here](http://where-in.space/2016/importing-real-data-problems-separating-curves-more-problems).

### Representing Dimensions of Time:

#### Repitition of shapes:

For the viz to work quite well, it will also need to represent time in both a short and long time scale on animation and especially static images - being a snapshot of what is happening at the time. The existence or non existence of an object in the visualisation influences the occurance of spatial movement. We can't talk about spatial movements with static images unless the object exists and can see a change on the image. Locational change characterises the movement and others have done depicted this locational change using multiple static images. Breslav used repititon of images changing in opacity and shapes to represent this movement which can be found [here](https://autodeskresearch.com/publications/multitimescales).

![shapes]({{ site.baseurl }}/assets/breslav.png)

#### Lines, symbols:

This is another approach or can also be integrated. Wood and Keller (1996) identified 5 categories of temporal information represented through maps - moments, duration, structured time, Time as distance and space as clock. Mullaw (2008) took 3 of these parameters (moment, duration and order) and used it in the context of moving objects such as walking people and made some diagrams that could potentially help represent time with moving objects. 

![time]({{ site.baseurl }}/assets/time.png)

#### Colour:

One way we can further represent this information is if we separate individuals or groups of people with separate colours. Because we're dealing with cartography, it is important to understand what colours are suitable. There is alot of research that deals with what is an acceptable colour spectrum as it is designed to help people understand maps - colorbrewer, chromajs. According to color brewer, there are three main palettes: sequential, diverging and qualitative. These palettes can either help to categorise people using good visual colours as backed up by cartographic research and/or help to determine paths of people in space - also accounts for people who are colour blind. This will make it easier for us to argue that we're using these colours intentionally as these have been noted to be appropriate colours to represent objects in cartography. Chromajs will generate helps generate colours that are intended for use in maps and data visualisations. 

This link [here](http://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3) is a web interface that shows you sample colours where you can choose your palette of choice to suit your own needs. 

![colorbrew]({{ site.baseurl }}/assets/colorbrew.png)

#### Opacity

Changing the opacity of curves/pipes/objects that depict the paths of people can be another way. This is a form of a density map that visually determines how many times that same path has been traversed over time. 

![opacity]({{ site.baseurl }}/assets/opacity.png)
![opacity2]({{ site.baseurl }}/assets/opacity2.png)

#### Density of separate lines:

This is similar to opacity except the amount of paths that transverse along a particular will be separated with multiple lines rather than an overlay of lines. 

![density lines]({{ site.baseurl }}/assets/lines.png)

#### Cartogram

So this 'a map on which statistical information is shown in diagrammatic form'. 

![cartogram]({{ site.baseurl }}/assets/cartogram.png)