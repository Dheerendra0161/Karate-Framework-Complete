Feature: Test data setup for the test case

  @setup
  Scenario: Test data scenario
    # Read the JSON file
    * def jsonPayloadObject = read('classpath:examples/users/tagedScenario/employee2.json')
    * print jsonPayloadObject
    * jsonPayloadObject[0].firstName = 'Dheerendra'
    * jsonPayloadObject[1].firstName = 'Vikas'


  Scenario Outline: Verify Employee Details from the JSON file
    * print  __row

    Examples:
      | karate.setupOnce().jsonPayloadObject |

  Scenario Outline: Verify Employee Details from the JSON file-1
    * print  __row
    Examples:
      | karate.setupOnce().jsonPayloadObject |
