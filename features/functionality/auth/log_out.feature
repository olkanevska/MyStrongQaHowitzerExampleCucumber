Feature: Log Out

  @smoke
  Scenario: An user can log out
    Given login page of web application
    When I fill login form with test data
    And I submit login form
    And I open My Profile dropdown on account summary page
    And I click Logout link on account summary page
    Then I should be redirected to home page
    And I should not be logged in the system
