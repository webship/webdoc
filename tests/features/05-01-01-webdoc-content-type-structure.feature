Feature: Content Structure - Web Doc content type
  As a logged in user with permission to manage content types
  I want to see the Web Doc content type registered with Drupal
  So that the documentation pages are a first-class content type

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The Web Doc content type appears in the content type listing
    When I navigate to "/admin/structure/types"
    Then I should see "Web Doc"
     And I should see "Use Web Doc to add documentation pages to the documentation section."

  Scenario: The Web Doc content type edit form is reachable
    When I navigate to "/admin/structure/types/manage/webdoc"
    Then I should see "Web Doc"
     And I should see a "Name" field
     And I should see a "Description" field

  Scenario: A new revision is created by default for Web Doc
    When I navigate to "/admin/structure/types/manage/webdoc"
    Then the field "options[revision]" should exist
