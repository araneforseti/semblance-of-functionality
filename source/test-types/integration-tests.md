---
title: Integration Tests
date: 2021-04-23 15:09:46
---

These tests take on a wide range of forms, as any test whose purpose is to test integration points (as in, where your project integrates with an external-to-the-project entity). Each integration suite should address a specific concern and be named appropriately (see {% post_link What-is-in-a-Name 'What is in a Name' %} post for details)

**What Goes Here**

Here is a the list of what to consider for integration tests:

- Another project at same company under development?
  - Consumer Driven Contract Tests (eg, pact)
- 3rd party dependencies which change their contract?
  - Integration Tests running against a mock
  - Contract Tests
- Dependencies whose integration/test environment is unreliable?
  - Heartbeat Tests (or some form of monitoring) which acts as a check before relevant Integration Tests
  
Ideally, you are discovering what concerns to address in integration tests via the {% post_link swiss-cheese 'Swiss Cheese Model' %}, specifically the architecture section.

**Why Separate Run From Unit Tests**

We split these tests out from unit tests because these tests require something in their setup which unit tests will not. Additionally, these will generally run slower than unit tests.

There are a lot of different types of Integration Tests out there! Even if nothing on this list matches your exact need, you can probably come up with a new way of testing. This is the most flexible category of the pyramid and allows for a lot more innovation in dealing with difficult test environments.

**Pros**:
- Test integration points
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