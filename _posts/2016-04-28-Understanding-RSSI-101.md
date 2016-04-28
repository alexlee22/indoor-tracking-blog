---
layout: post
title: RSSI and TxPower 101
date: 2016-03-27 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: Title says it all
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Whoops, playing catchups with this blog.

So all us three and Jorke did some more hacking with the Courier implementation. When running the le scan of the estimote stickers, one question that was raised was 'thats weird...how come the number doesn't go further than -100 RSSI?'

Did some general reading. Most of it is probably known by everyone (yes i know assuming is bad) but wanted to know anyway.

Some general facts:
Signal strength Tx Power and RSSi are used to measure the radio signal strength.

<b>Received Signal Strength Indicator (RSSI)</b>

Measurement of how well your receiver can hear a signal from your beacon – but has no absolute value. This is a measurement that is subtracted by environmental signal interference that may occur during the process. 

<b>Transmit Power (Tx Power)</b>

Specifies the strength of the signal that the beacon produces during the times it is transmitting signals. Increasing the tx power will increase accuracy of results. Lower setting means the signal will not transmit as far. This is measured in decibels per miliwatt (dBm).

<b>Max RSSI values</b>

The RSSI is a relative measurement that is mostly defined by each chip manufacturer. There is no standard relationship between RSSI reading and chipsets. For example, Atheros WiFi chipset measures RSSI on values between 0 (no signal) and 60 (maximum signal). In relation to our honors project, the Cambridge Silicon Radio chipset that are used have a RSSI value between 0 and 100.  

The arbitrariness of RSSI units and the way they are reported is important when the RSSI in the office place environment. The RSSI values will fluctuate even on a fixed location or distance. With the amount of interference that may occur in this particular environment setting implies RSSI might not necessarily be accurate or precise. Another issue is the variance of hardware/radio platforms. RSSI value of two different Android phones with two different chipsets will mean two different signal strengths. However this information may not be applicable if phone tracking is out. If this is the case, need to make sure the chipsets plugged into each RPI is the same and need to make sure the tx power amongst all estimote stickers are kept at a constant value to maintain consistency of RSSI values. 

![acceptable RSSI]({{ site.baseurl }}/assets/acceptable RSSI.png.)

When reading RSSI values, it will come up as ‘-‘. E.g. – 30
Does the – sign count? Yes it does 

![acceptable RSSI]({{ site.baseurl }}/assets/RSSI table.png)

The signal strengths of Bluetooth Low Energy beacons are always negative dBm values, as the transmitted network is not strong enough to give positive dBm values. Higher the RSSI value, the better the signal or the closer to 0 dBm, the better the signal is.
