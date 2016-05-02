---
layout: post
title: CodeSchool and Digital Marketing 
date: 2016-05-02 11:00:00
type: post
published: true
status: publish
categories: []
tags: []
description: Javascripting for dummies and online data strategies

author: tiara
---

I learnt a thing or two today. Its Not stricktly related to indoor positioning but it might come in handy later down the track. To keep up to scratch on my coding abilities, I've enrolled into Codeschool and am Learning javascripting, Mongo and Node. Its so far ok but I think I need to write these things down as I go otherwise, being blonde, Ill probably forget it, like last time I learnt it.
I'm also working on a  wordpress project at work. I'm learning alot about Search engine optimisation and digital marketting. 
For codes school, heres what I learn..

### Digitial marketting: Adding search words

Google is great... Just saying.

Naming your images  
One of the greatest things my work is teaching me right now is digital marketting. Adding search words to images on your site can help users not only find the products/information etc.. they are looking for, but also discover your site/brand by accident or intent.
Heres my own step-by-step process to get images on my works website within the first return on google. Its not foolproof, but it will get you started. 
1. use Google AdWords Keyword Tool, SEO Book Keyword Tool, WordTracker, Keyword Discovery to brainstorm some key words that relate too your site and product. start with 50-100 words. by then youll start to notice some core themes emerging. 
sometimes it might cost you some cash if you want to pay-by-click but it also offers alot of insight about the process of naming your image files which is all for free. 
2. The second thing to be away of it nameing your images with too many search words, for example furniture-black-couch-leathercouch-sofacouch-comfycouch.jsp. Google will penalise you here and again your results will fall low on the search bar. 
3. another technique is adding the items serial number, or object number too the name. I found a book online the other day by searching for its serial number. wala it wrked really well, and the company I bought it off wouldnt have had me as a customer if they ignored the tip. It doesnt have to be just serial numbers, it can be furniture object numbers or anything uniquely identifying about the object. Often though people are going to search for general terms first then lean into the more specific things later. so name your images with the more general terms first 'furniture, counch, sofa', then with the more unique identifying terms(serial number: 1232345345) towards the end of the file name. 

Nameing webpages pages
1. Accurately describe the page's content
2. Create unique title tags for each page
3. Use brief, but descriptive titles
4. Make use of the "description" meta tag :

```html
<head>
<title>Brandon's Baseball Cards - Buy Cards, Baseball News, Card Prices</title>
<meta name="description=" content="Brandon's Baseball Cards provides a
large selection of vintage and modern baseball cards for sale. We also offer
daily baseball news and events in">
</head>
<body>
```
 
### Beginner’s Guide to SEO: Best Practices

Search engine optimisation is a subset of marketing. In general terms, following these three rules will kinda lead you in the right direction. 

1. Informational queries – searching for information from general to specific
2. Navigational queries – searching for a specific site or page
3. Transactional queries – searching with an intent to purchase
 
### WordPress: image preparation 

Yoast SEO for meta tags, titles: Long story short, get your images resized and it will save you a world or hurt. Heres how to do that. An your web page is usually going to have a content area of up to 984px, sizing your ‘large’ images to around **800 px wide** should be quite adequate for a normal website. In terms of overall monitor widths, most of your web visitors have computer monitors that are at least **1,024 px wide** (more than 98%). Some may have very large monitors **– 1,280 px, 1,440px, 1,680 px, 1,920 px** or even larger.

When writing or editing a post, you can add an image using the Add Media button above the editor box. This opens a window that displays the multi-file uploader. From here you can drag and drop your picture or select it using the file selector.
The images you add here will be automatically added to the Media Library. Try uploading your images too https://tinypng.com/ 
before placing them on a website. This part is pretty straight forward. 

### CodeSchool

Just recapping a few key javascripting words to keep my mind bored.

```html
<Var string1 = 2; //(before a variable name) is the signifyier for a new variable
<.length          // (returns the length of an item (string or number)
<script>        //(signifys a new scrit document) to source a specific code in a file, its <scripts> src = "trains.js"></script>
                // for deep foldered files use: 
                //<scripts> src = "../scripts/yellowstone/oldFaithful.js"></scripts> 
< console.log  //console.log("...." + trainRunTime + " is running late");
< //the ';' keeps everything neat and tell the computer to execute this one thing, use the console.log to print it when your done. 
```

While loops

```html
< var numSheep = 4;
< var monthNumber = 1;
< var monthsToPrint = 12;

< while (monthNumber <= monthsToPrint) {
  numSheep *= 4;
  console.log("There will be " + numSheep + " sheep after " + monthNumber + " month(s)!");
  monthNumber++;
}
```

Some more special symbols
```html
<x--;
< .charAt()'   // (returns the character at a specific location. for example antidistablishmentarianism.charAt(11) will return 'i'
< \n // "\n" is the new line
< \t // "\t" is the tab space away
```
If your sorta interested in half the stuff I talked about in this pst, check out these Further readings 

http://static.googleusercontent.com/media/www.google.com/en//webmasters/docs/search-engine-optimization-starter-guide.pdf
http://www.hongkiat.com/blog/beginners-guide-to-seo-best-practices-part-13/
http://www.smartinsights.com/digital-marketing-strategy/local-seo-website-optimisation/ >> Smart insights are a great resource for all digital marketing info
I recommed downloading the Wordpress plugin Yoast SEO for meta tags, titles, etc.

