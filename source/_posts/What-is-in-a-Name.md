---
title: What is in a Name
date: 2021-06-27 12:52:09
tags:
---


I subscribe to this idea: "Every test has a purpose and every concern has a layer" (if this phrase sounds nonsensical to you, please review the {% post_link swiss-cheese 'Swiss Cheese Model' %} which sounds nice and lovely.
As a result, I hereby propose we purge the phrase of "Functional Tests" from our collective vocabulary. It is a phrase which tells you nothing other than that there are tests and they tests functionality. Likewise, I propose we stop considering "Integration Tests" as its own test type and instead consider it as an umbrella term for a test category.
What I am getting it is those two phrases fail to convey the meaning. What is the purpose of a test who belongs in the "Functional" suite? How do you know a test belongs there? When implementing functionality, how do you know when you need to write a functional test?

As a result, I think that asking unit vs integration vs functional is asking the wrong question.

Name test suites after their purpose. What is the testing protecting? What concern is the test addressing?

Note, I do usually keep unit as it is a term the industry recognizes and has some level of agreement, but I define unit as a test whose purpose is to protect and document the functionality of code, specifically in a line or method. To me the focus of these tests is the ease of writing, the speed of running, and the stability/reliability of the test. If it needs mocks to achieve that, then use mocks. If it needs to be a “social” unit test to achieve that, have it be social. The only exception is I do not allow internet connectivity in my unit tests as internet connections always slow them down. I ultimately believe that unit tests are written for the express purpose of letting developers know when they have made unintended changes to their code and whatever method allows for the quickest and most reliable tests of this is that project's version of a unit test.

"Functional Tests" is the worst term as most tests are technically functional tests. Instead ask yourself - is this a user flow test? Am I protecting the my own API contract? Is this a usability test?

For all tests, instead of "functional", name them after their purpose. For example, frequently the tests named "Functional" are actually a variant of "User Flow" tests. Their purpose is to test the ability of the system to handle expected user journeys and interactions. By changing the name to "User Flow" thinking about these tests becomes easier. When implementing functionality, I can ask "what user flows have changed, been introduced, or removed as a result of this?" With that question, I am well armed to make appropriate changes to my User Flow suite in response to a card.

As another example, integration is another umbrella term. Many of these tests are concerned with contract, usability, or might not even need to exist. If you check the {% post_link swiss-cheese 'Swiss Cheese Model' %}, you will see that the architecture section highlights that one should identify and characterize integrations. Those characteristics then point to what integration tests you would want. For example, if you have a dependency which is under development and volatile, you might consider a contract test to ensure that development does not break your project. Another example is if your dependency has frequent downtime, you might want to consider some form of monitoring or heartbeat. Finally many integration tests are written without a purpose beyond "we integrate, therefor integration test". These tests take time away from what could be useful tests. Identify your concerns and test those. Testing for the sake of testing helps no one.

It is much easier to enforce test boundary via thinking of test purpose first.

Every test has a purpose and every concern has a layer.

Each test suite represents a layer (and things other than test suites can by layers), so make your layers based on what sort of concerns/problems you expect that layer to be able to catch.

*I recognize the irony of this post given this website has a (not yet fleshed out) Test Types section. That section is intended to demonstrate various test types from a purpose view point to give inspiration and examples for use in developing a test plan.
