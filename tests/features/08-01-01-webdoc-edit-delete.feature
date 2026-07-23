Feature: Edit and delete Web Doc pages
  As an admin user
  I want to update and remove existing Web Doc pages
  So that documentation stays accurate

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Admin can edit an existing webdoc and the change is persisted
    When I navigate to "/node/add/webdoc"
     And I fill in "Edit Me Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I follow "Edit"
     And I fill in "Edit Me Doc - Updated" for "Title"
     And I press "Save"
    Then I should see "has been updated"
     And I should see "Edit Me Doc - Updated"

  Scenario: The Web Doc delete confirmation form is reachable
    When I navigate to "/node/add/webdoc"
     And I fill in "Delete Me Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I click "top-bar-page-actions" by "aria-controls" attr
     And I follow "Delete"
    Then I should see "Are you sure you want to delete"
     And I should see "Delete Me Doc"
     And I should see the button "Delete"
