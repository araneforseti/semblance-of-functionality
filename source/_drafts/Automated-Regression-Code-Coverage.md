---
title: Automated Regression Code Coverage
tags:
---

Unit test code coverage good, branch coverage better
100% isn’t a meaningful number, but 50% is (low is a smell, high is not necessarily good)
UAT, Regression, and acceptance tests should not be used - think of them as QA tools (see other blog post) to aid in the reduction of the manual effort required (or freeing up resources away from regression and the like enabling them to be put towards things like exploratory testing)
Most of code base tends to be around variations which might not be in automated regression tests (trying to focus on happy case)
Code coverage is bad <get some reasons - there was an email sent out where someone was talking about how code coverage is misleading>
Misleading (just because code is covered doesn’t mean business case is)
Checking the wrong thing
Purpose of automated regression tests is to provide a way to repeatedly do regression testing without using manual resources (which we prefer to put towards things like exploratory testing)
Tests care about business cases, not code logic
Figure out a way to radiate business case coverage instead?
That could be an interesting project actually, be something BAs and QAs could collaborate on in fact
Maybe when writing requirements, pair together on what cases should be covered?
QAs update coverage between automated, manual, and not?
There is probably a way to automatically update which ones are automated if the names are kept consistent
This could be cool

Alternative:
Get % of regression tests which are automated. Find automated # from build tool and manual # by parsing documentation kept by QAs (eg, count number of rows in an excel doc) in order to calculate percentage.

Alternate alternative:
Combine code coverage percentage and automation percentage. Track the trends of both and if the trends don’t follow each other (eg, code coverage should go up if automation coverage goes up), throw a warning or fail the build.
This could be accomplished by having a script find the trend lines from sonar and by tracking the % automated as mentioned above in a way which stores historic data. Script then compares trend lines.
This helps make sure the automation percentage isn’t inflated by just testing around one area. (Although, if the QAs are only automating tests they would run manually, this might not be necessary)

Either way, unit test coverage is a separate metric

User flow automation % metric should follow a similar viewpoint as unit test code coverage - we do not want to dip low, but we are not assuming a high number is the ultimate factor.
