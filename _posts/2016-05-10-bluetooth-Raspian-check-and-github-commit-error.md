---
layout: post
title: Bluetooth scan check and commit errors
date: 2016-05-10 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: steps for Getting RBP up and running and recieving signals from the estimote sticker

author: tiara
---

# Setting up for bluetooth LE scanning

Thought this coule be a good starting point for everyone to add anything I have missed, but basically the process for getting the RBP to read for bluetooth(anything).

### Test if it can scan 

If you have downloaded the latest version of raspian, then bluetooth should already be installed. To test wither the RBP can scan for bluetooth, type in the following command 

'''html
sudo hcitool lescan
'''

This will tell you if the Pi is scanning of not. The first time I tried, I got this runtime error: 

'''html
active running
sap driver initialization failed 
sap-server: operation not permitted)
'''
As long as somewhere in the output it says "active running" in a friendly green, your ok, but if you want to get rid of the warning, try

'''html
ExecStart=/usr/lib/bluetooth/bluetoothd---noplugin=sap
'''

That should clear up the error, then try the sudo lescan command again. 

If in the case you don't see the 'active running' try  install bluez, and update the rpi then try the command again. 

or 

reboot. 

<div class="image-square-grid">
<div class="image-square-grid-box-half">

![alt text](/assets/bluetooth-commit-setup-and-commit-error/have-you-tried-turning-it-on-an-on-again.jpg)

You should start receiving something like this

Image "scanninged"

# Commit to Github through desktop: error

If you're like me and came across this error

![alt text](/assets/bluetooth-commit-setup-and-commit-error/commit-error-1.jpg)

or 
![alt text](/assets/bluetooth-commit-setup-and-commit-error/commit-error-2.jpg)

Then have no fear! Sometimes Hithub/sublime have some buggy thingys so there is a solution. ***ps: cootos to Alex for talking me through this one.***

### Step One: Save your current files 

If your working on a current file, take those files out of the github repository and store them somewhere close like your desktop.

### Step 2: DELETE EVERTHING!

Don't worry, your github files will be safe online, at leaste the files that you last synced. 

### Step 3: Clone the repository again

Once you have cloned and saved your files back into the git repository, your set to commit your new files. 

# Moving forward

The next phase is to implement the python script that will lcoate the BLE 'estimote' sticker. As well as this, we also have to forulate the webfront end of things through the set-up of the MongoDB. 



