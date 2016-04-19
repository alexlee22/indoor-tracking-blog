---
layout: post
title: Cracking Estimote Stickers
date: 2016-04-19 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Drillin the numbers!
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

I attempted to understand how the iBeacons and Nearables in Estimote stickers by experimenting with the technology.

Lets look at the information we need to do indoor tracking:

- UUID
- Major
- Minor
- RSSI

Lets talk about the doge tag first, the Estimote application identifies these properties:
	
	iBeacon
		UUID: d0d3fa86-ca76-45ec-9bd9-6af4b0acc487
		Major: 61435
		Minor: 39432

	Nearables
		Nearable ID: b0acc487effb9a08
		Advertising Interval: 2000ms
		Tx: 0 dBm
		Battery Status: High
		Temperature: XX(Celcius)
		In Motion: boolean

Using `sudo hcitool lescan` these are some sample results below:

	DB:33:63:4E:9E:B4 (unknown)
	DB:2D:6B:7F:24:B4 (unknown)
	DB:48:9D:06:7E:B4 (unknown)
	DB:1E:84:15:6D:B4 (unknown)
	DB:6C:27:48:CD:B4 (unknown)
	DB:2D:4D:97:90:B4 (unknown)
	DB:5C:F5:37:7C:B4 (unknown)
	DB:5C:F5:37:7C:B4 (unknown)
	DB:5C:F5:37:7C:B4 (unknown)
	DB:5C:F5:37:7C:B4 (unknown)

`DB:5C:F5:37:7C:B4` seems to appear multiple times, especially when moving the device, could be the accelerometer. `DB:XX:XX:XX:XX:B4` is the patten identified. The Unique Identifier seems to fluxuate the middle 4 values. It could be reading the values of iBeacon, Bluetooth Low Energy (BLE) and/or Nearables.

When symontatinsuly using `hcidump` the results show the details:

	> 04 3E 2B 02 01 03 01 B4 7E 06 9D 48 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 AA B1 35 FF 
  	FF BE 43 02 53 B1 
	> 04 3E 2B 02 01 03 01 B4 6D 15 84 1E DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 A8 51 B2 FF 
  	FF BE 43 02 63 B6 
	> 04 3E 2A 02 01 03 01 B4 CD 48 27 6C DB 1E 02 01 04 1A FF 4C 
  	00 02 15 D0 D3 FA 86 CA 76 45 EC 9B D9 6A F4 B0 AC C4 87 EF 
  	FB 9A 08 BF B3 
	> 04 3E 2B 02 01 03 01 B4 90 97 4D 2D DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 A8 B1 35 FF 
  	FF BE 43 02 73 AD 
	> 04 3E 2B 02 01 00 01 B4 7C 37 F5 5C DB 1F 02 01 06 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 A7 51 F2 A0 
  	3F C9 00 43 53 B5 
	> 04 3E 0C 02 01 04 01 B4 7C 37 F5 5C DB 00 B6 
	> 04 3E 2B 02 01 00 01 B4 7C 37 F5 5C DB 1F 02 01 06 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 A7 B1 75 B3 
  	7F 7F 00 43 73 AF 
	> 04 3E 0C 02 01 04 01 B4 7C 37 F5 5C DB 00 AF 
	< 01 0C 20 02 00 01 
	> 04 0E 04 01 0C 20 00 


We can find the RSSI values, however how do we get the major and minor values?

I attempted to deconstruct the numbers












Also I did laundry..
