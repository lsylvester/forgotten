Feature: Reminders
  In order to remember
  As a staff member
  I want to create some reminders
  
  Scenario: Checking Persons Details
    Given the following person:
      |name|email|phone_number|payroll_number|
      |Link|link@hyrule.com|+61 405 123 456|987654321|
    When I go to the persons page
    Then I should see "Link"
    And I should see "link@hyrule.com"
    And I should see "+61 405 123 456"
    And I should see "987654321"
    
  Scenario: Creating a reminder
    Given a person
    When I go to the persons page    
    And I fill in "message" with "Go to buy coffee"
    And I select "December 25, 2008 10:00" as the date and time
    And I press "Save"
    Then I should see "Go to buy coffee"
    And I should see "2008-12-25 10:00:00 UTC"
  #   
  # Scenario: Viewing upcoming reminders
  #   Given I am a staff member
  #   And I am on my page
  #   And I have an upcoming reminder with message "Go to buy coffee"
  #   Then I should see "Upcoming Reminders"
  #   And I should see "Go to buy coffee"
  # 
  # Scenario: Viewing upcoming reminders
  #   Given I am a staff member
  #   And I am on my page
  #   And I have an send reminder with message "Go to buy coffee"
  #   Then I should see "Sent Reminders"
  #   And I should see "Go to buy coffee"
