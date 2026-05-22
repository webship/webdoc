Feature: Web Doc content type
  As an admin user
  I want to create Web Doc pages
  So that I can publish documentation pages on the site

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Admin can access the webdoc add form
    When I navigate to "/node/add/webdoc"
    Then I should see "Create Web Doc"
     And I should see a "Title" field
     And I should see the button "Save"

  Scenario: The webdoc add form exposes the Body field
    When I navigate to "/node/add/webdoc"
    Then I should see a "Title" field
     And I should see a "Body" field

  Scenario: Admin can create a webdoc page with title only
    When I navigate to "/node/add/webdoc"
     And I fill in "First Doc Page" for "Title"
     And I press "Save"
    Then I should see "has been created"
     And I should see "First Doc Page"
