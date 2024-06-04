Feature: Karate Repeat Method Examples

  Background:
    * def repeatCount = 4  // Define the number of repetitions

  Scenario: Print Values 4 Times
    * def dataGen = function(){ return 'Hello, Dheerendra!' }
    * def data = karate.repeat(repeatCount, dataGen)
    * print data



  Scenario: Generate and Print Random Test Data
    * def repeatCount = 5  // Define the number of repetitions
    * def testData = Java.type('examples.users.FakeTestData.TestData')

    # Function to generate random ID data
    * def generateIDData = function() { return testData.getRandomIDData() }
    * def idData = karate.repeat(repeatCount, generateIDData)
    * print 'Random ID:', idData

    # Function to generate random name data
    * def generateNameData = function() { return testData.getNameData() }
    * def nameData = karate.repeat(repeatCount, generateNameData)
    * print 'Random Name:', nameData

    # Print random email data
    * def generateEmailData = function() { return testData.getRandomEmailData }
    * def emailData = karate.repeat(repeatCount, generateEmailData)
    * print 'Random email:', emailData






