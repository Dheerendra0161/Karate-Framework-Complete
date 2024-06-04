Feature: Create a new User

  Scenario: Create a user with hardcoded payload
    Given url 'https://reqres.in/api/users'
    And request
    """
    {
      "name": "Dheerendra",
      "job": "leader"
    }
    """
    When method post
    Then status 201
    And print response
#    And match response.name == 'morpheus'
#    And match response.job == 'leader'
#    # Optionally print the response
#    And print response


  Scenario: Create a user with generated payload using the faker library
    Given url 'https://reqres.in/api/users'
#  use the * def keyword to define the objects and then structure

# Import the Java Faker library and create an instance of the Faker class
    * def datafaker = Java.type('com.github.javafaker.Faker')

# Initialize a new instance of the Faker class
    * def faker = new datafaker()

# Generate a random ID using the Faker instance
    * def fakeID = faker.number().randomNumber()


#     creating the JSON payload object array list
    * def fakeEmail = faker.internet().emailAddress()
    * def fakePhone = faker.phoneNumber().phoneNumber()
    * def fakeAddress = faker.address().fullAddress()
    * def cityName = faker.address().city()
    * def stateName = faker.address().state()
    * def postalCode = faker.address().zipCode()

#     creating creating  array list
    * def requestPayload = {}
    * requestPayload.id=fakeID
    * requestPayload.Email=fakeEmail
    * requestPayload.Phone=fakePhone
    * requestPayload.Adress=fakeAddress
    * requestPayload.Adress=[]
    * requestPayload.Adress[0]={}
    * requestPayload.Adress[0].city=stateName
    * requestPayload.Adress[0].state=stateName
    * requestPayload.Adress[0].pinCode=postalCode
    And request requestPayload
    When method post
    Then status 201
    And print response


  Scenario: Create a user payload from the external source
    # Set the base URL for the API
    Given url 'https://reqres.in/api/users'

    # Read the JSON payload from an external file and assign it to a variable
    * def requestPayLoad = read("Payloads/JSONFile.json")

    #  To change the existing JSON object value from outside use set keyword
    * set requestPayLoad.id = 256161

      # Print the contents of the payload to the console for debugging purposes
    * print requestPayLoad
    # Set the request body to the JSON payload
    And request requestPayLoad

    # Send a POST request to the given URL with the request body
    When method post
    # Verify that the HTTP status code of the response is 201 (Created)
    Then status 201
