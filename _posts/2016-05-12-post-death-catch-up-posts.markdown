---
layout: post
title: Post Death Catch-up Posts
date: 2016-05-12 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Oopsies, here they come!
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Here comes the posts...

Yesterday was a day filled with love and happiness with Revit - modelling an existing building all day, fun!

Got home and followed a tutorial with Node, Express and MongoDb. Can be found [here](http://cwbuecheler.com/web/tutorials/2013/node-express-mongo/). Mainly was just a way for me to understand what to do when it comes to it. Have completed 62% of CodeSchool for MongoDb. Whilst I was fairly confident when doing queries from CodeSchool, I didn't really grasp how I would implement and push this information into web. This tutorial was pretty good as it showed the full stack in jargon that was easy to understand and worked.
Tutorial was on Windows 8 - however, tried to do everything on the Raspberry and worked so wonderfully. Would show pictures, but the pictures look exactly the same as the pictures on the website. 

I'm trying to keep up my code skills, as I feel like theres going to be a lot of it so always willing to try and learn! Might not succeed but won't hurt to try it out myself! 

Today, had tutoring - more fun!

Went to ARUP. Set up 1 out 2 Raspberry Pi's near the workshop area - plan to steal one of the RPI's from BVN and set it up at BVN next week. I then spent majority of the day trying to understand what the courier-dev repo was by going through all the code. Got a somewhat understanding of it all - enough to keep me alive and navigate around to see what can be touched if I ever want to touch anything. 
So I wanted to try pushing things from Mongodb onto the web server. Things meaning the static beacon information. As the server is being kept alive from AWS that isn't mine, needed to ssh into it. 

Commands on a mac for future reference - 

~~~
$ chmod 600 ~/Downloads/arupstudents.pem 
$ ssh -i ~/Downloads/arupstudents.pem ubuntu@52.63.188.123
~~~
~~~
$ mongo

> show dbs
courier-dev 0.140625GB << thats our db
local 0.078125GB
test  (empty)

> use courier-dev

> show collections
agents
beacondetections
beacons << one I was trying to fill out
engines
system.indexes
users

> db.collections.find()
> db.beacons.insert({"name": "Bike", "uuid": "07B5BAE7", "major":60467, "minor": 52091})

> db.beacons.find().pretty()

{
  "_id" : ObjectId("57342d8bc05735535d94203d"),
  "name" : "Bike",
  "uuid" : "07B5BAE7",
  "major" : 60467,
  "minor" : 52091
~~~
{: .language-ruby}

![beacon mongotest]({{ site.baseurl }}/assets/post-death-post/beacon_mongodb_bike.png)

Then I tried inputting the other beacon information in. Not sure the best way. Honestly did it all manually with trusty copy and paste. [beacon table](https://docs.google.com/spreadsheets/d/1ZCl6oKogn0ZApxo5SwLHUrwjSq5bcUY1cGMsfjwCaME/edit?usp=drive_web)

~~~
> newStuff = *insert new stuff*
> db.beacons.insert(newStuff)
~~~

![beacon everything]({{ site.baseurl }}/assets/post-death-post/beacon_mongodb_everything.png)

So got that working, cool. But audio isn't really any use to us, well for now maybe. If we really want to listen to 'hello' then I guess we can put it back.

In this script - [beacon_model.js](https://github.com/ArupAus/code2016/blob/master/courierbeacons/Courier/server/models/beacon.model.js)

~~~
'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var BeaconSchema = new Schema({
    name: String,
    uuid: String,
    major: Number,
    minor: Number,
    properties: Schema.Types.Mixed,
    active: Boolean
    //audio: { 
        //filename: { type: String }
    }
});
~~~

wanted to comment out the audio and filename - to which I did. However, when I pulled the git repo, no changes were made, already up to date...strange - because I did modify the script.

~~~
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

  modified:   client/app/app.css
  modified:   client/index.html
  modified:   server/config/environment/development.js
~~~

Turns out the web server on AWS is running from the original Make & Build repo than our ArupCode one.

~~~
ubuntu@ip-172-31-7-225:~/Courier/.git$ cat config
[core]
  repositoryformatversion = 0
  filemode = true
  bare = false
  logallrefupdates = true
[remote "origin"]
  url = https://github.com/makeandbuild/Courier.git <<
  fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
  remote = origin
  merge = refs/heads/master
~~~

So been advised to change the script from the terminal. 

~~~
$ ls
bower.json  Gruntfile.js   node_modules        README.md
client      karma.conf.js  package.json        server
e2e         LICENSE        protractor.conf.js  wiki
~~~

~~~
/Courier/ $ cd server
/Courier/server$ cd models
/Courier/server/models$ nano beacon.model.js <<< comment out audio lines of code 
/Courier/server/models$ mongo <<< input beacons again
~~~

Was also trying to add a new column, get rid of the audio one and replace with colour of the beacon - yes someone may argue not necessary, im learning by doing! Haven't touched it too much. But thats the extent what happened today. 
