Feature: Example Feature

  Background:
    * callonce read("classpath:examples/users/callOnce/common.feature")

  Scenario: Scenario 1
    Given param id=1
    When method GET
    Then status 200

  Scenario: Scenario 2
    Given param id=2
    When method GET
    Then status 200
