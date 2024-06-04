Feature: Example Feature

  Background:
    * url 'https://jsonplaceholder.org'

  Scenario: Common Setup Steps
    Given path 'users'
    When method GET
    Then status 200
    * def response = response
    * print response

