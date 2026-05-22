Feature: Book hierarchy for Web Doc
  As an admin user
  I want to organize Web Doc pages into a book outline
  So that documentation has a navigable parent/child structure

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Create a top-level Web Doc that becomes a new book
    When I navigate to "/node/add/webdoc"
     And I fill in "Webdoc Handbook" for "Title"
     And I press "Save"
    Then I should see "has been created"
     And I should see "Webdoc Handbook"

  Scenario: The webdoc add form exposes the Book outline section
    When I navigate to "/node/add/webdoc"
    Then I should see "Book outline"

  Scenario: The books admin page is reachable and reports its empty state
    When I navigate to "/admin/structure/book"
    Then I should see "Books"
