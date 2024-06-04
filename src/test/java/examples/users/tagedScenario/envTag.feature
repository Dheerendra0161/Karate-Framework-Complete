Feature: Demonstrate @env and @envnot tags in Karate

  Scenario: Print statement for all environments
    * print 'This runs in all environments , without any env'

  @env=dev,qa
  Scenario: Print statement for dev environment
    * print 'This runs only in the Dev environment'

  @env=qa
  Scenario: Print statement for qa environment
    * print 'This runs only in the QA environment'


  @env=dev,somethingDKV
  Scenario: Print statement for dev environment
    * print 'This runs  in customised environment'

  @envnot=dev
  Scenario: Print statement for non-dev environments
    * print 'This runs in all environments except dev'


# To run from the command line  mvn test "-Dkarate.env=dev"
