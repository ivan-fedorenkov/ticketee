Feature: Creating projects
  In order to have projects to assing tickets to
  As a user
  I want to create them easily

Scenario: Creating a project
  Given I am on the homepage
  When I create a new project "Text Mate2"
  Then I should see "Project has been created."
  And I should be on the project page for "Text Mate2"
  And I should see "Text Mate2 - Projects - Ticketee"
