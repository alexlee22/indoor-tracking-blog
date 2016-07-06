---
layout: post
title: Isovist Experiment
date: 2016-07-04 00:10:00
type: post
published: true
status: publish
categories: []
tags: []
description: Experiment to determine the isovist shape
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

This is a write up of the next experiment - very rough, open for discussion! Also, the drawings are not meant to be an exact representation!!!!

This experiment aims to help inform the isovist model, which hopes to give a rough indication of where the signals from the receiver can reach.
Previously, the existing isovist model used a radius to determine the range of the receiver. However, given that our previous experiment suggested that signals from the estimote sticker cannot be picked up by the receiver through human bodies, we must perform an experiment to put this problem into play and determine how much this actually affects the results and put it into the isovist. The results of the experiment will hope to inform the placement of the Raspberry Pi’s throughout the environment. 

![1]({{ site.baseurl }}/assets/isovist/1.png)

Previously, our isovist model looked like this, however, this isn’t very likely and will more likely look like 

![2]({{ site.baseurl }}/assets/isovist/2.png)

Won’t look like this exactly, but just indicating that there will be a stronger signal received when the orientation from the receiver is facing towards the incoming estimote and will more likely reduce in signal strength and facing away. 

![3]({{ site.baseurl }}/assets/isovist/3.png)

Or possibly like the grey area instead of the round red circle

Method:

Map out a radius of circle, 1 m away of where the Raspberry Pi would be placed. 

Option 1:
Around the circumference of the circle, divide the circle into 10 parts and just like the previous experiment at BVN, hang estimote stickers from the ceiling at chest height at equal distances - say 10cm. Run testble.py script and run for 1 hour.

![4]({{ site.baseurl }}/assets/isovist/4.png)

Arrow in the centre of blue dot indicates that the RPI bluetooth dongle will be faced in that direction.

Option 2:
Walk around the circumference of the circle at slow walking speed with the estimote sticker always facing the estimote sticker - so the user is not to stand facing away from the receiver - e.g. side stepping. However, this way is less controlled as it can be difficult to determine at what point the signal was detected. This can be better with video however, still needs to be heavily thought of as it can be difficult to determine the location of a person around the radius with video. 

![5]({{ site.baseurl }}/assets/isovist/5.png)

UPDATE:

Option 3:

Instead of hanging estimotes on the ceiling at equal distances around the circumference of a 1m circle, preferrable to use RPI's instead. One thing that was mentioned to me was that the options explained above would measure the signal interference of the RPI's instead of the beacons itself - suppose to be the other way around. 

So with this in mind, there are 4 RPI's that are available to use tomorrow. Unfortunately there aren't enough RPI's - a few died and aren't enough to share around the lot of us. 

But with the 4 that I do have, place them equally around the circumference of the 1m circle. Assuming that the RPI's attached directly to the top of the ceiling will affect the signal quality of the results, could possibly put a small cardboard box or 4 of whatever that is available that is lightweight that will separate the RPI and the concrete ceiling. 

![6]({{ site.baseurl }}/assets/isovist/6.png)

In the middle of the circle, a human will stand there with the beacon attached to them - preferrably worn as a necklace. There are now 2 different beacons that needed to be tested - the estimote sticker and the ibks105. The ibks105 could possibly replace the estimote stickers due the unrealiable results emitted from them. We'll hope to find some clarification concluding this experiment. 

![7]({{ site.baseurl }}/assets/isovist/7.png)

Run the testble.py script for about an hour or so - open for discussion. 

This experiment will be conducted at BVN's training room. 

Equipment needed:
1 x ibks beacon
1 x estimote sticker
4 x RPI's
Some tape and tape measure
Long extension cords - need to ask IT, not sure if there are enough extension cords.

Parameters:
1m radius - RPI placed at 4 points of the circle
Height of the RPI
Orientation of the RPI, make sure BLE dongles are pointed directly towards the centre of the circle
Oridentation of the person - make sure person does not rotate around the circle