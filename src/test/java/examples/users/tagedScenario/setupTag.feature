Feature:This feature going to explain @setup

  Scenario: Setup the example @setup-1
#     @set is basically used to setup the preconditions for the test case and avoid the used of @data annotation and @ignore annotation

    * def jsonObject = call read('@setup')
    * print jsonObject


    #    if you don't want to use call read('@setup') then you can directly use the json object in the test case
  Scenario: Setup the example @setup-1
#     @set is basically used to setup the preconditions for the test case and avoid the used of @data annotation and @ignore annotation
#    To use the Data1 in the test case
    * def jsonObject = karate.setup('Data1')
    * print jsonObject

# When multiple @setup annotations are present, only the first one is recognized and executed by Karate, from where ever you call the scenarios
# karate.setup('Data1') then it will execute Data1 scenario.
  @setup=Data1
  Scenario: Test data to be used in the test case @setup-1
    * def jsonObject =
    """
    {
      "id": 1,
      "name": "Dheerendra",
      "age": 30,
      "ipAddress": "109.169.248.247"
    }
    """

  @setup=Data2
  Scenario: Test data to be used in the test case @setup-1
    * def jsonObject =
    """
    {
      "id": 2,
      "name": "Vikas",
      "age": 30,
      "ipAddress": "109.169.248.247"
    }
    """




