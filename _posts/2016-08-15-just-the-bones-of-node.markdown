---
layout: post
title: Just the Bones of Node
date: 2016-08-15 0:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Because finding the needle in the haystack was impossible
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: alex
---

Last week I attempted to debug the server to find the memory leak with the git application. TLDR: Could not find it. It was literally a pile a spaghetti. So retaining the knowledge from trying to solve problems with their Github, I just remade an entire node from scratch combining multiple tutorials. These normally were with separate elements [ie. node + mongo, node + socket, node + request, request + python] just merged together with a little logic.

So the overall results were great, not pretty, but hey at least it doesn't crash anymore!

![much bland, so colour, wow]({{ site.baseurl }}/assets/fromscratch.png)

Oh wow look! so much colour and excite! It is currently working with just over `800,000` with the inefficient query. It searching finishes and doesn't have a constant memory gain overtime so it doesn't crash. There are some problems with this server as it all can't be uphill:

- When uploading lost of data via requests, it seems to cap at 25% CPU, stops and waits about 5s, then continues.
- The query takes forever to load because it caps at 100% CPU, but does it in stages
- This also stops the uploading

There is probably a cap on the way node is done. Also I am currently using the smallest AWS server which is super slow and apparently has the processing power of a 2006 chip. Some more investigating is needed to fix this, I am going to ask Jorke about the potential problems and try to craft some solutions.
