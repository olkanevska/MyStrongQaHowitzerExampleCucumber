Feature: Currency Exchange

  @smoke
  Scenario: An user can log out
    Given login page of web application
    When I fill login form with test data
    And I submit login form
    And I click Pay Bills menu item on account summary page
