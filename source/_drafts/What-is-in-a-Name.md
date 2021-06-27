---
title: What is in a Name
tags:
---

Unit vs Integration vs Functional is asking the wrong question
Name test suites after their purpose. What is the testing protecting? What concern is the test addressing?
I do usually keep unit as it is a term the industry recognizes and has some level of agreement, but I define unit as a test whose purpose is to protect and document the functionality of code, specifically in a line or method. To me the focus of these tests is the ease of writing, the speed of running, and the stability/reliability of the test. If it needs mocks to achieve that, then use mocks. If it needs to be a “social” unit test to achieve that, have it be social. The only exception is I generally don’t allow for internet connectivity to my unit tests as internet connections tend to always slow them down.
For all other tests, I name them after their purpose. 
Integration is an umbrella term - is this test a contract test? Is it a usability test?
Functional is an even worse umbrella term as most tests are technically functional tests. Instead ask yourself - is this a user flow test? Am I protecting the my own API contract? Is this a usability test?
It is much easier to enforce test boundary via thinking of test purpose first.
Every test has a purpose and every concern has a layer
Each test suite represents a layer (and things other than test suites can by layers), so make your layers based on what sort of concerns/problems you expect that layer to be able to catch.
