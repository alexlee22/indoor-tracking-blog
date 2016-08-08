---
layout: post
title: Deployment plan
date: 2016-08-08 00:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: The deployment plan for implmenting the indoor posiitoning system with ARUP and BVN
# 110 marker 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789

author: tiara
---

I have just copied over the deployment plan into here but its also available within the google drive. 

# INTRODUCTION

This document outlines the plans and procedures for the implementation of an Indoor Positioning system within Sydney offices of BVN and ARUP. This project is an exploratory research endeavor that aims to identify behavioral patterns of individuals within workplaces. Space utilisation, circulation, and interaction will be analysed as a pilot study to potentially inform future workplace design. Data will be collected using Bluetooth Low Energy (BLE) technology as the core foundation for the Indoor Positioning System (IPS). The aim of the research is to gather usable data over the course of one to two months.


### PLANNING

<b>1.1 Indoor Positioning System</b>

1.1.1 Operational Elements of the IPS

For both ARUP and BVN, the IPS consists of the following:

Table 1: Outlines required elements to operate the IPS.

<table style="width:100%">
  <tr>
    <th>Element</th>
    <th>BLE Beacon</th> 
    <th>Basestation</th> 
    <th>Database</th> 
    <th>Server</th>
  </tr>
  <tr>
    <td>Operation </td>
    <td>Periodically advertises packets of information within a certain range.</td> 
    <td>Detects BLE beacon signals when within range. Also collects and uploads the detected beacon information to the database.</td>
    <td>Storage facility of the beacon detections.</td>
    <td>User friendly web interface that translates information from the database.</td> 
  </tr>
</table>

1.1.2. Chosen Hardware and Software

The elements listed below are chosen following the conclusion of a systematic technology review. In order to achieve sufficient scalability, reliability, accuracy and stability are requirments for the chosen software and hardware.

Table 2: Outlines the chosen hardware and software that fulfill the requirements of IPS.

<table style="width:100%">
  <tr>
    <th>Element</th>
    <th>BLE Beacon</th> 
    <th>Basestation</th> 
    <th>Database</th> 
    <th>Server</th>
  </tr>
  <tr>
    <td>Operation </td>
    <td>iBKS105</td> 
    <td>Raspberry Pi 3: Model B</td>
    <td>MongoDB, Amazon Web Server - S3</td>
    <td>Amazon Web Server - Ec2</td> 
  </tr>
</table>


1.2 Base station Location Plan

Determining the layout of Raspberry Pi locations is necessary for optimal floor coverage and intensity. The image below indicates the number of basestations required and its location prior to purchase and full deployment. The Raspberry Pi’s will be located within reach of an available power supply.

### BVN Office

![BVN base station locations]({{ site.baseurl }}/assets/deploymentPlan/basestations_BVN.PNG) 

Figure 1: BVN floor plan of proposed base station locations . An estimation of 42 Base stations is required to cover the dedicated area.

### ARUP Office 

![ARUP base station locations]({{ site.baseurl }}/assets/deploymentPlan/basestations_ARUP.PNG) 

Figure 2: Arup floor plan of proposed base station locations. An estimation of 37 Base stations is required to cover the dedicated area.

# 1.3 Participant recruitment - DRAFT

1.3.1 Incentive Initiatives
The incentive programs are designed to encourage individuals to participate in the research. Participants are given, for example the opportunity to review their personal movements at the conclusion of the study, however a definitive incentive program is yet to be decided. These incentive programs will take form over the course of the study as a means for rewarding and encourage participants to wear beacon at all times. 
1.3.2 Information Session
This will involve a casual presentation where all members of the office will be invited to attend. It will explain the extent of the research in terms of:

1. Research brief

2. Aims and objectives

3. Data collection and analysis

4. Ethics and security of participants

5. Incentive programs 

The outcome of the presentation is to inform potentially affected stakeholders to reduce liability,  help ensure there is no miscommunication and breach of potential ethical implications. Additionally, it hopes to encourage individuals to participate in the research.

