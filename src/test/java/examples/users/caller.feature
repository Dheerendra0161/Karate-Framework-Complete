Feature: This feature file will call another feature file and pass the parameters to it

  Scenario: Calling callable feature file
    * def returnData = call read('classpath:examples/users/callable.feature')
    * print returnData
#     to print only the username
    * print returnData.username

  Scenario: Calling callable1 feature file
#     Here name should be same as in the feature file embedded expression  "clientID": "#(IdClient)", "clientSecret": "#(IdSecret)"
    * def IdClient = 'sdhdakshfkah43rnfhksadfh34'
    * def IdSecret = 'eoifd8hF5fkafllhakf785hzfsdf'
    * def returnData = call read('classpath:examples/users/callable1.feature')
    * print returnData
    * print returnData.name
    * print returnData.clientID

  Scenario: Calling callable1.feature file with parameters

#     Here name should be same as in the feature file embedded expression  "clientID": "#(IdClient)", "clientSecret": "#(IdSecret)"
    * def IdClient = 'sdhdakshfkah43rnfhksadfh34'
    * def IdSecret = 'eoifd8hF5fkafllhakf785hzfsdf'
    * def returnData = call read('classpath:examples/users/callable1.feature')
    * print returnData
    * print returnData.name
    * print returnData.clientID


  Scenario: Calling callable1.feature file with parameters using the json object
    * def IdClientDK = 'sdhdakshfkah43rnfhksadfh34'
    * def IdSecretDK = 'eoifd8hF5fkafllhakf785hzfsdf'
#     '#(IdClientDK)': "sdhdakshfkah43rnfhksadfh34",
#     '#(IdSecretDK)': "eoifd8hF5fkafllhakf785hzfsdf", will be replaced with the values of IdClientDK and IdSecretDK in the output
    * def params = { IdClient: '#(IdClientDK)', IdSecret: '#(IdSecretDK)' }
    * def returnData = call read('classpath:examples/users/callable1.feature') params
    * print returnData


  Scenario: Calling callable1.feature file using the tags success with parameters using the json object
    * def IdClientDK = 'sdhdakshfkah43rnfhksadfh34'
    * def IdSecretDK = 'eoifd8hF5fkafllhakf785hzfsdf'
    * def params = { IdClient: '#(IdClientDK)', IdSecret: '#(IdSecretDK)' }
    * def returnData = call read('classpath:examples/users/callable1.feature@success') params
    * print returnData


  Scenario: Calling callable1.feature file using the tags failure with parameters using the json object
    * def IdClientDK = 'sdhdakshfkah43rnfhksadfh34'
    * def IdSecretDK = 'eoifd8hF5fkafllhakf785hzfsdf'
    * def params = { IdClient: '#(IdClientDK)', IdSecret: '#(IdSecretDK)' }
    * def returnData = call read('classpath:examples/users/callable1.feature@success') params
    * print returnData




