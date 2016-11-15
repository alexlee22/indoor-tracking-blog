---
layout: page
title: Agent Status
date: 2016-11-14 20:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: You write here and it goes on the index page.
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: ben
---
<style type="text/css">
    .post-content{
        column-width: 12em;
    }
    .statusBox{
        break-inside: avoid;
    }
    .last-seen-date{
        font-size: 70%;
    }
    .barchart{
        background-color: blue; display: inline-block; height: 1em;
    }
    .tdelta{
        font-size: 40%;
    }
</style>

<script>

function isAbaddie(testThing, listOfbaddies){
    var goodie = true;
    for (var i = 0; i < listOfbaddies.length; i++) {
        if(testThing.indexOf(listOfbaddies[i])!=-1){
            goodie = false;
            break;
        }
    }
    return goodie;
}



var request = new XMLHttpRequest();
request.open('GET',
             'http://ec2-52-65-111-92.ap-southeast-2.compute.amazonaws.com:3000/agentstatus',
             true);

request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    // Success!
    var data = JSON.parse(request.responseText);
    var listOfbaddies = ["fake", "personal", "ace", "delta"]; //,"freddie","whiskey","london","king", "oscar"
    var thelist = document.querySelector(".post-content");
    for (var i = 0; i < data.length; i++) {
        var name = data[i]['agentName'];
        if(isAbaddie(name, listOfbaddies)){
            var then = Date.parse(data[i]['timeRecorded']);
            var tDelta = Math.round((Date.now() - then)/1000/60);
            thelist.innerHTML +=
                `<div class="statusBox">
                    <h3>${name} <span class="tdelta">(${tDelta} ${tDelta==1 ? 'minute':'minutes'} ago)</span></h3>
                    <p class="last-seen-date">${new Date(then)}</p>
                    <div class="barchart" style="width:${tDelta}%"></div>
                </div>`;
        }
    }
  } else {
    // We reached our target server, but it returned an error

  }
};

request.onerror = function() {
  // There was a connection error of some sort
};

request.send();

</script>