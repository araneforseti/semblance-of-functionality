---
title: Integration Tests
date: 2021-04-23 15:09:46
---

These tests take on a wide range of forms and are essentially just all your tests which are not unit tests or end to end tests, but focus on the functionality of the integration between either object within or outside of your domain. The general gists of these tests are tests which have a complicated setup and/or tests which have external dependencies. You still want to be careful to make these tests as reliable as possible. As a result of trying to chase the idea of dependable tests, there are a lot of subtypes we can go into based on the situation.

**What Goes Here**

If you can create reliable tests, then there is nothing additional to consider, yay! If not, check the list of others below you can use to mitigate the issues you face:

- Dependencies which change their contract?
  - Integration Tests running against a mock
  - Contract Tests
- Dependencies whose integration/test environment is unreliable?
  - Heartbeat Tests (or some form of monitoring) which acts as a check before relevant Integration Tests

**Why Separate Run From Unit Tests**

We split these tests out from unit tests because these tests might require something in their setup which unit tests will not. Additionally, these will generally run slower than unit tests.

There are a lot of different types of Integration Tests out there! Even if nothing on this list matches your exact need, you can probably come up with a new way of testing. This is the most flexible category of the pyramid and allows for a lot more innovation in dealing with difficult test environments.

**Pros**:
- Test external integration
- Can create interesting test types which are specific to the situation you are in

**Cons**:
- Slow
- Reliant on external integrations

**DOs**:
- Test your integration with external dependencies

**DON’Ts**:
- Test your business logic if it can be tested in a Unit Test
- Test the functionality of the external dependency (if you do not trust it, a test is not going to fix this)

**Example Pseudo-Code Test**:

There exists a method:
add_product_to_database(product)

Example Test:

Product_is_added:
add_product_to_database(product)
assert product in database.get_products()