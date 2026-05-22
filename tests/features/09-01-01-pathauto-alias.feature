Feature: Pathauto pattern for Web Doc
  As an admin user
  I want Web Doc pages to receive a clean URL alias automatically
  So that documentation URLs are readable and stable

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The webdoc pathauto pattern is registered
    When I navigate to "/admin/config/search/path/patterns"
    Then I should see "Web Doc"

  Scenario: A new webdoc receives a pathauto alias under /web-doc
    When I navigate to "/node/add/webdoc"
     And I fill in "Aliased Doc" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I navigate to "/web-doc/aliased-doc"
    Then I should see "Aliased Doc"
