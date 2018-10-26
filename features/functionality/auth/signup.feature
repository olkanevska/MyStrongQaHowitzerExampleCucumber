Feature: Sing Up
  As a user
  I want to sing up to the system
  So I can login with a new account

  @smoke
  Scenario: user can open sign up page via menu
    Given home page of web application
    When I click register menu item on home page
    Then I should be redirected to sign up page

  @smoke
  Scenario: visitor can initiate sign up
    Given login page of web application
    When I click sign up link on login page
    Then I should be redirected to sign up page

  @smoke
  Scenario: user can sign up with correct credentials
    Given sign up page of web application
    When I fill form on sign up page with new data
    And I submit sign up form on sign up page
    Then I should be redirected to home page
    And I should be logged in the system

  @p1
  Scenario: user can not sign up with blank data
    Given sign up page of web application
    When I fill form on sign up page with blank data
    And I submit sign up form on sign up page
    Then I should see following text on sign up page:
    """
    Please review the problems below:
    """
    When I am navigating on home page
    And I should not be logged in the system

  @p1
  Scenario: user can not login with short password
    Given sign up page of web application
    When I fill form on sign up page with short password
    And I submit sign up form on sign up page
    Then I should see following text on sign up page:
    """
    is too short (minimum is 8 characters)
    """
    When I am navigating on home page
    And I should not be logged in the system

  @p1
  Scenario: user can not login with different password data
    Given sign up page of web application
    When I fill form on sign up page with different password data
    And I submit sign up form on sign up page
    Then I should see following text on sign up page:
     """
     doesn't match Password
     """
    And I am navigating on home page
    And I should not be logged in the system
