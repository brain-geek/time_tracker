Feature: Authentication
  In order to avoid scoping of time tracking results
  As a project user
  I want to be authenticated by login and password

  Scenario: Sign in
    Given I am on the "Sign in" page
    And I enter valid login credentials
    When I click "Sign in" button
    Then I see "Protected Page"

  Scenario: Sign in
    Given I am on the "Sign in" page
    And I enter invalid login credentials
    When I click "Sign in" button
    Then I should not see "Protected Page"