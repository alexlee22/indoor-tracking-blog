---
layout: post
title: Testing Estimote Stickers
date: 2016-04-14 16:24:00
type: post
published: true
status: publish
categories: []
tags: []
description: The Shopping Bag, The Bike and The Doge
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

Anniza and I tested the Estimote stickers at BVN office where the VR and Training room will be located. Taping the measurements on the floor, we measured the RSSI in an attempt to identify the range of the beacon. They are approximately $13 US Each for 10 sticker beacons and took approximately 1 week to arrive.

<div class="image-square-grid">
<div class="image-square-grid-box">

![STICKERS!!]({{ site.baseurl }}/assets/estimote-stickers.jpg)

</div>

<div class="image-square-grid-box">

![Quick sketch of our experiment]({{ site.baseurl }}/assets/testing-estimote-stickers/sketch-diagram.jpg)

</div>

<div class="image-square-grid-box">

![Over the top]({{ site.baseurl }}/assets/testing-estimote-stickers/high-shot.jpg)

</div>

<div class="image-square-grid-box">

![That view #instagram]({{ site.baseurl}}/assets/testing-estimote-stickers/long-shot.jpg)

</div>
</div>

|  **Distance (m)**   | **RSSI Value**   | **Fluxuation Range**   |
| 0 | -40 | +-2 |
| 0.1 | -42 | +-2 |
| 0.2 | -51 | +-3 |
| 0.3 | -70 | +-2 |
| 0.4 | -86 | +-2 |
| 0.5 | -91 | +-2 |
| 1 | -89 | +-3 |
| 2 | -95 | +-5 |
| 3 | -96 | +-4 |

The results from this test are quite inconsistent, the results from further distances are of identical values. A retest is needed to determine the accuracy results. Should we end up using another Bluetooth dongle to test the accuracy of the attached RPI?

The Raspberry Pi Bluetooth dongle was reading constant signals from the Estimote Sticker at approximately less than 3 meters. Signals at 5m and further was being picked up by the beacon but at low intervals (approximately one every 5-10 seconds)

The Estimote Sticker was not being picked up at 3 meters when the Beacon and RPI was on the ground. The cement flooring might be affecting the radio signals.


<div class="image-square-grid-box">
![wow stickers much reading such experiment]({{ site.baseurl }}/assets/testing-estimote-stickers/doge.jpg) 
</div>
