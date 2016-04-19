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

I attempted to understand how the iBeacons and Nearables in Estimote stickers by experimenting with the technology. Lets look at the information we need to do indoor tracking:

- UUID (Universally unique identifier)
- Major
- Minor
- RSSI

Lets talk about the doge tag first, the Estimote application identifies these properties:

<div class="image-square-grid">

<div class="image-square-grid-box-half">
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
</div>

<div class="image-square-grid-box-half">
<iframe src="//giphy.com/embed/ZJqPtMjmHbNN6" width="100%" height="300px" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>
</div>

</div>

The last 8 values of iBeacon and first 8 values Nearables are identical.

Using `sudo hcitool lescan` these are some sample results below:

	> DB:65:A2:FD:A2:B4 (unknown)
	> DB:0D:62:FB:AC:B4 (unknown)
	> DB:63:88:20:A5:B4 (unknown)
	> DB:67:D7:F9:C8:B4 (unknown)
	> DB:42:66:78:3C:B4 (unknown)
	> DB:34:65:37:6D:B4 (unknown)
	> DB:7E:3F:72:1B:B4 (unknown)
	> DB:7E:82:8B:DA:B4 (unknown)
	> DB:6F:25:58:77:B4 (unknown)
	> DB:73:16:06:40:B4 (unknown)

	> DB:33:63:4E:9E:B4 (unknown)
	> DB:2D:6B:7F:24:B4 (unknown)
	> DB:48:9D:06:7E:B4 (unknown)
	> DB:1E:84:15:6D:B4 (unknown)
	> DB:6C:27:48:CD:B4 (unknown)
	> DB:2D:4D:97:90:B4 (unknown)
	> DB:5C:F5:37:7C:B4 (unknown)
	> DB:5C:F5:37:7C:B4 (unknown)
	> DB:5C:F5:37:7C:B4 (unknown)
	> DB:5C:F5:37:7C:B4 (unknown)

`DB:5C:F5:37:7C:B4` seems to appear multiple times, especially when moving the device, could be the **accelerometer**. `DB:XX:XX:XX:XX:B4` is the patten identified. The Unique Identifier seems to fluxuate the middle 4 values. It could be reading the values of iBeacon, Bluetooth Low Energy (BLE) and/or Nearables.

When symontatinsuly using `hcidump` the results show the details:

	> 04 3E 2B 02 01 03 01 B4 A5 20 88 63 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 AF 51 B2 00 
  	00 BE 42 02 53 B1 
	> 04 3E 2B 02 01 03 01 B4 C8 F9 D7 67 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 AD B1 35 00 
  	00 BE 42 02 73 AD 
	> 04 3E 2A 02 01 03 01 B4 3C 78 66 42 DB 1E 02 01 04 1A FF 4C 
  	00 02 15 D0 D3 FA 86 CA 76 45 EC 9B D9 6A F4 B0 AC C4 87 EF 
  	FB 9A 08 BF B5 
	> 04 3E 2B 02 01 03 01 B4 6D 37 65 34 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 AD 51 B2 FF 
  	FF BE 42 02 63 B7 
	> 04 3E 2B 02 01 03 01 B4 1B 72 3F 7E DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 AD B1 35 FF 
  	FF BE 42 02 73 AD 
	> 04 3E 2B 02 01 03 01 B4 DA 8B 82 7E DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 AB 51 B2 FF 
  	FF BE 42 02 73 AF 
	> 04 3E 2A 02 01 03 01 B4 77 58 25 6F DB 1E 02 01 04 1A FF 4C 
  	00 02 15 D0 D3 FA 86 CA 76 45 EC 9B D9 6A F4 B0 AC C4 87 EF 
  	FB 9A 08 BF B5 
	> 04 3E 2B 02 01 03 01 B4 40 06 16 73 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 AB B1 35 FF 
  	FF BE 42 02 73 B0 
	> 04 3E 2B 02 01 03 01 B4 9E 4E 63 33 DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 83 AA B1 35 FF 
  	FF BE 43 02 53 B1 
	> 04 3E 2B 02 01 03 01 B4 24 7F 6B 2D DB 1F 02 01 04 03 03 0F 
  	18 17 FF 5D 01 01 B0 AC C4 87 EF FB 9A 08 04 01 AA 51 B2 FF 
  	FF BE 43 02 63 B4 

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

Three patterns are identified:

- The first patten is within values `1, 2, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 17`. Each of these have 46 values. All the values start with `04 3E 2B 02 01 03 01 B4`, the same starting 8 values. 
- The 2nd patten happens within `3, 7, 13`. Each of these have 45 values. The ID is identified from values 36-43. All the values start with `04 3E 2A 02 01 03 01 B4`, very identical to the first patterns (3rd pattern is changed from 2B to 2A). Possible to be iBeacon.
- The 3rd patten is random. It happens when the device is shaken, values are at `16, 18, 19, 20`. It has really random patterns. Might be accelerometer.

![iBeacon and Nearables identification]({{ site.baseurl }}/assets/cracking-estimote-stickers/matching.png)

Therefore we can see that they are transmitting the both iBeacon and Nearable data at the same time. This makes it very confusing to filter the data from `sudo hcitool lescan` and `hcidump`. We can assume that the following is:

1. Nearable
2. iBeacon
3. Accelerometer

We can attempt to get the RSSI when we connect using `hcidump`. I will attempted to deconstruct the numbers this week into a proper format.
