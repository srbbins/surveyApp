Feature: An application to create surveys
  In order to allow surveys to exist
  Survey creators
  Should be able to create new surveys

Scenario: The application has a homepage
  Given I visit the home page
  Then I should see the home page

Scenario: The create new survey page exists
   When I visit the create new survey page
   Then I should see the create new survey page

Scenario: There is a path from the homepage to the new survey page
  Given I visit the home page
  When I click the New Survey link
  Then I should see the create new survey page

Scenario: The form on the new survey page creates a new survey
  Given I visit the create new survey page
  And the value "test survey" has been entered in the survey name field
  And the value "test" has been entered in the description field
  Then the create new survey button has been clicked
  Then a new survey object should be created with name "test survey" and description "test"
