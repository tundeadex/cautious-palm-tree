Feature: Shopping scenarios

  Scenario Outline: Login as user order and checkout
    Given I am logged as a "<user>"
    When I add the following items to my cart
      | item                  |
      | Sauce Labs Backpack   |
      | Sauce Labs Bike Light |
    Then there should be 2 items in my cart
    When I proceed to checkout
    And I provide my contact information
    When I proceed to finish my order
    Then I should complete my order sucessfully

    Examples:
      | user          |
      | standard_user |
      | visual_user   |

  @test
  Scenario: Login as new sign up user with valid data
    Given I am logged as a "standard_user"
