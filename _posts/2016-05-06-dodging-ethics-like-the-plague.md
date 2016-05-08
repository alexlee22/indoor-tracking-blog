---
layout: post
title: Dodging Ethics like the Plague
date: 2016-05-06 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: PS. Ethics are dumb
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

### Ethical problems with <del>stalking</del> tracking people with indoor positioning systems

We need to get approval from the University of New South Wales to give us the permission to go ahead. Therefore we need to minimise the amounts of risks which would impact the stakeholders. One of the common issues we come across is how we are going to store the data? UNSW requires us to store the data someone accessible for up to 10 years, therefore we need to provide a copy if necessary. This can be as simple as "a copy of the data had being stored in a secure hard drive at 123 fake street residence." 

The potential problems with our client not wanting us to store their employee information on a server in which they cannot access. But we cant find individuals by not using names. However we can *split* the data into two databases so we can increase the level of disclosure. The databases should be split up into two main servers:

- (1) Holds all the received data from beacons collected by anchors (eg. RSSI, UUID, time, etc.)
- (2) Employee data (eg. names, occupation, etc.)

<div class="image-square-grid">
<div class="image-square-grid-box-half">

![acceptable RSSI]({{ site.baseurl }}/assets/dodging-ethics-like-the-plague/sketchin.jpg)

</div>
</div>

The separations of data means that we can use only database (1) for UNSW and both (1) and (2) for the clients. The (2) data is not needed for a basic analysis level (in which we might only have time for). We only need to access (2) when we need to develop a Javascript visual representation of the office to assign the UUIDs/Major/Minor to the volunteers. This should solve a lot of problems that both UNSW and the client should have with data collection and storage.

### Moving forward

There are still couple of things we need to sort out before we proceed with the project

- Location of anchors (roof vs floow)
- technology evaluation in terms of required hardware specs (power where why what)
- cost evaluation: beacons and rpi
- visual representation in JS
- will add more when i renember...