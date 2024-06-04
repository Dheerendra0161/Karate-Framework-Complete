Feature:Tagging of  scenarios and features

  @Smoke
  @Regression
  Scenario: Test scenario 1
    * def name1 = 'Smoke test scenario 1'
    * print name1

  @Smoke
  @Regression
  @End2End
  Scenario: Test scenario 2
    * def name2 = 'Smoke test scenario 2'
    * print name2


  @Smoke
  @Regression
  Scenario: Test scenario 3
    * def name3 = 'Smoke test scenario 3'
    * print name3

  @Smoke
  @Sanity
  Scenario: Test scenario 4
    * def name4 = 'Smoke test scenario 4'
    * print name4

  @Regression
  @Sanity
  Scenario: Test scenario 5
    * def name5 = 'Smoke test scenario 5'
    * print name5


  @dkv
  Scenario: Test scenario 6
    * def name6 = 'Smoke test scenario 6'
    * print name6
#    * call read('@dkv')
# calling the scenario 7 in the scenario of 6 using the custom tag @dkv.

  @ignore
  Scenario: Test scenario 7
    * def name7 = 'This is the scenario 7 which is going to be called in scenario 6'
    * print name7
#    Note this scenario will be ignored as it is tagged with @ignore but can be implemented in another scenarios by calling it.



