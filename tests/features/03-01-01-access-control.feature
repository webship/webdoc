Feature: Access Control for Web Doc
  As a site administrator
  I want proper access control on Web Doc pages
  So that only authorized users can create documentation pages

  Scenario: Anonymous user cannot access the webdoc add form
    Given I am an anonymous user
    When I navigate to "/node/add/webdoc"
    Then I should see "Access denied"

  Scenario: Anonymous user cannot access the content admin page
    Given I am an anonymous user
    When I navigate to "/admin/content"
    Then I should see "Access denied"

  Scenario: Admin user can access the content admin page
    Given I am a logged in user with the "Webmaster" user
    When I navigate to "/admin/content"
    Then I should see "Content"
     And I should see "Add content"
