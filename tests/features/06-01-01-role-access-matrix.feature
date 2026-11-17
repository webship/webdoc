Feature: Role-based access matrix for Web Doc
  As a site administrator
  I want each role to be able to do exactly what its grants imply
  So that anonymous traffic is blocked while content editors and the
  webmaster can author documentation

  Scenario: Anonymous users cannot reach the Web Doc add form
    Given I am an anonymous user
    Then I should be denied access to "/node/add/webdoc"

  Scenario: Authenticated users (no extra role) cannot reach the Web Doc add form
    Given I am a logged in user with the "Authenticated user" user
    Then I should be denied access to "/node/add/webdoc"

  Scenario: Content editors can reach the Web Doc add form
    Given I am a logged in user with the "Content editor" user
    Then I should be allowed access to "/node/add/webdoc"
     And I should see "Create Web Doc"

  Scenario: The Webmaster can reach the Web Doc add form
    Given I am a logged in user with the "Webmaster" user
    Then I should be allowed access to "/node/add/webdoc"
     And I should see "Create Web Doc"

  Scenario: Anonymous users cannot administer book outlines
    Given I am an anonymous user
    Then I should be denied access to "/admin/structure/book"

  Scenario: The Webmaster can administer book outlines
    Given I am a logged in user with the "Webmaster" user
    When I navigate to "/admin/structure/book"
    Then I should see "Books"
