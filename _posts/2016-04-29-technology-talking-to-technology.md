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

We discussed data collection techniques and formulated a general outline for information management for the Beacon. Basically, what we agreed with was a One table (all data collection point) which the Beacon speaks too and can call specific values when necessary. 

Explanded data flow
**bold** Beacon --> **bold** RBP --> **bold** Server --> **bold** QuiryEngine --> **bold** Webfront --> **bold** User 

Note: These flows can be broken into clusters. for example

**bold** (Beacon --> **bold** RBP) 
**bold** (Server --> **bold** Quiry-Engine) 
**bold** (Webfront --> **bold** User) 

This means that b datauilding the appropriate technology structure to support this flow of data does not have to be done in a linear way. 
Using 'dummy data' for testing means each component can be developed simultaneously.

### Seperation of concerns 
dont know enough - understand th ewhole thing as a lump 
Toaster strong sepration of concerns 

--> listeners for beacons moving around
--> emitter (I have heard this) message to the data base
--> listener on the server that gathers 

client--> data base  

raaspberry pi and the reader --> webclient(mongos) the website is wanting to know things to display (place kiten??) is a good example api 
http://placekitten.com/  
json data transfer 


### New learnt commands 

--> npm install (Installs the NPM) Read: http://raspberrypi.stackexchange.com/questions/4194/getting-npm-installed-on-raspberry-pi-wheezy-image
--> sudo python testblescan.py | grep d0d (insert transmitter unique identifier) eg. 3fa86ca7645ec9bd96af403cb9b43A 
 
### API documentation
--> sock.getsockopt (description) 

### Issue in experiment 'Hello' 

There are many issues with the experiment but the following outlines our most pressing concerns. 
Problem a)
We managed to get the experiment up and running again but issues in syncronising the transmitting signals of the 'SticknFind' bluetooth emitters with the recieved RBP readers are still occuring. 
We believe it has something to do with the Bluez documentation which we will try and play with over the weekend. 

Further work: Read up on Bluex documentation and find out the problem in the parametrics. 

