Feature: Web Doc in the content admin listing
  As an admin user
  I want web doc pages to appear in /admin/content
  So that I can manage them

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: A new webdoc appears in the admin content listing
    When I navigate to "/node/add/webdoc"
     And I fill in "Listing Test Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I navigate to "/admin/content"
    Then I should see "Listing Test Doc"
     And I should see "Web Doc"
