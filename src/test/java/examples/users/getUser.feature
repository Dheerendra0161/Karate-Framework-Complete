Feature: GET request to retrieve users from reqres.in

  Scenario: Retrieve users from page 2 and validate the response
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200

    And print '***********************************:', responseStatus

    And match responseHeaders['Content-Type'] contains 'application/json; charset=utf-8'
    And match response.page == 2
    And print 'Response Status:', responseStatus
    And print '***********************************:'
    And match response.per_page == 6

    And match response.total == 12

    And match response.total_pages == 2

    And match response.data[0].id == 7

    And match response.data[0].email == 'michael.lawson@reqres.in'

    And match response.data[0].first_name == 'Michael'

    And match response.data[0].last_name == 'Lawson'
    And print 'Response Status:', responseStatus

    And match response.data[0].avatar == 'https://reqres.in/img/faces/7-image.jpg'





