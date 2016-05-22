---
layout: post
title: learning mongoose
date: 2016-05-12 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Trying to make sense of it all
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

Continuing from my post last wednesday, I tried to make sense using mongoose and learn how to push it live for times when we need to add more information to our web server. I watched this tutorial [here](https://www.youtube.com/watch?v=5e1NEdfs4is).

I tried to chop and change what i thought was necessary to run the data on the localhost. 

~~~
app.js

var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var mongoose = require('mongoose');
var Test = require('./models/Test.models');

var routes = require('./routes/index');
var users = require('./routes/users');

var db = 'mongodb://localhost/test';

mongoose.connect(db)

var app = express();

app.get('/', function(req,res) {
  res.send('happy to be here');
});

app.get('/test', function(req, res) {
  Test.find({})
  .exec(function(err,result) {
   if (err) {
    res.send('error has occured');
   }else {
    res.json(result);
   }
  });
});
~~~~

~~~
Testmodels.js

var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var TestSchema = new Schema({
   agentId: String,
   time: Date,
   uuid: String,
   major: Number,
   minor: Number,
   tx: Number,
   rssi: Number
});

module.exports = mongoose.model('test', TestSchema);
~~~

These are the two files I tried to mess around with to get it working. When I tried to push data in the mongodb, nothing had showed up, except for '[]'. Couldn't get it working.

Last friday, after the meeting, stayed at ARUP with the digital team to try push Alex's query live onto our existing web server. It worked on the localhost - this code is also updated on our code2016 repo. However, was not able to push it into our web server. ARUP said that it would probably be worth trying to update the server to our code2016 one rather than trying to continue hacking in case that it might break it. So we are to wait till as soon as we can get our asses back to ARUP!