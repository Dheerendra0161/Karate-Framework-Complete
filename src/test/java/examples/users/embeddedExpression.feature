Feature: Employee Data

  Scenario: Create employee JSON objects with embedded expressions

    # Define employee object keys and values separately for employee 1
    * def empName1 = "John Doe"
    * def empAge1 = 30
    * def empDepartment1 = "Engineering"
    * def isManager1 = false
    * def startDate1 = java.time.LocalDate.now().minusYears(2).toString()

    # Construct employee 1 JSON object using embedded expressions
#     Note : int should not be in single or double quote

    * def employee1 =
      """
      {
        "name": "#(empName1)",
        "age": #(empAge1),
        "department": '#(empDepartment1)',
        "isManager": #(isManager1),
        "startDate": '#(startDate1)'
      }
      """

    # Print the employee 1 JSON object
    * print employee1

# ********************************************************************
    # Define employee object keys and values separately for employee 2
    * def empName2 = "Jane Smith"
    * def empAge2 = 35
    * def empDepartment2 = "Finance"
    * def isManager2 = true
    * def startDate2 = java.time.LocalDate.now().minusYears(3).toString()

    # Construct employee 2 JSON object using embedded expressions
    * def employee2 =
#    concatanate two value
      """
      {
        "name": '#(empName1 +" and "+empName2 )',
        "age": #(empAge2),
        "department": '#(empDepartment2)',
        "isManager": #(isManager2),
        "startDate": '#(startDate2)'
      }
  """


    # Print the employee 2 JSON object
    * print employee2


# ********************************************************************
    * def empName3 = "Dheerendra"
# Here we are taking the name of the employee3 name by using the employee2 name
    * def employee3 =
  """
  {
    "name": '#(employee2.name + " brother of " + empName3)',
    "age": #(empAge2),
    "department": '#(empDepartment2)',
    "isManager": #(isManager2),
    "startDate": '#(startDate2)'
  }
  """

# Print the employee 3 JSON object
    * print employee3
