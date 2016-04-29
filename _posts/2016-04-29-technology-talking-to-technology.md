---
layout: post
title: Technology talking to technology
date: 2016-04-29 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: Data base plan and information flow

author: tiara
---

Just a simple recap of the proposed data collection

### Technology architecture 

We discussed data collection and agreed to use an overall tabled that acts like a general outline for information management for the Beacon. Basically, what we agreed with was a One table (all data collection point) which the Beacon speaks too and can call specific values when necessary. 

#### Explanded data flow
**Beacon** > **RBP** > **Server** > **QuiryEngine** > **Webfront** > **User** 

Note: These flows can be broken into clusters. for example

1. (Beacon > RBP)

2. (Server > Quiry-Engine)

3. (Webfront > User)

#### This means that building the appropriate technology structure that supports this flow does not have to be done in a linear way. Using 'dummy data' for testing means each component can be developed simultaneously.

### Seperation of concerns 

Basically, if you don't know everything, then breaking things up and telling people to figure out other stuff while you've working on stuff yourself is kinda how you do team work and it generally gets things done quickly. 

### Displaying the information

After the data has gone somewhere and is being recorded, we have to think about how we are going to display things and make them pretty. The webclient (mongos) just acts like a storage facility, but we still need a front desk with a receptionist. It maybe worthwhile to use a processer like **json data transfer**, fr example, the one available on http://placekitten.com/  

### New learnt commands 

1. npm install (Installs the NPM) Read:  http://raspberrypi.stackexchange.com/questions/4194/getting-npm-installed-on-raspberry-pi-wheezy-image

2. sudo python testblescan.py | grep d0d (insert transmitter unique identifier) eg. 3fa86ca7645ec9bd96af403cb9b43A 

3. sock.getsockopt (description) 


