---
title: Traceability and You
tags:
---

Imagine this: you work in an app supported by a large network of microservices. You are happily going along trying random things when you suddenly find an error message which makes no sense. You use the information in the message to trace its route through the system. With a bit more testing around the services highlighted by the trace, you provide developers with a detailed report on the conditions which can cause this error.

Now imagine a similar, but slightly different scenario: you work in an app supported by a large network of microservices. You are happily going along trying random things when you suddenly find an error message which makes no sense. The information in the error message is only enough for you to report the last service used in the response, so all you have to provide developers is what you did to cause it and the response received.

Next think about those scenarios, but if a customer was the receiver of the weird message. In the first scenario you would be able to perform a detailed analysis of the problematic system. In the second...you would have to hope the issue is easily replicable.

The second scenario is all too common in debugging, whether it be for customer purposes or for QA. It results in more time spent just trying to figure out what happened and less time addressing the problem.

Traceability is the idea where so long as you have the response, you can trace the path the response took through the system. Frequently this is accomplished via a tracer ID. This tracer ID enables you to just search the logs for it to get the path through.

Whenever dealing with any form of layered system, traceability is one of the most important features your team can put into place to make their own lives easier and it absolutely matters for QA purposes. With traceability, you can see how a request moves through the system and determine if the path it follows is the expected one.
