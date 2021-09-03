---
title: Introduction to API testing
tags: api
date: 2021-09-02 23:36:25
---


# It is All The Same

The first step to understanding testing APIs is to understand it's still the same as testing any other thing. I have noted the primary differences to keep in mind below, but beyond these you will want to apply the testing principles you would for any other application (eg, performance testing, integration testing)

# Identify Users

Users of APIs consist of two parts - the actual consumer (typically another app, such as a mobile app, or a website), and the developers writing the consumers.

Know who your targeted consumers are, the same way you would know your target users.

# Acknowledge the User Interface

The user interface for an API consists of 2 primary things - the documentation and the response messages (both good and error).

A developer writing a consuming app needs to be able to use the documentation and response messages to fix any mistakes they have made and know when it is successful - the same way a web site would guide a user through a task.

# User Flows

APIs are always written in service of something. There's tasks they are enabling the users of the consuming products to do. While API calls can be made independent of each other, there still exists primary user flows they enable. Identify these flows and understand how they fit together.

# Automated Testing Basics

Automate the above section. Put yourself in your users' shoes and use the documentation and responses to guide your path. If you have to ask the developers who worked on the part you are automating against, that's a UI bug which should be addressed.

As the users of the API are primarily developers and their apps, automating tasks and interacting with the API the same way they do is one of the most important things you can do.

# Further Resources

- [Most Posts About APIs](/product-types/api)
