---
layout: post
title: SSH into your raspberry Pi
date: 2016-05-19 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Some set up thingys you might need to know

author: tiara
---

https://www.raspberrypi.org/documentation/remote-access/vnc/windows.md

# SSH into Raspberry Pi 

1. You can enable or disable the SSH server on the Raspberry Pi (it is enabled by default). This is done using 

~~~ 
bash
raspi-config
~~~

2. Enter sudo raspi-config in the terminal, then navigate to ssh, hit Enter and select Enable or disable ssh server

# Download 

### Putty 

The most commonly used one is called PuTTY and can be downloaded from greenend.org.uk Look for putty.exe under the heading For Windows on Intel x86.
It doesn't have an installer package, it's just a standalone .exe
or 

### Tight VNC Viewer

1. Download and install on to your computer http://www.tightvnc.com/download.php

2. During installation you'll be offered the choice of Typical, Custom or Complete. You only need the VNC client and not the server, so choose Custom. Then select TightVNC Server and choose Entire feature will be unavailable. Click Next. Uncheck the option about Windows Firewall and click Next again, then Install


3. Once the installation is complete you should find TightVNC Viewer under the start menu. When you run it you'll be presented with the dialog below. You will need to enter the IP address of the Raspberry Pi followed by the screen number (:0 or :1). For example: 192.168.0.6:1

# Find IP address for raspberry pi

There are a number of ways you can grab the IP address for the RBPi, 

### ROUTER DEVICES LIST

1. In a web browser navigate to your router's IP address e.g. http://192.168.1.1, which is usually printed on a label on your router; this will take you to a control panel. 
2. Then log in using your credentials, which is usually also printed on the router or sent to you in the accompanying paperwork. 
3. Browse to the list of connected devices or similar (all routers are different), and you should see some devices you recognise. Some devices are detected as PCs, tablets, phones, printers, etc. so you should recognise some and rule them out to figure out which is your Raspberry Pi. 
4. Also note the connection type; if your Pi is connected with a wire there should be fewer devices to choose from.

### Simplest way: Most annoying

The simplest way, however is to just plug your RBPi into a computer, and then hover over the wifi icon: your IP address(dynamic) should appear: 10.10.10.54 for example. 

# SSH access: using Putty

Raspberry Pi default login and password are the following:

### Login as: pi

### Password: raspberry 


