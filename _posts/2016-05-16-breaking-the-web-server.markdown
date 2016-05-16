---
layout: post
title: breaking the web server
date: 2016-05-16 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: whoopsies but okay now
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Friday/Saturday morning: Finally finished the ethics application, whether it gets accepted is another thing. Main thing was to keep it broad and general to reduce constraints and limitations when carrying out our experiments. Although, it may sound too brief. Worst thing that can happen is they say no. Rest of Saturday, I died. 

Sunday: I rose from the dead. Tried to aim to do what I said in the last post - tried to add a new column. First test was on the beacon page. I basically went and modified all the scripts that had any correlation with the beacon page and commented out the audio variables. I tried to mimick the input of colour the same as the other parameters (like name, uuid etc). Whilst it did work, the information or 'text' that was suppose to come up on the page didn't. 

![colour_tab]({{ site.baseurl }}/assets/colour_column_test/colour_tab.png)
![colour_input]({{ site.baseurl }}/assets/colour_column_test/colour_input.png)

Then I broke it and I didn't know where it broke. 

Because I made all these changes manually in the terminal, git pulling didn't work as it was already the latest version. Copying and pasting didn't work either so I manually had to go through all the code one-by-one. At least I knew what I touched, so I knew what I had to check but there was a lot of it. 

After all that, I tried again and didn't succeed. The information from mongodb still displayed the audio parameter. 

~~~
> db.beacons.find()
{ "name" : "test123", "uuid" : "test123", "major" : 123, "minor" : 123, "_id" : ObjectId("57393b53d3a4b92610d145d6"), "audio" : { "filename" : "big_brain.wav" }, "__v" : 0 }
~~~

Then I gave up. I'll let this one slide.....for now. 