Feature: Book navigation block on Web Doc pages
  As a reader of the documentation
  I want a book navigation block on every Web Doc page in a book
  So that I can move between siblings and back to the parent

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Newly created webdoc pages render without errors in full view
    When I navigate to "/node/add/webdoc"
     And I fill in "Navigated Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
     And I should see "Navigated Doc"

  Scenario: The webdoc full view mode is managed by Layout Builder (Book navigation lives in the layout)
    When I navigate to "/admin/structure/types/manage/webdoc/display/full"
    Then I should see "Manage layout"
