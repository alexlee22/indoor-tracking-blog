---
layout: post
title: S×3 Final Touches
date: 2017-02-09 10:44:59
type: post
published: true
status: publish
categories: []
tags: []
description: Understand what is left to be finished so that data collection can start
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: In this post, understand what is left to be finished so that data collection can start
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: aiden
---

#S×3 Final Touches
The S×3 is very close to being ready to plug in to the Raspberry Pis and collecting data!

##Current state
- All have been bootloaded and are programmable via USB on my windows 10 machine.
- A python script has been written to accept data over USB and print to file via stdout.
- Alex has assisted in setting up scripts (python and shell) and my own AWS server to collect the sensor data from the RPis

##What's left?
_Calibration of the analogue sensors is needed_
- Temperature
    + currently the function ([Steinhart-Hart Equation](https://en.wikipedia.org/wiki/Steinhart%E2%80%93Hart_equation)) which transforms the ADC thermistor resitances to temperature is giving ~37°C. I have a feeling this is incorrect...
    + This **slight** discrepancy is possibly due to incorrect coefficients being used in the equation, I assumed the values from the [Vishay datasheet](http://www.vishay.com/docs/29049/ntcle100.pdf) would give the correct temperature.
    + Potentially it's a linear offset, but testing is needed
- 

