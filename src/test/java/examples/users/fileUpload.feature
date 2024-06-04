Feature: Upload Image to Sirv API

  Background:
    * url 'https://api.sirv.com/v2/files/upload'

  Scenario: Upload Image
    Given path '/?filename=/FileDkv2'
    And header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IkZjUEtqUFJpR3B0WEt5ZndUa3hXQjg0UmlMeCIsImNsaWVudE5hbWUiOiJEaGVlcnVBUEkiLCJzY29wZSI6WyJhY2NvdW50OnJlYWQiLCJhY2NvdW50OndyaXRlIiwidXNlcjpyZWFkIiwidXNlcjp3cml0ZSIsImJpbGxpbmc6cmVhZCIsImJpbGxpbmc6d3JpdGUiLCJmaWxlczpyZWFkIiwiZmlsZXM6d3JpdGUiLCJmaWxlczpjcmVhdGUiLCJmaWxlczp1cGxvYWQ6bXVsdGlwYXJ0IiwiZmlsZXM6c2hhcmVkQmlsbGluZyIsInZpZGVvcyIsImltYWdlcyJdLCJpYXQiOjE3MTY0NjczMDQsImV4cCI6MTcxNjQ2ODUwNCwiYXVkIjoiaGRxZHplcTV0eG5vcHhyYjRqaW9weG5paXp2YWFucjMifQ.K9Qa5P6WKQ9RmiAX1hicDOy4fZDe0M2CuqSGUFWfWSk'
    And request read('Payloads/Image2.png')
    And header Content-Type = 'image/png'
    When method post
#    Then status 201
