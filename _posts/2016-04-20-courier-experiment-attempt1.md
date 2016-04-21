---
layout: post
title: Courier Experiment 
date: 2016-04-20 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: First Attempt
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Wanted to see how far I would get when trying to replicate the Courier ibeacon implementation experiment. <b>Long story short, RPI = 1, Annisa = 0. </b>

The node-library specified that it needed bleno and noble to run the code on the RPI. Attempted to install the prerequisites and the prerequisites for the prerequisites.
Next, I installed Bleacon which is used to run the node.js library. However, as shown in the image, there are a lot of errors that happen during the install. 

![failed attempt at installing bleno]({{ site.baseurl }}/assets/bleno1.png)

However, when trying to execute any of test.js codes, the results had shown that there were missing modules. 

I used npm list to show any anymore unmet depenencies that may stop this process. As shown in the image below, bleacon was not installed properly due to the errors that were showing during the install of noble and bleno. When attempting to install the unmet dependencies individually..more errors.

![npm list]({{ site.baseurl }}/assets/npm list.png)

Then I didn't get very far after that. One thing I noticed is that there is a version of node already in Raspbian Jessie. Node has progressed since then and one thing I didn't do is upgrade the version. 
(I also signed up for the Amazon Web Service, and also used sudo and no sudo to install all and did not make a difference).
