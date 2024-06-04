Feature: Calling JavaScript Functions

  Scenario: Inline JavaScript function example-1
    * def getName = function() { return 'John Doe'; }
    * def name = getName()
    * match name == 'John Doe'
    * print name

  Scenario: Using the functions() syntax to define a JavaScript function
    * def getValues =
      """
        function() {
            return { name: 'KD Caller Doe', age: 30 };
        }
      """
    * def values = getValues()
    * match values.name == 'KD Caller Doe'
    * match values.age == 30
    * print values.name + ' is ' + values.age + ' years old'

  Scenario: Inline JavaScript function using the function() syntax
    * def getValues =
      """
        function(name, age) {
           let values = name + ' is ' + age + ' years old';
           return values;
        }
      """

    * def values = getValues('Dheerendra Doe', 30)
    * print values





  Scenario: Call and print JavaScript functions
    * def getFunctions = call read('classpath:examples/users/utils/javaScript.js')
    * def descriptions = getFunctions.Descriptions('John', 25)
    * def city = getFunctions.City('New York')
    * def address = getFunctions.Address('123 Main St')
    * print descriptions
    * print city
    * print address

