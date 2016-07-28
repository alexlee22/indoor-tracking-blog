---
layout: post
title: Draft Deployment Plan #2
date: 2016-07-28 12:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Few pages long so get ready....
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789
twitter-body: you write here and it goes on the share for twitter
featuredimg: polar-bear.jpg #if you put an image here it goes on twitter too

author: annisa
---

The deployment plan has been updated and is a continuation from this [post](http://where-in.space/2016/deployment_plan) and the [presentation](https://docs.google.com/presentation/d/1eniaMt-oF0j2T6xsk2-SeEzSBYBUHL4aM-gxdqBZfVA/edit) presented last week. Its looking a little put together for when we do present it to both BVN and ARUP. It is still just a draft -  probably missed some points but for the most part, think its mostly all there. The document is 5 pages long and think it would be better to read on a formatted document than a blog - which is found [here](https://docs.google.com/document/d/1L8gizBj6gpVW3I6eQ1Eui6eQ3fnXm1l-0P-m0jl37HE/edit#). But for those outside looking into this project and can't access the document, here it is. 

## Introduction

This project is a collective research endeavour that aims to identify behavioural patterns of individuals within workplaces. Space utilisation, circulation and interaction will be analysed as a pilot study to inform future workplace design. Data is collected with removable Bluetooth Low Energy beacons as part of an Indoor Positioning System (IPS). This document outlines the deployment plan for the IPS research project within the offices of ARUP and BVN.

### Phase 1: Planning

#### 1.1 Indoor Positioning System Elements
	 
The Indoor Positioning System (IPS) requires the following to operate:

<b>* BLE Beacon:</b> Periodically advertises packets of information within a certain range.

<b>* Receiver:</b> Detects BLE beacon signals when within range. Also collects and uploads the detected beacon information to the database.

<b>* Database:</b> Storage facility of the beacon detections.

<b>* Server:</b> Information from the database is translated into a user-friendly web server. 

Prior investigation of hardware and software suitability is necessary for both the IPS and future office scalability. Reliability, accuracy and stability must be of high priority. Elements listed below have been suggested as the most suitable for this research - backed by research:

<b>* Beacon:</b> iBKS105 by Accent Systems

<b>* Receiver:</b> Raspberry Pi 3: Model B

<b>* Database:</b> MongoDB, Amazon Web Server - S3

<b>* Server:</b> Amazon Web Server - Ec2

#### 1.2 Rough plan for basestation deployment

Determining the layout of Raspberry Pi locations is necessary for optimal floor coverage and intensity. The image below is a rough indication of the amount of Raspberry Pi’s that are needed before purchase and full deployment. The Raspberry Pi’s will be located within reach of an available power supply.

BVN: <b>42 Basestations</b>
![BVN basestation]({{ site.baseurl }}/assets/gh visualisation/basestations_BVN2.PNG)

ARUP: <b>37 Basestations</b>
![ARUP basestation]({{ site.baseurl }}/assets/gh visualisation/basestations_ARUP2.PNG) 

#### 1.3 Cost Plan
This section outlines the estimated cost for the elements needed to operate the IPS. Full cost plan is provided in this 
[link](https://docs.google.com/spreadsheets/d/1M43rWYlgAy95g27Mp202UL6_K9fjLoq766Cmmh3SibE/edit#gid=0).

BVN Breakdown
<iframe width="605" height="126" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1M43rWYlgAy95g27Mp202UL6_K9fjLoq766Cmmh3SibE/pubchart?oid=1963134417&amp;format=interactive"></iframe>

ARUP Breakdown
<iframe width="600" height="123" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1M43rWYlgAy95g27Mp202UL6_K9fjLoq766Cmmh3SibE/pubchart?oid=1784038529&amp;format=interactive"></iframe>

#### 1.4 Presentation to stakeholders

Prepared and to be presented to stakeholders (inc. all employees of each organisation, industry partners and potentially affected people). It should explain the extent of the research in terms of:

* Brief

* Aims and objectives

* Data collection and analysis

* Ethics and security of participants

Also aims to encourage people to participate in the research as well as help to ensure that there is no miscommunication and no breach of potential ethical implications.

#### 1.5 Participant Consent 

Participants are given the ability to opt-in and opt-out at any stage of the research. However, should also be noted that participants who remove or forget to wear the beacon can bias the analytics. To maintain consistency, participants should be incented or reminded to stay involved throughout the research. If participants wish to be completely removed from the research experiment, they can do so with their information disregarded from the results.

### Phase 2: Installation and Trial Run(s)

#### 2.1 Test #1: Small scale installation of IPS 

This initial test consists of installing a small number of Raspberry Pi’s around each office environment to collect a sample of indoor positioning data. Indoor positioning data is collected from beacons worn by individuals involved in the research. Aims to identify and solve any potential problems and limitations of the current system. Will also test server capacity to help identify future expectations when scaled up for production. 

#### 2.2 Test #2: Increased scaled installation of IPS

This involves theinstallation of all basestations specified in Phase 0: Stage 2 for each office environment.  It will determine the suitability of basestation layout and whether more basestations are needed. Additional tracking beacons will be deployed to participants to further test the server capacity when dealing with larger data volumes.

### Phase 3: Wide Deployment

#### 3.1 Full office deployment: initiating beacons

This involves full deployment of the IPS. All basestations are to be fully installed in the optimal locations and the wearable beacons should be given out to participants.  This section should be guided by the industry partners to avoid any workplace complications. 
Aim to maintain data collection for 1-2 Month(s). This duration of time should approximately be enough data to identify human patterns throughout a period of time. It should also provide room for error in case any data is not usable or incorrect. 

#### 3.2 Maintenance and data monitoring

Constant monitoring (if working, subpar or broken) of the IPS should be maintained to ensure maximum percentage of uptime and technological reliability. Additionally important for data consistency and accuracy. Constant testing and first-hand monitoring is required throughout the process.

### Phase 4: Data Analysis, Reporting and Conclusion

#### 4.1 Data Visualisation

Designed and developed as a way of presenting our body of research. The visualisation will be driven from the data collected by the IPS. An automated workflow will be considered to decrease the amount of manual data processing and ensure that the system outputs reliable information. The visualisations will aim to present the following patterns of human behaviour in the office environment:

* Space Utilisation
* Circulation
* Interaction

#### 4.2 Drawing conclusions, lifecycle and further developments

This involves drawing conclusions about the findings and whether objectives of the research are met. Additionally, presents final report regarding the problems and limitations identified from the research observations. 
