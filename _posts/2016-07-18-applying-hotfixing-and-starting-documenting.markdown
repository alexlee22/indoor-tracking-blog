---
layout: post
title: Applying Hotfixing and Starting Documenting
date: 2016-07-18 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Funny Sub-Title
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Hotfix-in

From the last Post it, was identified that the size of the database was causing problems with the query. I researched some query methods to further help reduce this, however functions including `.stream` could not be applied to aggregate queries. It turns out that aggregate is already an inbuilt functions to reduce the size of the search field using parameters such as $limit and $sort. With this in mind we needed to look at more ways of reducing the size of the collection.

So I put an incremental counter system which will extract the collection each day at 12am (midnight, an assumed time which is less busy). Each dump fill would be extracted into a JSON document containing all documents from the time period, with the file name at the time and date it was extracted (unique parameters for names) eg. 16-10-01-11-05-30 would be the 1st of October 2016, at 11:05am with 5seconds past. The whole system was initially designed through `@reboot` and `crontabs`, however there was fear in “bricking” the server, where it would reboot so fast changes could be applied. I had a short conversation with Dan and he said it's probably not a 100% bad solution to reduce the amount of time between each incremental to 1 hour. Not completely a scalable approach but it will work for now, it would mean more collections with smaller total sizes.

There's still a few problems with solving data memory issues. If the server crashes, the script can't detect that it has crashed, meaning the uploaded data will be sent to the next periods making the next one larger, creating a snowball effect.

### Documentation

I started to write the documents in greater detail and added a section on the git repository to add and explain the changes I made to the JavaScript. I also drew a map (in progress) of how the data is sent through queries to a person. The challenging will be making it possible to explain to someone technologically impaired. 

![Diagram]({{ site.baseurl }}/assets/diag.jpg)
