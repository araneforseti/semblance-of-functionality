---
title: Unit Tests
date: 2021-04-23 15:09:32
---

Everyone’s favorite test type – it is fast, small, sleek, the perfect companion. Ideally these tests will test pieces of logic in isolation – both from the rest of the software being developed and from the external services the software depends on.

These days, most everyone is on the “write tests” bandwagon, so most languages will have some form of testing framework built in. If the built in framework is not your cup of tea, there are usually many others out there to choose from!

![Test Pyramid](test-pyramid.png)

As you can see in our test pyramid above, unit tests occupy the base of the pyramid. The rule of thumb with these tests is “If it fits, it is a unit test!” If you can test something in the unit layer without creating complicated tests to deal with dependencies, this is where this test goes!

For those things you want to test which will require complicated setup or has a heavy reliance on dependencies, there are many other test types which fit your needs better. (See Integration Tests for an introduction to tests which excel at handling other dependencies). The biggest reason to keep these things in a separate test type is to keep your unit tests fast and reliable enough they are not painful to run. These are the tests which you want to run before you check-in and act as your base “nothing is initially broken” tests.

There are many great resources out there for unit tests and many people have taken the concept of unit tests and created many innovative tools (eg, koans) with them!

Something to note with unit tests is the debate between isolated tests (where the test touches nothing beyond the class under test and even things from the same code base are mocked) vs social tests (just worry about mocking external affairs). I personally fall on the social side – if a class uses a class under it to implement its purpose, I feel like that interaction should not be mocked as it can create a brittle and not accurate test. Mocks should be used to increase the stability (eg, external dependencies) and speed of a test. If a method under tests has an undue reliance on other objects which slows it down, think about potential refactors or redesign before you reach for mocking.

# QUICK SHEET

**Pros**:
- Quick-running
- Reliable
- Isolated

**Cons**:
- Isolation means you can’t test everything

**DO**:
- Test your business logic

**DON’T**:
- Create tests which require external services or the software running to pass

# EXAMPLE PSEUDO-CODE TEST
If there exists a method:
Int add(int a, int b)

Test Suite:
Add_two_positives:
Assert add(2, 2) == 4

Add_two_negatives:
Assert add(-1, -3) == -4

Add_zeros:
Assert add(0, 0) == 0

Add_large_numbers:
Assert add(10000000000000, 30000000000000) == 40000000000000

Throw_error_cause_number_is_too_damn_big:
Assert add(1e14, 3e14) throws Exception(“Too Damn Big”)