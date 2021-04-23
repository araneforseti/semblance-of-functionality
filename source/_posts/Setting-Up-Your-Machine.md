---
title: Setting Up Your Machine
date: 2021-04-23 17:49:56
tags:
---

To begin your journey through quality, you need to first setup your machine. This post assumes you are looking at a full stack website.

# OS
To start with, you need to have the OS itself ready to go. Ideally your base for testing supports all the tooling you need. If you need to test things in a specific OS, VMs are generally good enough. These days, companies like Microsoft even offer free VMs for this purpose.

# BROWSERS
Your primary browser ought to be one which matches your target users and all browsers your team plans to support should be thoroughly tested. However, even if you are not supporting them, other browsers ought not reveal or allow anything untoward.

For example, you will want to use the Lynx browser to see what happens in an all text environment.

You will also want to ensure one of your normal browsers is easy to turn off Javascript, Flash, etc. Likewise, moving security settings from nothing to most secure.

# BROWSER FEATURES
Most of the major browsers come with useful features for testing. Ensure your primary browser has the following features either built in or accessible through add ons and be comfortable accessing them, later posts will go in depth with ways to use them

View page source
Manipulate page source
Javascript console
Network calls with response headers & bodies, request headers & bodies, and timing
Local storage & cookies viewing and manipulation
Mobile emulation
Ability to change user agent

# BROWSER ADD ONS

There a number of useful addons out there which will make testing far easier. Here’s a list of ones I commonly use:

Link Redirect Trace is a useful extension showing you all the hops through a redirect loop
Wave Evaluation Tool is a quick way to analyze the accessibility of your website

# OTHER USEFUL TOOLS

Additionally, tools outside the browser can greatly expand your capabilities

Burp Suite has a number of useful tools, allowing you to do things like crawl a website or use its proxy abilities to modify incoming and outgoing requests
Postman is very useful as you can build up a collection of requests and use its variable and environment capabilities to easily work directly with APIs
VM Box for testing functionality in other OSs.
Any document for tracking what you are doing. Specifically, if there is something repetitive you cannot automate, writing it down is a good thing to do.