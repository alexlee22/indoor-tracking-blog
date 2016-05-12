---
layout: post
title: MongoDB Setup for Raspberry Pi
date: 2016-05-12 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: Running through the tutorial for MongoDB Setup for Raspberry Pi and other random stooof. 

author: tiara
---

### Setting up MongoDB, installing NPM and creating npm dependencies 

Following this tutorial. http://cwbuecheler.com/web/tutorials/2013/node-express-mongo/

Pretty straight forward. Had to translate the commands to RBP console thingys. I have to add more, but I accidently closed the console before I saved them all. Will run through the tutorial again and add them again later. 

### List of commands 

To install npm
~~~ bash 
sudo apt-get install npm
~~~
install express generator 
~~~ bash
sudo npm install -g express-generator 
~~~


### General Benefits of using Node/NPM 

NPM (Node package manager) installs the dependencies to run node. So whats the big fuss? 

Found this explanation off: http://stackoverflow.com/questions/1884724/what-is-node-js

- Web development in a dynamic language (JavaScript) on a VM that is incredibly fast (V8). It is much faster than Ruby, Python, or Perl.

- Ability to handle thousands of concurrent connections with minimal overhead on a single process.

- JavaScript is perfect for event loops with first class function objects and closures. People already know how to use it this way having used it in the browser to respond to user initiated events.

- A lot of people already know JavaScript, even people who do not claim to be programmers. It is arguably the most popular programming language.

- Using JavaScript on a web server as well as the browser reduces the impedance mismatch between the two programming environments which can communicate data structures via JSON that work the same on both sides of the equation. 

- Duplicate form validation code can be shared between server and client, etc.

### Courier database(its a start!)

http://www.makeandbuild.com/blog/post/courier-ibeacon-implementation

This sort of has the layout we are working towards, just a matter of adding the individual Beacons to the site, then playing with there location and adding a triangulation script which will give us the location of that beacon. Have I missed anything?


### Moving Forward:

***General:***schema design in MongoDB

***Mongo** redo the tutorial/codeschool and then record all the steps within this post.

Hand In Ethics application: Tomorrow (eeek!)

Working and developing the Courier ibeacon stack,
http://www.makeandbuild.com/blog/post/courier-ibeacon-implementation  (but this can only be done once the mongodb has been set up within all RBP). 


