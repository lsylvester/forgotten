Feature: Reminders
  In order to remember
  As a staff member
  I want to create some reminders
  
  Scenario: Checking My Detail
    Given I am a staff member
    When I go to my page
    Then I should see my email
    And I should see my name
    And I should see my phone number
    And I should see my payroll number
    
  Scenario: Creating a reminder
    Given I am a staff member
    And I am on my page
    When I fill in message with "Go to buy coffee"
    And I fill in datetime with 2009-11-01
    And I press "Save"
    Then I should see "Go to buy coffee"
    And I should see "2009-11-01"
    
  Scenario: Viewing upcoming reminders
    Given I am a staff member
    And I am on my page
    And I have an upcoming reminder with message "Go to buy coffee"
    Then I should see "Upcoming Reminders"
    And I should see "Go to buy coffee"

  Scenario: Viewing upcoming reminders
    Given I am a staff member
    And I am on my page
    And I have an send reminder with message "Go to buy coffee"
    Then I should see "Sent Reminders"
    And I should see "Go to buy coffee"
