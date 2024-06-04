Feature: Fuzzy Matchers in Karate

  Scenario: Using various fuzzy matchers
#   fuzzy matchers  tools that allow for more flexible comparison between expected and actual values.
    * def response =
    """
    {
      "name": "John Doe",
      "age": 30,
      "email": "john.doe@example.com",
      "isManager": true,
      "addresses": [
        {
          "street": "123 Main St",
          "city": "Springfield",
          "zip": "12345"
        },
        {
          "street": "456 Elm St",
          "city": "Shelbyville",
          "zip": "67890"
        }
      ],
      "projects": ["Project A", "Project B"],
      "nullKey": null
    }
    """

    # Exact match
    * match response.name == "John Doe"

    # Presence checks
    * match response.email == "#present"
    * match response.nonExistentKey == "#notpresent"

    # Null checks
    * match response.nullKey == "#null"
    * match response.name == "#notnull"

    # Type matchers
    * match response.age == "#number"
    * match response.name == "#string"
    * match response.isManager == "#boolean"
    * match response.addresses == "#array"

    # Regular expressions
    * match response.email == "#regex ^[\\w.-]+@[\\w.-]+\\.\\w{2,}$"
    * match response.addresses[0].zip == "#regex ^\\d{5}$"

    # Custom matchers
    * def isValidZip = function(zip){ return zip.length == 5 }
    * match response.addresses[0].zip == '#? isValidZip(_)'
