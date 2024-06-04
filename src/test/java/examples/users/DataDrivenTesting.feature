Feature: Data-Driven Testing Example

  Scenario Outline: Verify Employee Details for '<name>'
    * def fName = '<name>'
    * def stID = <id>
    * def stPosition = <isManager>
    * print 'Name:', fName
    * print 'ID:', stID
    * print 'Is Manager:', stPosition
#    match statements are used to verify the types of the variables:
    * match stID == '#number'
    * match fName == '#string'
    * match stPosition == '#boolean'


    Examples:
      | name    | id  | isManager |
      | "John"  | 101 | true      |
      | "Alice" | 102 | false     |
      | "Bob"   | 103 | true      |


#  Scenario Outline: Verify Employee Details for '<name>' using ! Indicates that the id column values are not strings and should be treated as numbers.
#    * def fName = '#(name)'
#    * def stID = #(id)
#    * def stPosition = #(isManager)
#
#    * print 'Name:', name
#    * print 'ID:', id
#    * print 'Is Manager:', isManager
#
#
#    * match fName == '#string'
#    * match stID == '#number'
#    * match stPosition == '#boolean'
#
#    Examples:
#      | name    | id! | isManager! |
#      | "John"  | 101 | true       |
#      | "Alice" | 102 | false      |
#      | "Bob"   | 103 | true       |
#

  Scenario Outline: Verify Employee Details from JSON
    * def jsonEmployees =
    """
    [
      { "name": "Dheeru", "age": 30, "isManager": true },
      { "name": "Vikas", "age": 25, "isManager": false },
      { "name": "Prasad", "age": 35, "isManager": true }
    ]
    """

#    Use __num: Instead of using a custom placeholder for the index, __num is used to refer to the current row number in the examples table.
    * def employee = jsonEmployees[__num]
    * def jsonDoc =
    """
    {
      "name": "<name>",
      "age": <age>,
      "isManager": <isManager>
    }
    """
    * jsonDoc.name = employee.name
    * jsonDoc.age = employee.age
    * jsonDoc.isManager = employee.isManager
    * print jsonDoc

    Examples:
      | name   | age | isManager |
      | Dheeru | 30  | true      |
      | Vikas  | 25  | false     |
      | Prasad | 35  | true      |


  Scenario Outline: Verify Employee Details Read the Data from the json file
    * def jsonEmployees = read('classpath:examples/users/Payloads/employees.json')
    * def employee = jsonEmployees[__num]
    * def jsonDoc =
    """
    {
      "name": "<name>",
      "age": <age>,
      "isManager": <isManager>
    }
    """
    * jsonDoc.name = employee.name
    * jsonDoc.age = employee.age
    * jsonDoc.isManager = employee.isManager
    * print jsonDoc
    * match jsonDoc == employee

    Examples:
      | name   | age | isManager |
      | Dheeru | 30  | true      |
      | Vikas  | 25  | false     |
      | Prasad | 35  | true      |


  Scenario Outline: Verify Employee Details from the CSV file <name>
    * def csvEmployees = read('classpath:examples/users/Payloads/MOCK_DATA.csv')
    * def employee1 = csvEmployees[__num]
    * def jsonDoc =
    """
    {
      "name": "<name>",
      "age": <age>,
      "isManager": <isManager>
    }
    """

    * jsonDoc.name = employee1.name
    * jsonDoc.age = employee1.age
    * jsonDoc.isManager = employee1.isManager
    * print jsonDoc
#    * match jsonDoc == { name: '<name>', age: <age>, isManager: <isManager> }

    Examples:
      | name  | age | isManager |
      | Yurik | 48  | true      |
      | Roz   | 81  | false     |
      | Max   | 68  | false     |


  Scenario Outline: Verify Employee Details from the JSON file
    * def employee = __row
    * print employee
    * match employee.firstName == '<firstName>'
    * match employee.lastName == '<lastName>'
    * match employee.department == '<department>'

    Examples:
      | read('classpath:examples/users/Payloads/employee1.json') |
# Note : With __row, you access individual fields using dot(.) notation, while with [__num], you access the entire row as an object.