---
title: API Testing Suggestions
date: 2021-04-23 17:52:11
tags:
---

# USER JOURNEY FLOWS
User flows give the team a big picture idea of what they are working towards – how the API will fit into a client program. Even APIs which will be consumed by multiple clients can benefit from understanding these flows.

These are models of how we would expect the user to use the system, screen by screen. The screens don’t need to be high fidelity (eg, a black box labeled “Login Screen” can easily suffice for a login), just a visual representation of where a particular screen would be. Connecting the screens would be transitions where any called services would be pointed out. You do not have to map all the user flows, but having your critical flows mapped can make following conversations easier.

For example, a flow involving logging in would only call out the happy path login. We would have sad paths in a separate documentation unless the sad path is complicated and important enough to warrant drawing a flow around it.

These can be used to aid priority sessions (eg, which flows are highest priority of enablement), determine what is and isn’t out of scope for that particular discussion, and help with sharing context to new team members. This section will be referenced in later sections and I personally believe this is the most important suggestion.

# DOCUMENTATION
In an API project, your primary customers are the teams consuming the API. Ideally, you would treat your documentation as your User Interface and as such, it should get just as much attention and testing as everything else.

## SWAGGER
The swagger documentation tool enjoys a high popularity. It results in pretty documentation which does come from the code, but has similar problems which comments do as far as getting out of date. Simply generating documentation from code just gives objects and the docs still need to be extended by hand. Additionally the docs can still be inaccurate.

## IDEAL CASE
The ideal for documentation is a way to auto generate similar to swagger, but be connected to tests. The documentation which results will still need some editing by hand to truly be useful, but coming from tests increases confidence in the docs.

# HANDLING DEPENDENCIES

## DOWNSTREAM TEAM
Most API projects will be paired with a team building some sort of client, typically mobile. Sometimes this team only exists in theory, other times they will be already working, and other times they will be a project which starts up at the same time.

Best case scenario, you will be able to work closely together to define things like the contract, can test against each other easily, and have a good working relationship.

This part of the document would be completely unnecessary if the best case scenario ever happened. If you are on a unicorn project, skip this section and bravo to you.

Chances are pretty high an upstream team will lag behind, is either not co-located or you cannot work closely with them for some other reason, and has a slightly different understanding of various parts from your team. This is understandable and gives the API team both an edge in influencing the upstream team and a concern about how things will look once the upstream team finishes.

The top recommendation for working with an upstream team would be to develop some full stack user flows and integration tests which can run on every check in should partially alleviate concerns about interoperability. Getting a set of pact tests going where the two teams agree on the contract and set up independent tests to make sure both teams are obeying the contract at the same time will help keep down integration problems.

Ultimately, understand the upstream team is your first and primary customer. They need to be able to use the API in an efficient manner which fits the flows they are enabling. When deciding on story priority order, it helps to understand (preferably using user flows) what features they are enabling next and what they will need from the API team.

## UPSTREAM DEPENDENCIES
Most API projects will also deal with one, if not multiple dependencies. These dependencies could have volatile test environments, have unexpected ways of responding, or depending on the project, these dependencies could even have work going on them while you are trying to develop against them!

In these instances, many of the above suggestions will still be helpful, but there are additional things you can do depending on which issues you are facing.

### DEPENDENCIES UNDER DEVELOPMENT
These dependencies will have a team actively working on them for various reasons. This team is hopefully an ally of some kind and will respond to requests, but even if the team isn’t actively helping yours, there are steps you can take.

Contract Tests are the big deal here. These tests simply check that the contract of the call you are using downstream has not changed. Ideally these tests would run every time the other team changes something, but if you do not have insight into that (which is normal), you can figure out approximately how often the other team is expected to push changes and code based on that. Past projects have used every 2 hours during working hours, just once a day, and just once a week after the designated weekly “push time” .

### UNRELIABLE DEPENDENCIES
The generic good practice is to setup some sort of health check monitoring which is capable of notifying the appropriate people when the dependency is down. Hopefully your team and whoever is supporting the dependency are able to work out a way to make it more reliable in the future.

# PERFORMANCE
APIs are unique in that the lack of GUI does make it easier to run reliable performance tests against them. Most good practices from general software development still apply here (eg, have a separate environment, use the same data set for repeat runs for reliable results) with the addendum that if you can procure an environment just for testing, performance testing can absolutely be part of the pipeline.

Even if you cannot procure such an environment, you can still use throughput tests against the same environment you use for other automated tests. These throughput tests simply notify if the time it takes to make a call has significantly changed in some way.

Paired with monitoring metrics in production, you can build a reasonable, layered approach to watching the performance of your project.

# EXTERNAL TESTING TEAMS
The biggest thing to remember with other teams working on the same project is everyone is on the same side. We all succeed if the project succeeds. It is really easy to get caught in the trap of acting like other teams are an enemy of some kind and develop a toxic relationship.

## TRIAGE MEETINGS
They suck. If you are capable of replacing them with something which works better, I want you to teach me your ways.

These serve a purpose where most API projects wind up dealing with an external testing team who find defects and are not sure where the defects should go. The goal for this meeting, as in all meetings, is to be done with as accurate results as possible.

On previous projects, I have heavily encouraged the testing teams to contact the API teams about defects which could potentially be from our side so we can investigate them prior to the meeting – if we are lucky, we can narrow down how many defects need to be discussed this way and limit the meeting to defects which are tricky, have business repercussions (eg, solving it would result in a change or the bug itself is the result of an unexpected scenario which should be handled) or are otherwise not easily dealt with.

# USEFUL TOOLS OF NOTE

## POSTMAN
Useful for manual testing, sharing collections across the team, and the team behind it is adding many features.

Can attach a theoretical postman script of what should work to a story under development or to a defect

## REST ASSURED
Useful for automated tests in Java due to its DSL.