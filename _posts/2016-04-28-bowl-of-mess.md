---
layout: post
title: A bowl of mess 
date: 2016-04-28 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: checkin to Indoor madness and playing catch-up


author: tiara 
---

I have finally returned and started back at doing some 'Real' work. Today we had a meeting with the team and talked about what we have been doing for the last two weeks. 
In the meeting we discussed the building of the information taxonomy for a baseline infustructure for information management. 

# Fixing the old **Hello** experiment 

Last week, the team conducted an experiment where a beacon was used to alert a computer of a low-energy transmitter's increasing proximity. blahahahahah 
...Anyways it has stopped working, so we spent a good part of the night reorganising the experiment so it will work for tomorrow. 

### Problem a)
When we finally got it back up and running, we finally found that... The python script works a little too well... in fact that the beacon is picking up almost all low-energy transmitting device. 
We managed to fix the issue by narrowing the search for the transmitters by:

sudo python testblescan.py | grep d0d (insert transmitter unique identifier)
eg. 3fa86ca7645ec9bd96af403cb9b43A  (raspberry pi dark screen)(The python script can be found via the arup stack code 2016 files manager) 

### Problem b)
It was a roundabout way of Setting the inteval window for a scan and syncing it with the bluetooth transmitter. 
(problem solved), the OCF_LE_SET_SCAN_PARAMETERS

Python Bluez documentation (To accurately change the 'advertising interval')
