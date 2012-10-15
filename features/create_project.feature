Feature: Creating projects
  In order to have projects to assing tickets to
  As a user
  I want to create them easily

Scenario: Creating a project
  Given I am on the homepage
  When I create a new project
  Then I should see "Project has been created."