1.3.4 Recording Sample Size
Following the information session, a sign-up sheet will be available for individuals who wish to participate of the project. The number of participants that wish to partake in the research will indicate the approximate amount of beacons that need to be purchased and assigned.  
1.3.3 Assigning Beacons
Beacons will be assigned to each participant and will be collected at the end of the data collection period. 

Table 3: The positives and negatives of allocating beacon technology to participants.

<table style="width:100%">
  <tr>
    <th>Positives</th>
    <th>
1. Allows participants to be located in real-time
2. Reduction of hands-on management
3. Reliable reporting of participation count
4. Consistent data collection over time
5. Reduction of human variables
</th> 
  </tr>
  <tr>
    <td>Negatives </td>
    <td>
1. Potentially less participation (cautious of being tracked)
2. Individuals not bringing or wearing beacons 
3. Daily monitoring of lost/stolen beacons and return from employees
</td>  
  </tr>
</table>


The name of the participant and unique identifier of the beacon will need to be recorded to manage:

1. Lost/Stolen beacons

2. Damaged or faulty beacon technology

3. Discard data for opt-out

### 1.4 Cost Plan	

This section outlines the estimated cost for the elements needed to operate the IPS. Full cost plan is provided in this (link](https://docs.google.com/spreadsheets/d/1M43rWYlgAy95g27Mp202UL6_K9fjLoq766Cmmh3SibE/edit#gid=0)

# 2. INSTALLATION AND TRIAL RUN(S)

2.1 Test #1: Small scale installation of IPS

This initial test consists of installing a small number of Raspberry Pi’s around each office environment to collect a sample of indoor positioning data. Indoor positioning data is collected from beacons worn by individuals involved in the research. This test aims to identify and solve any potential problems and limitations of the current system. Will also test server capacity to help calculate future expectations when scaled up for production.

2.2 Test #2: Increased scaled installation of IPS

The location of the base stations are to be installed as per the plans for each office mentioned in Section 1.2. It will report on the suitability of base station layout and whether more base stations are required. Additional beacons will be deployed to participants to further test the server capacity when dealing with larger data volumes. 

2.3 Report on Testing Phase

This testing phase will report on the findings and inform any changes that need to be made before wide deployment. 

### 3. WIDE DEPLOYMENT

3.1. Full Office Deployment - Base station and Beacon

This requires full deployment of the IPS. All base stations are to be fully installed in their appropriate locations and the wearable beacons are to be allocated to each participant.  This section should be guided by the industry partners to avoid any workplace complications. Aim to maintain data collection consistently for one to two month(s). This duration of time should provide room for error in case any data is not usable or incorrect.

3.2 Preliminary Progress report 

This will be conducted after the first week of full deployment initiation. Current performance of the IPS and how often participants wear their beacon will be reported. A report in the early stages of deployment initiation can help to determine the reliability of the data output, help inform any changes that need to be made and determine whether extra incentives need to be introduced. 

### 4. MAINTENANCE PLAN   

4.1 Maintaining Technology

Constant monitoring (if working, or broken) of the IPS should be maintained to ensure a maximum percentage of uptime. Constant testing and first-hand monitoring is required throughout the duration of the data collection stage. In the case of a technological failure, to ensure data is consistent, a replacement will be required.
4.2 Security and Privacy of Participants
A member from each organisation or trusted third party member will record participant names and assigned beacon identification numbers. The personal identification of the participant in relation to their allocated beacon will not be accessible by the researchers unless under request by the participant. It is important to keep a detailed record of the identity of each participant and their corresponding beacon identification number to ensure data accuracy.

### 5. DATA COLLECTION, REPORTING AND CONCLUSION

5.1 Data Visualisation

This is designed and developed as a way of presenting our body of research. The visualisation will be driven from the data collected by the IPS. An automated workflow will be considered to decrease the amount of manual data processing. It can also ensure that the system outputs reliable and consistent information. The visualizations will aim to present three patterns of human behavior in the office environment:

1. Space Utilisation

2. Circulation

3. Interaction

5.2 Drawing Conclusions, Further Developments and Final Report
This involves drawing conclusions about the findings and whether objectives of the research are met. Additionally, includes a final report that outlines the problems and limitations identified from the research observations at both BVN and ARUP. 




