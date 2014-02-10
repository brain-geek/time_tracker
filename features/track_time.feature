@javascript
Feature: Time Tracking
  In order to track my project time
  As a project user
  I want to be able to start and stop timer, which will leave record of it

  Scenario: Start timer
    Given I am signed in
    And I am on the "Time tracking" page
    When I click "Start timer" button
    Then I have one working timer

  Scenario: Cannot start two timers simultaneously
    Given I am signed in
    And I am on the "Time tracking" page
    Then I see "Start timer"
    And I click "Start timer" button
    And I should not see "Start timer"

  Scenario: Output of time from the current active timer
    Given I am signed in
    And I am on the "Time tracking" page
    And I click "Start timer" button
    Then I see "Active timer started less than a minute ago."
    And travel "one hour from now"
    Then I see "Active timer started about 1 hour ago."

  Scenario: Stop timer
    Given I am signed in
    And I am on the "Time tracking" page
    When I click "Start timer" button
    When I click "Stop timer" button
    Then I have no working timers

  Scenario: Logging time
    Given I am signed in
    And I am on the "Time tracking" page
    When I click "Start timer" button
    And travel "five hours from now"
    When I click "Stop timer" button
    Then I have timer with "1800" seconds logged
