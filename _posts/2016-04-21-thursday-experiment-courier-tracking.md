---
layout: post
title: Thursday Experiment - courier tracking
date: 2016-04-21 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Hanging at Arup with Jorke!
# 110 marker 1  234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: doge.jpg

author: alex
---

Today we spent time with Jorke to get the [Courier iBeacon Implementation](http://www.makeandbuild.com/blog/post/courier-ibeacon-implementation) up and running. We managed to get it temporary up and running. We may be able to use this database to calculate triangulation to transform from proximity.

<div class="image-square-grid">

<div class="image-square-grid-box-one-third">

![Jorke explaining]({{ site.baseurl}}/assets/thursday-experiment-courier-tracking/explaining.jpg)

</div>

<div class="image-square-grid-box-two-third">

![Photo of the run]({{ site.baseurl}}/assets/thursday-experiment-courier-tracking/running.jpg)

</div>
</div>

### Getting it running

From Annisa's experiment on Wendnesday, we managed to overcome the existing problems of the dependencies. Through trying out several methods we [reinstalled](https://learn.adafruit.com/node-embedded-development/installing-node-dot-js) a fresh `node` and `node.js`, then installed the `npm` dependencies.

The site also has a simple secure access, through username and password. Its foundations are a great design which can help make the data we track secure. The website interface needs updating from the original source code, simple HTML and CSS changes will fix it. Furthermore, an interactive search map for individuals will be needed.

The sound script seems to depend on the proximity and distance measurement, however it appears to read every instance and plays the sound file without delay. We need to change it in the future so that there aren't any problems with the distances. This video explains the problems involved.

<iframe width="560" height="315" src="https://www.youtube.com/embed/YAPdqCj7wDo" frameborder="0" allowfullscreen></iframe>

### Thoughts

Tracking data is uploaded on MongoDB, it may not be necessary as we don't have changing variables uploaded. MySQL might be a good alternative, but relationships are not necessary. More research is more necessary to justify the purpose.

Jorke suggested we transform the script into Python from Javascript using a simple existing script I put together which scans for Bluetooth Low Energy. Now both Annisa and I can update the script without learning a new language! It also is a lot clearer and simpler.

### Future developments

Some thinks that we need to do to develop on this experiment:

- Bleacon does't work 100%
- Some dependencies still unmet - causing the script to fail at times
- Estimote does not split
- Still need to work out how the proximity is measured
- Formatting the iBeacon is not correct (0tx power)

![Thats so doge]({{ site.baseurl}}/assets/thursday-experiment-courier-tracking/doge-tracking-test.jpg)