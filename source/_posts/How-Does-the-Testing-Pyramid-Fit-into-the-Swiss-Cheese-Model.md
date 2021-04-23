---
title: How Does the Testing Pyramid Fit into the Swiss Cheese Model?
date: 2021-04-23 17:56:27
tags:
---

If you have read the [Swiss Cheese Model section](/swiss-cheese) and are familiar with agile, you might have noticed something missing. In fact, if you read many of my posts or have worked with me, you will probably notice I rarely refer to the pyramid despite its ubiquity within the agile world.

The pyramid model is just that, a model. Models are useful for predicting and acting as a guide for decisions, but all models have limitations and understanding their limitations helps you make better decisions and understand when you need a new model.

I personally feel the pyramid is at its best in particular conversations – specifically, the cost vs. effect conversation.

If you look at the standard model:

![Standard Test Pyramid](standard-pyramid.jpg)

The test pyramid has a clear concern – certain test types cost more than others due to a combination of the length of the feedback cycle, stability, maintenance, brittleness, etc – so you should have more of the inexpensive tests and less of the expensive ones.

This focus makes the pyramid an effective tool for asking the question of where a test should be (the place which gives it the best cost v. effect ratio). This is a good thing to keep in mind and use within your own strategy building, but there is more to a strategy than its cost and feedback cycle. 

The pyramid itself is a good rule of thumb for what was the standard project when it was created (websites with backends and maybe an outside dependency or two). However, the world of IT has moved in very different directions since its inception. Many projects exist in worlds far beyond the single website world (eg, microservices). The pyramid is an effective tool for some conversations, but the greater strategy for these projects needs a new model.

Similarly, many project similarly utilize tools which are the great tools for their use case, but those tools do not support unit tests which fit the pyramid (eg, data transformations in Apache Spark). While ideally we pick tools which support unit testing, this is not always possible and we should be able to adapt to the situation. These projects also need a model beyond the test pyramid.

The testing realm of IT needs a flexible model which can handle the fact projects are not simple and tooling is not always ideal. We can keep the principles of the test pyramid (cost effectiveness and quick feedback) close while understanding there is more to a quality strategy.