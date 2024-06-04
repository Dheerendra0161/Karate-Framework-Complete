Feature: JSON path concept in details

  Scenario:Basic json path concepts
#    Syntax	Description
#    $	Represents the root element.
#    . or []	Denotes the child operator.
#    *	Wildcard matches all elements.
#    ..	Recursive descent.
#   @	Represents the current node being processed.
#   ?()	Applies a filter expression.
#   ()	For script expressions.

    * def jsonObject =
    """
    {
    "name": "John Doe",
    "age": 30,
    "isStudent": false,
    "email": "johndoe@example.com",
    "address": {
        "street": "123 Main St",
        "city": "Anytown",
        "state": "CA",
        "postalCode": "12345"
    },
    "phoneNumbers": [
        {
            "type": "home",
            "number": "555-1234"
        },
        {
            "type": "mobile",
            "number": "555-5678"
        }
    ],
    "education": [
        {
            "degree": "Bachelor of Science",
            "major": "Computer Science",
            "university": "University of Anytown",
            "year": 2015
        },
        {
            "degree": "Master of Science",
            "major": "Software Engineering",
            "university": "Tech University",
            "year": 2018
        }
    ],
    "workExperience": [
        {
            "company": "Tech Solutions Inc.",
            "position": "Software Developer",
            "startDate": "2018-06-01",
            "endDate": "2020-08-31"
        },
        {
            "company": "Innovative Apps LLC",
            "position": "Senior Developer",
            "startDate": "2020-09-01",
            "endDate": "Present"
        }
    ]
}

    """


#     Karate is a global object which contains the multiple methods

    * match jsonObject.name == "John Doe"
    * def Name = get jsonObject $.name
    * print Name

# Without using the get method
    * def Name1 = jsonObject.name
    * print Name1

    # Use Karate.get method to extract the 'name' value
    * def Name2 = karate.get('$jsonObject.name')
    * print Name2
#     or
    * def Name2a = karate.get('jsonObject.name')
    * print Name2a

    # Use Karate with jsonPath to extract the 'name' value
    * def Name3 = karate.jsonPath(jsonObject, '$.name')
    * print Name3
# Match the extracted 'name' values using karate.get and karate.jsonPath
    * match Name2 == Name3




# printing the desired value
    * print karate.jsonPath(jsonObject, '$.workExperience[*].position')
    * print karate.get ('$.education[1].major')



    * print jsonObject
    * print jsonObject['education'][1]['major']

    * print karate.jsonPath(jsonObject, '$.education[1].major')

    * print karate.jsonPath(jsonObject,'$.education..major')
#     where ever object is present you can search by ..
    * print karate.jsonPath(jsonObject,'$..major')

    * print karate.jsonPath(jsonObject,'$..workExperience[*].startDate')

    * print karate.jsonPath(jsonObject,'$.education[*].major')
#    [start:end:step]	array slice operator
    * print karate.jsonPath(jsonObject,'$.education[1:2].major')
#    ?()	applies a filter (script) expression.
    * print karate.jsonPath(jsonObject,'$.education[?(@.degree=="Bachelor of Science")]')
