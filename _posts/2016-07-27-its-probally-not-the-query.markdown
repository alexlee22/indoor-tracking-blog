---
layout: post
title: Its Probaly Not the Query
date: 2016-07-28 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: When it can't even one document
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---


### The Problem

Node.js currently crashes whe attempting to load the page with a server that is greater than one million detections. It seems to have trouble reading the large detections file when searching for the query. However after investigations today, it may not be a factor of bad query design, but rather how the structure is designed.

### Query as a few fuction

Thinking the original query would cause problems with storing the data as a cashe, I attempted to seperate the query in its own functions to help remove some of the data load. Simply, I just cut it out, put it in a function and called it in its place. It still used the same structure of `doThis.then.DoThis...` but it should have removed some of the leftover data. Didn't work. Also tried usig `lean()` which helps reduce the size.

### Query Repetitive Load

I attempted to use a waterfall structure instead of mutiple of query (also known as Callback Hell) so that the data that was searched for in the query could be emptied at the end of each return. Because the original query structure is designed to be developed to `doSomething.then.dosomeThing.then.doSomething.then.etc...` I was to belive that thed ata would only be emptied at the end of each completio of a promise. Half way through design the waterfall structure, the server crashed at the first query search, making me belive that a waterfall structure would't even work, considering the first query had 1 document in it.

### Connection Settings

In 'app.js', I went through the files for setting up the server `mongoose.connect` playing around with the configeration. Didn't work. There was some other things such as turing of the sample inputs (seeds).

### QueryStream

The `stream()` idea was a result of an idea where the caching of the `BeaconDetections` would cause the server to crash due to the large size of the collection. Mongoose's stream goes through each document individually, just like a `forEach` function. However again when the query run, the server crashed after a shot period of time. I also attempted to turn the stream off to clean the stored data, but it also had no effect.

### No Query Function

This was just to see if by running literally nothing, if the query causes the server to crash. *It crashed.*

### Model.create() vs Model.collection.insert()

The detections are created and put into the the `beaconsdetections` collection by using the function `create()` which is apparently worse the using `.collection.insert()` In the `beacon-detection.dao.js` file there are two functions which insert the documents into the collection: `createDetectionsPromise` for multiple and `createDetectionsPromise`. Simgular was mosly run due to the strucutre of the uploads (one by one set by the RPi). I verified both to see if they where working however it still crashed when the webpage was run without a query. This idea came from this [StackOverflow Post.](http://stackoverflow.com/questions/16726330/mongoose-mongodb-batch-insert)
