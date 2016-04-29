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

#### Explanded data flow
**Beacon** > **RBP** > **Server** > **QuiryEngine** > **Webfront** > **User** 

#### Note: These flows can be broken into clusters. for example

###### **(Beacon > RBP)**
###### **(Server > Quiry-Engine)** 
###### **(Webfront > User)**

#### This means that b datauilding the appropriate technology structure to support this flow of data does not have to be done in a linear way. Using 'dummy data' for testing means each component can be developed simultaneously.

### Seperation of concerns 

Basically, if you don;t know everything, then breaking things up and telling people to figure out other stuff while you've working on stuff yourself is kinda how you do team work and it generally gets things done quickly. Basically, the entire data flow can be summarised intothese three general commands:

####### The listeners for beacons moving around
####### The emitter (I have heard this) message to the data base
####### The listener on the server that gathers information and does something with it

### Displaying the information

After the data has gone somewhere and is being recorded, we have to think about how we are going to display things and make them pretty. The webclient (mongos) just acts like a storage facility, but we still need a front desk with a receptionist. It maybe worthwhile to use a processer like **json data transfer**, fr example, the one available on http://placekitten.com/  

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

