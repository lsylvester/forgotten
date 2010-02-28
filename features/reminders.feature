Feature: Reminders
  In order to remember
  As a staff member
  I want to create some reminders
  
  Scenario: Checking Persons Details
    Given the following person:
      | name | email           | phone_number    | payroll_number | slug |
      | Foo  | foo@example.com | +61 405 123 456 | 987654321      | foo  |
    When I go to the persons page
    Then I should see "Foo"
    And I should see "foo@example.com"
    And I should see "+61 405 123 456"
    And I should see "987654321"
    
  Scenario: Creating a reminder
    Given a person
    And that the time is "Sun Feb 28 11:25:47 +1100 2008"
    When I go to the persons page    
    And I fill in "message" with "Go to buy coffee"
    And I fill in "reminder_send_at_1i" with "2009"
    And I fill in "reminder_send_at_2i" with "11" 
    And I fill in "reminder_send_at_3i" with "17" 
    And I select "10:00" as the time
    And I press "Create Reminder"
    Then I should see "Go to buy coffee"
    And I should see "10:00 am on Tue, 17 Nov 2009"

  Scenario: Viewing reminders
    Given a person
    And that the time is "Sun Feb 28 11:25:47 +1100 2009"
    And the person has reminders
      | message   | send_at                          |
      | Go to foo | "Sun Feb 29 11:00:00 +1100 2009" |
      | Go to bar | "Sun Feb 27 11:00:00 +1100 2009" |
    When I go to the persons page
    Then I should see "Go to foo" within ".upcoming_reminders"
    And I should see "Go to bar" within ".past_reminders"

