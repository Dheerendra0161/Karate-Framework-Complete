Feature:Conditional logics example

  Scenario:Using the ternary operator
    * def statusCode = 200
    * def finalStatus = statusCode == 200 ? "Success" :"Failure"
    * print finalStatus
#   print Success

#   statusCode == 200 ? "Success" :"Failure" it is similar to
#    if (statusCode == 200) {
#    final_status = "Success";
#} else {
#    final_status = "Failure";
#}

  Scenario:Using the ternary operator with conditions && [And} operator
    * def statusCode = 404
    * def flag = true
    * def finalStatus = statusCode == 200 && flag == true ? "Success" : "Failure"
    * print finalStatus
#    Output  Failure

  Scenario:Using the ternary operator with conditions || [OR} operator
    * def statusCode = 404
    * def flag = true
    * def finalStatus = statusCode == 200 || flag == true ? "Success" : "Failure"
    * print finalStatus
#    Output Success

  Scenario:Using the ternary operator with conditions || [OR} operator
    * def statusCode = 404
    * def flag = false
    * def finalStatus = statusCode == 200 || flag == true ? "Success" : "Failure"
    * print finalStatus
# output Success

  Scenario:Using the ternary operator with conditions || [OR} operator
    * def statusCode = 404
    * def flag = false
    * def finalStatus = statusCode == 200 || flag == false ? "Success" : "Failure"
    * print finalStatus
# output Success

  Scenario:Using the ternary operator with conditions || [OR} operator
    * def statusCode = 201
    * def flag = false
    * def finalStatus = statusCode == 200 ? (flag == false ? "Success" : "Flag is true") : "Status code is not 200"
    * print finalStatus
#This expression assigns a value to the finalStatus variable based on two conditions:
#
#If statusCode is equal to 200:
#
#It checks if flag is false.
#If flag is false, it assigns "Success" to finalStatus.
#If flag is true, it assigns "Flag is true" to finalStatus.
#If statusCode is not equal to 200, it assigns "Status code is not 200" to finalStatus.


  Scenario: Using if conditions only
    * def statusCode = 200
    * def finalvalue = if(statusCode == 200 ) "Success"
    * print finalvalue
    * def finalvalue = if(statusCode != 200) "Failure"
    * print finalvalue
#    Output Success and null



  Scenario:Using ternary conditions and calling the feature file
    * def statusCode = 200
    * def finalvalue = statusCode == 200 ? karate.call('callable.feature') : "failled"
    * print finalvalue

  Scenario:Using the if conditions and calling the feature file
    * def statusCode = 201
    * def finalvalue = if(statusCode == 200 ) karate.call('callable.feature')
    * print finalvalue
#    if statusCode is 200 then it will call the feature file else it will return null

  Scenario:Using the if conditions and calling the feature file
    * def statusCode = 201
    * def finalvalue = if(statusCode == 200 ) karate.call('callable.feature')
    * print finalvalue

#    if statusCode is 201 it will return null


