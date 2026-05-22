Feature: Content Structure - Web Doc fields
  As a logged in user with permission to manage fields
  I want to verify that the Web Doc content type exposes the expected fields
  So that authors have a known and stable schema to fill in

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Web Doc field overview lists the Body field
    When I navigate to "/admin/structure/types/manage/webdoc/fields"
    Then I should see "Body"

  Scenario: Web Doc default form display shows the Title widget
    When I navigate to "/admin/structure/types/manage/webdoc/form-display"
    Then I should see "Title"

  Scenario: Web Doc display admin page is reachable
    When I navigate to "/admin/structure/types/manage/webdoc/display"
    Then I should see "Manage display"

  Scenario: Web Doc full view mode is managed by Layout Builder
    When I navigate to "/admin/structure/types/manage/webdoc/display/full"
    Then I should see "Manage layout"
