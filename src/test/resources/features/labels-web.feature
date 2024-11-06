@allure.label.owner:eroshenkoam
Feature: Labels

  @regress @critical
  Scenario: Create new label for authorized user
    When I open labels page
    And I create label with title "hello"
    Then I should see label with title "hello"

  @smoke
  Scenario: Add label to existing issue for authorized user
    When I open issue with id 123123
    And I add label with title "hello" to issue
    And I filter issue by label title "hello"
    Then I should see issue with label title "hello"

  @smoke
  Scenario: Delete existing label for authorized user
    When I open labels page
    And I create label with title "hello"
    And I delete label with title "hello"
    Then I should not see note with content "hello"
