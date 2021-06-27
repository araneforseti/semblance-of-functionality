---
title: End to End Tests for Your Logical Parameters
tags:
---

“Save” end to end testing for when there is interactions between services or key user interactions
For APIs, when it comes to parameters, this means have one end-to-end test to check your error format, but keep the “syntax” errors to unit tests
A syntax error in this scenario is an which only needs to involve one layer (so no need to check data). Examples:
Data in correct format
Start date before end date
All required parameters passed
Logical parameters should be checked in some form of API test since they involve interactions between systems.
Logical in this scenario are parameters which involve multiple layers (eg, a backend data system). Examples:
User has access
User has particular data
