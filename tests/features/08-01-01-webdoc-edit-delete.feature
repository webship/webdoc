Feature: Edit and delete Web Doc pages
  As an admin user
  I want to update and remove existing Web Doc pages
  So that documentation stays accurate

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Admin can edit an existing webdoc and the change is persisted
    When I navigate to "/node/add/webdoc"
     And I fill in "Edit Me Doc" for "Title"
     And I save the content
    Then I should see "has been created"
    When I edit the content item I created
     And I fill in "Edit Me Doc - Updated" for "Title"
     And I save the content
    Then I should see "has been updated"
     And I should see "Edit Me Doc - Updated"
    When I delete the content item I created
    Then I should see "has been deleted"

  Scenario: Admin can delete a webdoc through its delete confirmation form
    When I navigate to "/node/add/webdoc"
     And I fill in "Delete Me Doc" for "Title"
     And I save the content
    Then I should see "has been created"
    When I navigate to "/admin/content"
     And I open the "Delete" operation in the "Delete Me Doc" row
    Then I should see "Are you sure you want to delete"
     And I should see "Delete Me Doc"
     And I should see the button "Delete"
    When I confirm the deletion
    Then I should see "has been deleted"
