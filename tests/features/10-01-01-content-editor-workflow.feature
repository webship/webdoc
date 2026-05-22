Feature: Content editor workflow on Web Doc
  As a content editor
  I want to author and update my own Web Doc pages
  So that I can maintain documentation without administrator privileges

  Background:
    Given I am a logged in user with the "Content editor" user

  Scenario: Content editor sees the Web Doc option on the add content listing
    When I navigate to "/node/add"
    Then I should see "Web Doc"

  Scenario: Content editor can create a Web Doc page
    When I navigate to "/node/add/webdoc"
    Then I should see "Create Web Doc"
    When I fill in "Editor Authored Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
     And I should see "Editor Authored Doc"

  Scenario: Content editor can edit their own Web Doc page
    When I navigate to "/node/add/webdoc"
     And I fill in "Editor Owned Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I follow "Edit"
     And I fill in "Editor Owned Doc - Revised" for "Title"
     And I press "Save"
    Then I should see "has been updated"
     And I should see "Editor Owned Doc - Revised"
