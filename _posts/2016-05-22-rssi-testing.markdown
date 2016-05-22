---
layout: post
title: RSSI testing
date: 2016-05-12 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: testing out the RSSI at different heights
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

<b>Background/Summary:</b>

To collect Received Signal Strength information (RSSI) from the Estimote stickers at different heights in ARUP’s Activity Based Work environment.

![ARUP floor plan]({{ site.baseurl}}/assets/arup_RSSI.png)
Figure 1: Red Circle = RPI, g=Green line = 10m test

Signal strength of the beacons can be influenced by the amount of signal interference in the space. By understanding at which height will be most beneficial to collect accurate information, this can help create an accurate isovist model, which can further determine the cost of implementing additional Raspberry Pi’s throughout the office and the deployment of Estimote stickers.

<b>Independent Variables: </b>

- 3 different heights - ground, desk height (0.7m from floor), just below ceiling (2.6m from floor)

![RSSI height]({{ site.baseurl}}/assets/rssi_height.png)

- Record at every metre - max 10m

- Scan for 2 minute intervals

- Recording for stationary and moving beacons 

- Beacons positioned below neck height - as a necklace or brooch 

- Make sure to have direct line-of-sight between receiver and transmitter.
	
<b>Identified Limitations: </b>

- Fluctuation of RSSI at every detection scan

- Needs a constant measured power (tX)

- Need to run experiment for a while at each metre to understand the average value of RSSI

- Interference of people moving throughout the office, density of people in the office

- The materials the Raspberry Pi is mounted on 

<b>Results: </b> 

can be found [here](https://docs.google.com/spreadsheets/d/1gpf7kSh9HzuRbg5_23tNDfcdczxn3yOuZnaP2J6Buk4/edit)

<b>Conclusion:</b>

On ground level, the beacons were not detected past 5m within 2 minutes of running the exp for both stationary and constant movement (rocking back and forth). RSSI values dropped the further away from the receiver. The amount of detections also dramatically decreased. 

At desk height, the amount of detections significantly increased by approximately 564% as the Raspberry Pi was still detecting beacons from as far as 10m.  Results showed that moving beacons were detected more than stationary. 

At just below ceiling height, results showed that stationary beacons were detected more often than moving beacons. 

In conclusion, moving beacons were detected better at desk height, whilst stationary beacons were detected better at just below ceiling height. This does compare to ground level. This data of information can be used in the isovist model to understand how many Raspberry Pi’s are needed throughout the office to get an accurate measurement. This can further be used to identify the costs that are involved with this process. 

<b>Further Investigation:</b>
- Test the RSSI measurement when the beacon is faced away from the Bluetooth LE receiver at 2 heights - just below ceiling and desk height. 

- Test in different environments - ARUP workshop, BVN

- Test at different orientations

- Apply this information to the isovist model