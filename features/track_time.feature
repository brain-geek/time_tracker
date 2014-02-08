Feature: Time Tracking
  In order to track my project time
  As a project user
  I want to be able to start and stop timer, which will leave record of it

  Scenario: Start timer
    Given I am signed in
    And I am on the "Time tracking" page
    When I click "Start timer" button
    Then I have one working timer
