---
title: Testing APIs
date: 2021-04-23 17:51:19
tags:
---

On the surface, testing an API is similar to testing of other products – user flows, security, edge case behavior, etc, but different in that the first consumer of the API is a developer rather than a customer using a GUI of an app.

For this reason, part of the focus is on the dev experience – can a developer debug the problem with their code’s interaction with the API using the API error messages? Can they easily program their code to interpret errors? Can they use the documentation to figure out how to use the API for their purpose?

A lot of this is coverable by writing user flows for the API. By going through the experience of using it yourself, you can understand what the users will need to go through in order to accomplish their goals. Likewise, when it comes to debugging your user flows, always be looking for where the API is falling short on helping you. For example, when debugging the user flows, do the errors tell you when you are missing fields? Are you getting consistent error messages? Can you program your user flows against a consistent message format?

APIs are unique in that, unless it is asynchronous, they are easily covered by full stack automated tests. It is much easier to put a suite of maintainable tests around them than it is to put a similar suite around the end product (especially if that product is a mobile app). As a result, creating a large, robust suite of user flow tests (tests which attempt to accomplish goals a user of the end application would have) is a very good thing! You still want to make sure your tests give quick feedback and are reliable, but most APIs can have larger user flow test suites than UIs – whose user flow test suites can become flaky and slow.

Do you need to know how to code to test an API?

Not completely, but it helps. Similar to how knowing what happens during air travel can inform testing an app intended for a traveler, understanding what a dev goes through helps with testing a tool intended for developers. I would highly recommend a QA write the user flows themselves, pairing with developers as desired, because the debugging process for the user flows IS part of testing the API.

Writing and maintaining the suite exposes the team to the same pain as consumers of their API will feel, specifically in the user flow portion of the test suite.