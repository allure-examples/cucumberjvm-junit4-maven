@allure.label.owner:eroshenkoam
Feature: Milestones

  @smoke @regress
  Scenario: Create new milestone for authorized user
    When I open milestones page
    And I create milestone with title "hello"
    Then I should see milestone with title "hello"

  @regress
  Scenario: Close existing milestone for authorized user
    When I open milestones page
    And I create milestone with title "hello"
    And I delete milestone with title "hello"
    Then I should not see milestone with content "hello"
