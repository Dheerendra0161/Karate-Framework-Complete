Feature: Abort and Fail Scenarios based on conditions in Karate

  Scenario Outline: Abort scenario based on condition
    Given url <urlApi>
    When method get
    Then status <statusCode>
    * def responseData = response

    * if (responseStatus != 200) karate.abort('Status code is not 200')

    * print responseData[0].email

    Examples:
      | statusCode | urlApi                                       |
      | 200        | 'https://jsonplaceholder.typicode.com/users' |
      | 404        | 'https://jsonplaceholder.typicode.com/users' |



  Scenario: Abort scenario based on condition
    * def name  = 'DKV'
#    abort at classpath:examples/users/abortAndFail/karateAbortAndFail.feature:25
    * if (name != 'John') karate.abort()
    * print 'Name is John'

  Scenario: Fail scenario based on condition
    * def name  = 'Vikas'
#    it will fail definitely
    * if (name != 'John') karate.fail('Name is not John')
    * print 'Name is John'