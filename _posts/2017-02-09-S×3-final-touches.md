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

The S×3 is very close to being ready to plug in to the Raspberry Pis and collecting data!

## Current state
- All have been bootloaded and are programmable via USB on my windows 10 machine.
- A python script has been written to accept data over USB and print to file via stdout.
- Alex has assisted in setting up scripts (python and shell) and my own AWS server to collect the sensor data from the RPis

## What's left?
_Calibration of the analogue sensors is needed_

- Temperature
    + Currently the function ([Steinhart-Hart Equation](https://en.wikipedia.org/wiki/Steinhart%E2%80%93Hart_equation)) which transforms the ADC thermistor resistances to temperature is giving ~37°C. I have a feeling this is incorrect...
    + This **slight** discrepancy is possibly due to incorrect coefficients being used in the equation, I assumed the values from the [Vishay datasheet](http://www.vishay.com/docs/29049/ntcle100.pdf) would give the correct temperature.
    + Potentially it's a linear offset (due to input impedance/voltage characteristics), but testing is needed (I've moved onto sound for now)
- Sound
    + [This](http://electronics.stackexchange.com/questions/96205/how-to-convert-volts-in-db-spl) post in electronics stack exchange explains how to convert from voltage levels (or 10 bit ADC values) to a useful sound pressure level (SPL) in dB. 
    + Gain will need to be tuned for optimal sensitivity. If gain is too high the Signal to Noise Ratio (SNR) is too low, and no valuable sound info is measured. 
    + I have removed the resistors for gain and replaced them with a 1 MΩ trim potentiometer (pot) to test the effects of gain.

_Control Neopixel_
- Using blink(1)
    + [blink(1)](https://blink1.thingm.com/) is a USB controlled RGB LED using the attiny85 and a neopixel. This is very close to what we are doing, and very importantly, the project is open source with a very well documented public [github repo](https://github.com/todbot/blink1).
    + The two however are not compatible and there are a lot of things to consider. See [this post](https://digistump.com/board/index.php?topic=1194.0) to get an idea.
    + the biggest challenge will be adapting firmware to suit our needs/hardware.
- Preset control via arduino IDE
    + I can already control the NP via terminal using preset conditions.
    + An odd error occurs

_Test server upload_
- Alex has adapted [code](https://github.com/xenria/Testserver2) for the badges to work with the S×3
