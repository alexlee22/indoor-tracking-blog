---
layout: post
title: Understanding Socket.io
date: 2016-07-26 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Listening for Beacon Detections + Preperation for Beta Test
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---
### What is Socket.io

Simply it is an event-based bi-directional communication layer for real-time web applications, through the use of JavaScript and Node. It allows connection between client (user) and server (web) by using event driven approach, ie. when triggered by that, do this than this. Clients can sent packets of information to the server which helps to interact fast.

### Why even

How does this relate to the website and indoor tracking? It enables us the ability to upload tracking information from the raspberry to the MongoDB through the site in real-time through a website/network IP. Node.js listens for any data, messages or requests on a specific port and IP address, in which the client can send some data to that port. When the port has picked up a listen, it will run a list of commands to input the detection into the database.

The Raspberry Pi has a push command which sends the information found through BLE to the server online:

        bresponse = requests.post('http://52.62.31.144:9000/api/beacondetections', data={JSON DETECTION DATA}, headers={"x-access-token": token}, timeout=5)
        
        - The address is the location of where our site is listening, and the port (in this case its `9000`) is lessening for any posts. Posts of information will trigger the api/beacondetections
        - The `x-access-token` is an authentication part which is done with JSON, some more information can be found here [Link](https://www.sitepoint.com/using-json-web-tokens-node-js/)
        - Timeout will fail the event if a response has not being sent back to the Raspberry Pi. This is to ensure that it doesn't run forever in an attempt to check if the servers online, possibly missing other detection events.

The JSON file which is sent to Node, will be input with some commands.

### Inside the Server

The function below will return a detection that has being uploaded on a successful upload to the Database-BeaconDetections collection.

        #Extract from "server/dao/beacon-detection.dao.js"
        
        exports.createDetectionsPromise = function (detections) {
            var promise = new mongoose.Promise;
            BeaconDetection.Create(detections, function(){ 
                    //Do Checks
                    savedDetections.push(savedDetection);
            });
            return promise;
        }

The function is run from this other function. Which uploads multiple beacons.

        function createDetections(beaconDetections, timeAsMs) {
            var promise = when(beaconDetectionDao.createDetectionsPromise(beaconDetections));
            // Do checks
        }

Which is use in both `function createDetectionsOneByOne(beaconDetections) { ... }`. The above is also identical to `function createDetection(beaconDetection, timeAsMs) { ... }` for a single beacon.

