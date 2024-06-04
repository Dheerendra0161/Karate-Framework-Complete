Feature: this feature file is will be called in another feature file


  Scenario: Callable scenario
    * def id =
    """
    {
      "clientID": "#(IdClient)",
      "clientSecreteID": "#(IdSecret)"
    }
    """

  @success
  Scenario: Success scenario
    * def id =
    """
    {
      "clientID": "#(IdClient)",
      "clientSecreteID": "#(IdSecret)"
    }
    """



  @failure
  Scenario: Failure scenario
    * def id =
    """
    {
      "clientID": "#(IdClient)",
      "clientSecreteID": "#(IdSecret)"
    }
    """