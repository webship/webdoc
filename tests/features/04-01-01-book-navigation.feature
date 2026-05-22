Feature: Book module integration for Web Doc
  As an admin user
  I want webdoc pages to optionally belong to a book
  So that documentation can be organized in a hierarchical structure

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The webdoc edit form exposes the Book outline section
    When I navigate to "/node/add/webdoc"
    Then I should see "Book outline"

  Scenario: Admin can view the books admin page
    When I navigate to "/admin/structure/book"
    Then I should see "Books"
