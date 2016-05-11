---
layout: post
title: Blue tooth scan check and commit errors
date: 2016-05-10 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: steps for Getting RBP up and running and receiving signals from the 'Estimote' sticker

author: tiara
---

# Setting up for blue tooth LE scanning

Thought this could be a good starting point for everyone to add anything I have missed, but basically the process for getting the RBP to read for blue tooth(anything).

### Test if it can scan 

If you have downloaded the latest version of Raspian, then Blue tooth should already be installed. To test wither the RBP can scan for Blue tooth, type in the following command 

~~~ bash
sudo hcitool lescan
~~~

This will tell you if the Pi is scanning of not. The first time I tried, I got this runtime error: 

~~~ bash
active running
sap driver initialization failed 
sap-server: operation not permitted)
~~~

As long as somewhere in the output it says "active running" in a friendly green, your OK, but if you want to get rid of the warning, try

~~~ bash
ExecStart=/usr/lib/bluetooth/bluetoothd---noplugin=sap
~~~

That should clear up the error, then try the sudo lescan command again. 

If in the case you don't see the 'active running' try  install bluez, and update the RPI then try the command again. 

or 

reboot. 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/have-you-tried-turning-it-off-an-on-again.jpg)

You should start receiving something like this

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/its-scanning.jpg)

# Commit to Github through desktop: error

If you're like me and came across this error

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/commit-error-1.png)

or 

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/commit-error-2.png)

Then have no fear! Sometimes Hithub/sublime have some buggy thingys so there is a solution. ***ps: kudos to Alex for talking me through this one.***

### Step One: Save your current files 

If your working on a current file, take those files out of the github repository and store them somewhere close like your desktop.

### Step 2: DELETE EVERTHING!

Don't worry, your github files will be safe online, at least the files that you last synced. 

### Step 3: Clone the repository again

Once you have cloned and saved your files back into the git repository, your set to commit your new files. 

# Moving forward

The next phase is to implement the python script that will locate the BLE 'estimote' sticker. As well as this, we also have to formulate the web-front end of things through the set-up of the MongoDB. 



