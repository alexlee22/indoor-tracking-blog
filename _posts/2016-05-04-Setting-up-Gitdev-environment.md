---
layout: post
title: GitHub Dev Environment
date: 2016-05-04 13:25:59
type: post
published: true
status: publish
categories: []
tags: []
description: Setting up your Github dev environment for dummies/ offline env running

author: tiara
---

Yes, yes, I am not making this post via dev environment (booooo!)but I just wanted to go through the steps here anyway for when I get serious about using the darn thing. 
Setting up your for Github dev environment on your computer is a little tricky if your a little tehcnologically challenged like me. To get started read this step-by-step process I went through to ge things running. ***Cootos to Annisa for pushing me into the right direction..***

1.Download Github desktop: https://desktop.github.com/

2.Download sublime text editor 3: https://www.sublimetext.com/3

3.Now figure out a way to clone/add/make the repository you want to start editting into the computer using the GitHub desktop. 
Click file > open and open your folder. not just a post but the entire blankmind folder

4.Once sublime is up and running, view > show console

5.Now you will Install package control from package control.io so Copy and paste this code into the console from this website: https://packagecontrol.io/installation

```html
import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```
Make sure its Sublime 3, not sublime 2. 

***For manual instructions,***
Click the Preferences > Browse Packages… menu.

Browse up a folder and then into the Installed Packages/ folder.

Download Package Control.sublime-package and copy it into the Installed Packages/ directory.

Restart Sublime Text.

This lets you make file sin sublime and then when you save your new post in sublime, GitHub will automatically detect what is missing from GitHub and your blank mind folder so you just press 'sync' to push it all back. 

6.***Control shift p***. This lets you see what you have installed and what abilities you have on the github tool bar. For example if we installed eg Jekyll and typed Jekyll in there , it'll give us a list of stuff we can do with Jekyll. So now we gotta install Jekyll. 

### Interesting things list

For a better version of what I just described above: https://guides.github.com/introduction/getting-your-project-on-github/
For all some interesting events/happenings, check out: https://medium.com/ 
