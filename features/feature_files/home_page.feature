Feature: Home Page

  Scenario: Load Home Page Shows Login Screen
    Given No User is logged on
    Then The User should see the Login Screen
