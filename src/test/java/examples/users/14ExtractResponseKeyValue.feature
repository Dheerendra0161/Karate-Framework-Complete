Feature: Extract specific part of token from response

  Background:
    # Set the base URL for the API
    * url 'https://api.sirv.com/v2'

  Scenario: Extract token prefix from response
    Given path 'token'
    And request { clientId: 'FcPKjPRiGptXKyfwTkxWB84RiLx', clientSecret: 'Wya6ZD1u5BwjFiozs0OmgmGljEHsgd2LtncWuWBchnWZq9S0RCjW6pFvuvuoAb8kuGQ2qNidrxnglJiEzBFZyA==' }
    When method post
    Then status 200

    # Extract the token from the response
    * def token = response.token

    # Split the token to get the part before the first period
#   token.split('\.') - string is split into an array of strings where ever is . in the string
#    [  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9',  'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ',  'SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c']
    * def tokenParts = token.split('\.')
#  tokenParts[0] extracts the first part (the header) of the token and stores it in the variable tokenPrefix
    * def tokenPrefix = tokenParts[0]

    # Assert the extracted part is as expected
    * match tokenPrefix == 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9'



