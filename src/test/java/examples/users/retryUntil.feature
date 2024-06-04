Feature: Retry Mechanism Example

  Scenario: Retry GET request until response status is 200
    Given url 'https://reqres.in/api/users'
    When retry until responseStatus == 200
    Then method get

  Scenario: Retry GET request with custom options
    Given url 'https://reqres.in/api/users'
    And configure retry = { count: 5, interval: 2000 }
    When retry until responseStatus == 200
    Then method get
