Feature:Karate Repeat Method - Call JS Function & Feature File For N Times

  Scenario:Karate repeat method-single value n times
    * def fun = function(){ return 'karate'; }
    * def result = karate.repeat(5, fun)
    * print 'result:', result
#    it will print array list of 5 times karate
  Scenario:Karate repeat method-single value n times by passing the argument
    * def fun = function(a){ return a+':'+'karate'; }
    * def result = karate.repeat(5, fun)
    * print 'result:', result
#    karate.repeat, it internally uses the iteration index as the argument to the function by default.
#    it will print array list of 5 times karate with index value like 0:karate, 1:karate, 2:karate, 3:karate, 4:karate

  Scenario:Karate repeat method-single value n times by Ignoring the index the String argument "The"
    * def fun = function(a){ return 'The' + ':' + 'karate'; }
    * def result = karate.repeat(5, fun)
    * print 'result:', result
# now it will print array list of 5 times The:karate


  Scenario:Karate repeat method-single value n times by Using a Wrapper Function and now passing the desired argument
    * def fun = function(a){ return a + ':' + 'karate'; }
    * def result = karate.repeat(5, function() { return fun('The'); })
    * print 'result:', result
#    it will print array list of 5 times The:karate


  Scenario: Repeat method using the external file and calling the function from the external file
    * def testData = Java.type('examples.users.FakeTestData.TestData')
    * def resultEmailData = karate.repeat(5, function() { return testData.getRandomEmailData(); })
    * print resultEmailData
    # it will print an array list of 5 times random email data




  Scenario: Repeat the feature file multiple times
    * def callFeature = function() { return karate.call('callable.feature'); }
    * def dataFeature = karate.repeat(5, callFeature)
    * print 'result:', dataFeature
#    it will call the callable.feature file 5 times ie {
#    "password": "dheerendra061@123",
#    "username": "dheerendra061"
#  }


#  Search solution for the below scenario
#  Scenario: Repeat the feature file multiple times, calling one scenario into another scenario of the same file
#    * def callFeature = function() { karate.call('karateRepeatMethods1.feature@Repeat method using the external file and calling the function from the external file'); }
#    * def dataFeature = karate.repeat(5, callFeature)
#    * print 'result:', dataFeature


