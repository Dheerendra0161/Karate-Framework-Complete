Feature:Create Nested Complex JSON Object & Arrays in Karate Framework

  Scenario:Create a simple JSON Object
    * set jsonObjecPayload
      | path  | values            |
      | id    | 16256             |
      | name  | "Vivek"           |
      | email | "Vivek@gmail.com" |
      | Phone | 98956824675       |
      |       |                   |
    * print jsonObjecPayload
#    {
#  "id": 16256,
#  "name": "Vivek",
#  "email": "Vivek@gmail.com",
#  "Phone": 9.8956824675E10
#}

  Scenario: Manipulate the existing simple JSON Object
    * def existingJsonObject = {name: 'Brabo'}
    * set existingJsonObject
      | path  | values            |
      | id    | 16256             |
      | name  | "Vivek"           |
      | email | "Vivek@gmail.com" |
      | Phone | 98956824675       |
      |       |                   |
    * print existingJsonObject
#    {
#  "name": "Brabo",
#  "adress": {
#    "id": 16256,
#    "name": "Vivek",
#    "email": "Vivek@gmail.com",
#    "Phone": 9.8956824675E10
#  }
#}
#


  Scenario: Manipulate the existing simple JSON Object by adding the object
    * def existingJsonObject = {name: 'Brabo'}
    * set existingJsonObject.details
      | path  | values            |
      | id    | 16256             |
      | name  | "Vivek"           |
      | email | "Vivek@gmail.com" |
      | Phone | 98956824675       |
      |       |                   |
    * print existingJsonObject
#{
#  "name": "Brabo",
#  "details": {
#    "id": 16256,
#    "name": "Vivek",
#    "email": "Vivek@gmail.com",
#    "Phone": 9.8956824675E10
#  }
#}
#



  Scenario:Create a Nested JSON Object
    * set jsonObjecPayload
      | path           | values            |
      | id             | 16256             |
      | name           | "Vivek"           |
      | email          | "Vivek@gmail.com" |
      | Phone          | 98956824675       |
      | adress.country | "India"           |
      | adress.statee  | "Uttar Pradesh"   |
      | adress.Dist    | "Saket"           |

    * print jsonObjecPayload
#     {
#  "id": 16256,
#  "name": "Vivek",
#  "email": "Vivek@gmail.com",
#  "Phone": 9.8956824675E10,
#  "adress": {
#    "country": "India",
#    "statee": "Uttar Pradesh",
#    "Dist": "Saket"
#  }
#}


  Scenario:Create a Nested JSON Object and array
    * set jsonObjecPayload
      | path                     | values            |
      | id                       | 16256             |
      | name                     | "Vivek"           |
      | email                    | "Vivek@gmail.com" |
      | Phone                    | 98956824675       |
      | adress.Local[0].country  | "India"           |
      | adress.Local[0].state    | "UP"              |
      | adress.Local[0].dist     | "Varanasi"        |
      |                          |                   |
      | adress.Global[0].country | "USA"             |
      | adress.Global[0].state   | "New York"        |
      | adress.Global[0].dist    | "Ohayo"           |
    * print jsonObjecPayload
#     {
#  "id": 16256,
#  "name": "Vivek",
#  "email": "Vivek@gmail.com",
#  "Phone": 9.8956824675E10,
#  "adress": {
#    "Local": [
#      {
#        "country": "India",
#        "state": "UP",
#        "dist": "Varanasi"
#      }
#    ],
#    "Global": [
#      {
#        "country": "USA",
#        "state": "New York",
#        "dist": "Ohayo"
#      }
#    ]
#  }
#}

  Scenario:Create a simple JSON Object with change variable from outside
    * def idValue = 2653
    * def nameOfStudent = "sheetal"

    * set jsonObjecPayload
      | path  | Value               |
      | id    | idValue             |
      | name  | nameOfStudent       |
      | email | "sheetar@gmail.com" |
      | Phone | 98956445675         |
    * print jsonObjecPayload
#    {
#  "id": 2653,
#  "name": "sheetal",
#  "email": "sheetar@gmail.com",
#  "Phone": 9.8956445675E10
#}




#  Each entry in the object represents an array element, with keys "0", "1", and "2".
#Each key maps to another JSON object containing the properties "name", "id", and "email".
  Scenario: Creating simple array object
    * set jsonObjecPayload
      | path  | 0            | 1           | 2             |
      | name  | "dheerendra" | "Vivek"     | "Vikas"       |
      | id    | 012          | 125         | 236           |
      | email | "dkv@gmail"  | "vik@gmail" | "vikas@gmail" |
    * print jsonObjecPayload
#    {
#    "name": "dheerendra",
#    "id": 10,
#    "email": "dkv@gmail"
#  },
#  {
#    "name": "Vivek",
#    "id": 125,
#    "email": "vik@gmail"
#  },
#  {
#    "name": "Vikas",
#    "id": 236,
#    "email": "vikas@gmail"
#  }
#]
  Scenario: Creating simple array object
# "When Karate encounters a null or empty value in a data table cell, it does not include that key-value pair in the resulting JSON object. However, if there is a whitespace character in the cell, the corresponding value in the JSON object will be set to an empty string."
    * set jsonObjecPayload
      | path  | 0            | 1      | 2             |
      | name  | "dheerendra" |        | "Vikas"       |
      | id    | 012          | (null) | 236           |
      | email | "dkv@gmail"  | ""     | "vikas@gmail" |
    * print jsonObjecPayload
#[
#  {
#    "name": "dheerendra",
#    "id": 10,
#    "email": "dkv@gmail"
#  },
#  {
#    --------
#    "id": null,
#    "email": ""
#  },
#  {
#    "name": "Vikas",
#    "id": 236,
#    "email": "vikas@gmail"
#  }
#]

  Scenario: Creating simple array object
    * def fakeData = Java.type("examples.users.FakeTestData.TestData")
    * def IdSudent = fakeData.getRandomIDData
    * def NameSudent = fakeData.getNameData
    * def EmailSudent = fakeData.getRandomEmailData

    * set jsonObjecPayload
      | path  | 0           | 1           | 2             |
      | name  | NameSudent  | "Vivek"     | "Vikas"       |
      | id    | IdSudent    | 125         | 236           |
      | email | EmailSudent | "vik@gmail" | "vikas@gmail" |
    * print jsonObjecPayload