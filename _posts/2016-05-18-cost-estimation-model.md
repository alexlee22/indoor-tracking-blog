---
layout: post
title: Estimated Cost Model 
date: 2016-05-18 01:01:59
type: post
published: true
status: publish
categories: [estimated cost model]
tags: [query questions, workplace zones ]
description: Building a cost guide for workplace IPS setup  

author: tiara
---

Buying one off item is generally a pretty straightforward endeavor(you just order it and away you go!), but what happens when you order a heck of a tone more than normal? Your generally get a discount for it.  At my work, we do a lot of furniture orders for interior designers/architects. These methods of us calculating the quote+ margin +gst usually depends on how many people are ordering. Most companies, mine included will factor in a buffer for items that are one off, are coming from over seas(due to fluxuation rate) and general annoyance of having to only get paid for one item. However, for jobs over $30,000 we tend to use a scaling algorithm that helps us to estimate the cost for the order. I made this excel sheet to help you understand what I am talking about.  

![alt text]({{ site.baseurl}}/assets/bluetooth-commit-setup-and-commit-error/cost_summary.jpg)

The general cost of the item, (I guested to be around $15 dollars give or take) is placed into the sheet. Now for a bunch of I have programmed the initial cost/quantity to factor in the potential exchange rate, the freight costs, duty etc. 
In applying this to the honors project, we should really start thinking systematically and how the decisions we make will effect the budgeting for the implementation of estimotes within a workplace. 
Obviously this is only a start and there are a million different factors that will continue to contribute to this sheet(maintenance, broken estimotes, etc) but makes a good platform for conversation around the issue. 


### Factors yet to include:

1. The range of the receiver beacons(therefore would indicate how many Raspberry pi's we will need for the floor plan)
2. The required maintenance over the year(time will tell)
3. The electricity/infustructure needed (internet, and server)
4. Web front administration/upkeep

These are all areas for discussion within our next meeting. 


# Moving Forward. 

My next step is to attach the number of beacons (and above factors) needed to create a framework for IPS within a workplace and show how changing the levels of required technological architecture will influence the cost. 



