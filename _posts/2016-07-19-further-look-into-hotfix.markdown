---
layout: post
title: Further look into hotfix
date: 2016-07-19 0:00:00
type: post
published: false
status: publish
categories: []
tags: []
description: Funny Sub-Title
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

### Rxplaining the Hotfix

I spent some more time cleaning up and completing the hotfix and started to document the process. The hotfix allows us to save past data and maintain a real-time indoor tracking system. Storing the information and restting the collection allows for the server to maintain and clean the process without having to increase the memory excessivley. It is not a scable solution at this point, the query will need further looking into. Heres the documentation on the process of the shell script.

        # - NOTE - # Manditory, tells you and the computer where to access the shell back end stuff, like how you would with a python script.
        #! /bin/sh

        # - NOTE - # While loops must have a condition to be infinatley going, so while 'highnoon' is true do loop below. Just a dummy varable which will help run the script
        highnoon=true


        # - NOTE - # Make a function which can be run multiple times for restarting the server.
        RunThis ()
        {


        # - NOTE - # An old concept of removing the 'crashed' server before extracting the data from the beacondetections collection. The port in which it checks is consistant, therefore will allways remove the existing server. May be needed if more resets are occuring but is currently not active.
        #sudo kill `sudo lsof -t -i:9000`


        # - NOTE - # This section will extract the time in which the 
        # - Create a string which will consist of the "year-month-day-hour-minute-second". This will ensure that each data dump will give the time in which it is dumped and also is a unique character (unless it happens twice in once second but is unlikely) sio no data is loss.
        now=$(date +"%y-%m-%d-%H-%M-%S")
        # - Export collection data to the detdicated folders WITH the name as the data and time
        mongoexport --db courier-dev --collection beacondetections -out /home/ubuntu/code2016/courierb$
        # - NOTE - # Small breathing time incase it takes a while to export
        sleep 10
        # - The command will go into MongoDB terminal and run the commands inside mongoRemove.js which basically runs basic mongo commands use: courier-dev; db.beacondetections.remove({}); exit.
        mongo < /home/ubuntu/code2016/courierbeacons/Courier/mongoRemove.js


        # - NOTE - # Navigate to folder in which to start the server, then run!
        cd /home/ubuntu/code2016/courierbeacons/Courier/server/
        sudo node app.js 2&>1


        }


        # - NOTE - # Server action starts here

        #Small delay at the start encase server needs some time
        sleep 20

        #Initial run of the server and cleaning the collection
        RunThis

        #Give some time to rest before starting the infinite loop
        sleep 60


        # - NOTE - # Start the infiniate checking loop to see if the server is up. IF up don't do anything but IF down restart the process
        while $highnoon;
        do
                # Check if port is in use, in which the server will be running
                var=$(sudo lsof -t -i:9000)
                echo $var
                #If port is is nothing/nul/0 then run the function to extract the data and run the server.
                if [ -z $var ]
                then
                        echo "run this"
                        RunThis
                        sleep 60
                
                #Else the port is running and do nothing
                else   
                        echo "a-ok"
                        sleep 60
                fi

        #Restart loop
        done

### Why? and whats next?

The server was crashing with a collection of 800k detections. Both streaming and searching through the collection caused crashes and an attempt to aggrigate did not help reduce the crash variable.
